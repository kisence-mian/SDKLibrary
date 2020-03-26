package com.googlepay;

import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsParams;
import com.android.billingclient.api.SkuDetailsResponseListener;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import androidx.annotation.Nullable;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;

import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class GooglePay extends SDKBase implements IPay {

    String testGoodsID = "android.test.purchased";// 测试商品的ID

    PayInfo payInfo = new PayInfo();
    private BillingClient billingClient;
    BillingClientStateListener initCallback; //初始化的回调
    private Boolean isBillingServiceSonnect = false; //google支付服务器连接中


    List<SkuDetails> skuDetailsList = new ArrayList<SkuDetails>(); //所有商品信息

    List<JSONObject> waitAskGoodsJSONObject = new ArrayList<JSONObject>();//等待初始化完成后，查询商品信息

    ConsumeResponseListener consumeResponseListener; //发放物品确认回调(消耗型商品)
    AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener;// 发放物品确认回调(非消耗型商品)

    List<Purchase> waitingConfirmingPurchase = new ArrayList<Purchase>(); //等待确认的订单

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        SendLog("GooglePay  Init ");

        BillingClient.Builder builder = BillingClient.newBuilder(GetCurrentActivity());

//初始化 购买的回调监听
        builder.setListener(new PurchasesUpdatedListener() {
            @Override
            public void onPurchasesUpdated(BillingResult billingResult, @Nullable List<Purchase> purchases) {

                SendLog("GooglePay  onPurchasesUpdated " + billingResult.getResponseCode());
                if (billingResult.getResponseCode() == BillingClient.BillingResponseCode.OK
                        && purchases != null) {
                    for (Purchase purchase : purchases) {

                        handlePurchase(purchase);
                    }
                } else if (billingResult.getResponseCode() == BillingClient.BillingResponseCode.ITEM_ALREADY_OWNED) {

                    for (Purchase purchase : purchases) {
                        SendLog("GooglePay   ITEM_ALREADY_OWNED ==" + purchase.getSku());
                        handlePurchase(purchase);
                    }
                } else if (billingResult.getResponseCode() == BillingClient.BillingResponseCode.USER_CANCELED) {
// Handle an error caused by a user cancelling the purchase flow.
//用户取消购买
                    SendPayCallBack(false, null, String.valueOf(BillingClient.BillingResponseCode.USER_CANCELED));
                } else {
// Handle any other error codes.
//其他错误
                    SendPayCallBack(false, null, String.valueOf(billingResult.getResponseCode()));
                }
            }

        });

        builder.enablePendingPurchases();


//初始化回调监听
        initCallback = new BillingClientStateListener() {
            @Override
            public void onBillingSetupFinished(BillingResult billingResult) {
                if (billingResult.getResponseCode() == BillingClient.BillingResponseCode.OK) {
                    // The BillingClient is ready. You can query purchases here.
                    //初始化成功，可以请求商品数据
                    SendLog("GooglePay  Init success ");

                    isBillingServiceSonnect = true;

                    RePurchasesResult();
                    for (JSONObject goodsJSONObject : waitAskGoodsJSONObject) {
                        GetGoodsInfo(goodsJSONObject);
                    }
                    waitAskGoodsJSONObject.clear();

                    List<String> skuList = new ArrayList<>();
                    skuList.add(testGoodsID);
                    GetGoodsInfoFromGoogle(skuList);
                }
                else
                {
                    SendLog("GooglePay Init failure " + billingResult.getResponseCode());
                }
            }

            @Override
            public void onBillingServiceDisconnected() {

                SendLog("GooglePay onBillingServiceDisconnected ");

                // Try to restart the connection on the next request to
                // Google Play by calling the startConnection() method.
                isBillingServiceSonnect = false;
                RestartInitGooglePay();
            }
        };

        //初始化 确认发放
        acknowledgePurchaseResponseListener = new AcknowledgePurchaseResponseListener() {
            @Override
            public void onAcknowledgePurchaseResponse(BillingResult billingResult) {

                if(billingResult != null)
                {
                    SendLog("GooglePay  onAcknowledgePurchaseResponse " + billingResult.getResponseCode());
                }
                else
                {
                    SendLog("GooglePay  onConsumeResponse " );
                }
            }
        };

        //初始化 确认发放
        consumeResponseListener = new ConsumeResponseListener() {
            @Override
            public void onConsumeResponse(BillingResult billingResult, String purchaseToken) {

                if(billingResult != null)
                {
                    SendLog("GooglePay  onConsumeResponse " + billingResult.getResponseCode());
                }
                else
                {
                    SendLog("GooglePay  onConsumeResponse " );
                }
            }
        };

        billingClient = builder.build();
        SendLog("GooglePay  Init startConnection >" + billingClient + "<");
        //开始初始化
        billingClient.startConnection(initCallback);
    }

    @Override
    public void OnResume() {
        super.OnResume();
        RePurchasesResult();  //google pay 文档要求
    }

    //重新初始化
    private void RestartInitGooglePay() {
        billingClient.startConnection(initCallback);
    }

    //检查所有已购买物品，是否正常发放、否则补发
    private void RePurchasesResult() {
        SendLog("GooglePay  RePurchasesResult");
        if(billingClient != null)
        {
            Purchase.PurchasesResult purchasesResult = billingClient.queryPurchases(BillingClient.SkuType.INAPP);
            List<Purchase> allPurchase = purchasesResult.getPurchasesList();
            if (allPurchase != null) {
                for (Purchase purchase : allPurchase) {
                    handlePurchase(purchase);
                }
            }
        }
        else
        {
            SendLog("RePurchasesResult billingClient is null");
        }
    }

    @Override
    public void Pay(JSONObject jsonObject) {

        String goodsID = "";
        try {
            goodsID = jsonObject.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            payInfo = PayInfo.FromJson(jsonObject);

            if (isBillingServiceSonnect == false) {
                SendLog("GooglePay  Pay isBillingServiceSonnect == " + isBillingServiceSonnect);
                SendPayCallBack(false, null, "GooglePay  Pay isBillingServiceSonnect == " + isBillingServiceSonnect);
                return;
            } else {

               final String finalGoodsID = GoodsKeyToGoogle(goodsID);
                //final  String finalGoodsID =testGoodsID;//测试id

                SendLog("Google pay == " + finalGoodsID);

                payInfo.goodsID = goodsID;
                GetCurrentActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        SendLog("GooglePay  Pay  界面 线程去执行 ");
                        SkuDetails skuDetails = GetSkuDetails(finalGoodsID);
                        if (skuDetails != null) {
                            BillingFlowParams flowParams = BillingFlowParams.newBuilder()
                                    .setSkuDetails(skuDetails)
                                    .build();
                            BillingResult billingResult = billingClient.launchBillingFlow(GetCurrentActivity(), flowParams);
                            SendLog("GooglePay  Pay  reusltCode == " + billingResult.getResponseCode());
                        } else {
                            SendPayCallBack(false, null, "GooglePay  Pay No Goods: " + finalGoodsID);
                        }
                    }
                });
            }
        } catch (Exception e) {
            SendError("Google Pay Error " + e,e);
        }
    }

    //支付成功，发往服务器验证
    void handlePurchase(Purchase purchase) {
        if (purchase.getPurchaseState() == Purchase.PurchaseState.PURCHASED) {
            // Grant entitlement to the user. 授予用户权限。 发往服务器发道具
            payInfo.goodsID = purchase.getSku();
            payInfo.orderID = purchase.getOrderId();

            SendLog("GooglePay  Pay  handlePurchase == " + payInfo.goodsID);

            waitingConfirmingPurchase.add(purchase);
            SendPayCallBack(true, purchase, "0");

//            // Acknowledge the purchase if it hasn't already been acknowledged. 确认购买，如果它还没有被确认。
//            if (!purchase.isAcknowledged()) {
//
//                if(true)//消耗型，不知道咋判断
//                {
//                    ConsumeParams  consumeParams = ConsumeParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build();
//                    billingClient.consumeAsync(consumeParams, consumeResponseListener);
//                }
//                else{ //非消耗型
//                    AcknowledgePurchaseParams acknowledgePurchaseParams =
//                            AcknowledgePurchaseParams.newBuilder()
//                                    .setPurchaseToken(purchase.getPurchaseToken())
//                                    .build();
//                    billingClient.acknowledgePurchase(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
//                }
//            }
        }
    }

    @Override
    public boolean IsPrePay() {
        return false;
    }

    @Override
    public boolean IsReSendPay() {
        return false;
    }

    //获取商品类
    public SkuDetails GetSkuDetails(String key) {
        for (SkuDetails skuDetails : skuDetailsList) {
            if (key.equals(skuDetails.getSku())) {
                return skuDetails;
            }

        }

        SendLog("GooglePay GetSkuDetails size===" + skuDetailsList.size() + "==key=is null==" + key);
        return null;
    }

    //查询商品信息
    @Override
    public void GetGoodsInfo(JSONObject json) {

        SendLog("GooglePay  GetGoodsInfo " + json);
        String goodsID = "";
        try {
            goodsID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            goodsID = GoodsKeyToGoogle(goodsID);

        } catch (JSONException e) {
            SendError("GetGoodsInfo error " + e,e);
            return;
        }

        for (int i = 0; i < skuDetailsList.size(); i++) {
            SkuDetails skuDetails = skuDetailsList.get(i);
            if (goodsID.equals(skuDetails.getSku())) {
                SendGoodsInfoCallBack(skuDetails);
                return;
            }
        }

        if (isBillingServiceSonnect == false) {
            waitAskGoodsJSONObject.add((json));
            SendLog("GooglePay  GetGoodsInfo isBillingServiceSonnect == " + isBillingServiceSonnect);
            return;
        }

        List<String> skuList = new ArrayList<>();
        skuList.add(goodsID);
        GetGoodsInfoFromGoogle(skuList);
    }

    //从谷歌获取商品信息
    private void GetGoodsInfoFromGoogle(List<String> skuList) {
        SendLog("GooglePay  GetGoodsInfo Start size == " + skuList.size());

        for (String sku : skuList) {
            SendLog("GooglePay  GetGoodsInfo start id == " + sku);
        }

        SkuDetailsParams.Builder params = SkuDetailsParams.newBuilder();
        params.setSkusList(skuList).setType(BillingClient.SkuType.INAPP);
        billingClient.querySkuDetailsAsync(params.build(),
                new SkuDetailsResponseListener() {
                    @Override
                    public void onSkuDetailsResponse(BillingResult billingResult,
                                                     List<SkuDetails> l_skuDetailsList) {
                        if (billingResult.getResponseCode() == BillingClient.BillingResponseCode.OK && l_skuDetailsList != null) {
                            SendLog("GooglePay  GetGoodsInfo success size == " + l_skuDetailsList.size());
                            for (SkuDetails skuDetails : l_skuDetailsList) {
                                SendLog("GooglePay  GetGoodsInfo success id == " + skuDetails.getSku());
                                if (skuDetails.getSku() != testGoodsID) {
                                    SendGoodsInfoCallBack(skuDetails);
                                }
                                AddSkuDetailsList(skuDetails);
                            }
                        } else {
                            SendLog("GooglePay  GetGoodsInfo getResponseCode == " + billingResult.getResponseCode() + "----skuDetailsList===" + l_skuDetailsList);
                        }
                    }
                }
        );
    }

    //缓存商品信息
    private void AddSkuDetailsList(SkuDetails skuDetails) {

        for (SkuDetails l_skuDetails : skuDetailsList) {
            if (skuDetails.getSku() == l_skuDetails.getSku()) {
                l_skuDetails = skuDetails;
                return;
            }
        }
        skuDetailsList.add(skuDetails);
    }

    //查询商品信息回调
    void SendGoodsInfoCallBack(SkuDetails result) {
        try {
            JSONObject jo = new JSONObject();

            SendLog("google pay GetGoodsInfo success == id :" + result.getSku() + "======= price:" + result.getPrice());
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.Pay_FunctionName_GetGoodsInfo);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, GoodsKeyToUnity(result.getSku()));
            jo.put(SDKInterfaceDefine.Pay_ParameterName_LocalizedPriceString, result.getPrice());
            sdkInterface.SdkInterface.SendMessage(jo);

        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    //确认订单，擦除
    @Override
    public void ClearPurchase(JSONObject jsonObject) {

        if (waitingConfirmingPurchase == null) {
            SendLog("GooglePay  ClearPurchase ==null==");
            return;
        }
        SendLog("GooglePay  ClearPurchase start size ==" + waitingConfirmingPurchase.size());
        String goodsID = "";
        try {
            goodsID = jsonObject.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            goodsID = GoodsKeyToGoogle(goodsID);
            SendLog("GooglePay  ClearPurchase goodsID===" + goodsID);

        } catch (JSONException e) {
            SendLog("GooglePay  ClearPurchase ==error==" + e);
            e.printStackTrace();
            return;
        }

        for (Purchase purchase : waitingConfirmingPurchase) {
            SendLog("GooglePay  ClearPurchase ==for goods id==" + goodsID + "-----------" + purchase.getSku() + "==equals==" + goodsID.equals(purchase.getSku()));
            if (goodsID.equals(purchase.getSku())) {
                SendLog("GooglePay  ClearPurchase ====" + goodsID + "===" + purchase.isAcknowledged());
                // Acknowledge the purchase if it hasn't already been acknowledged. 确认购买，如果它还没有被确认。

                SendLog("GooglePay  ClearPurchase ==222==" + purchase.getSku());
                if (true)//消耗型，不知道咋判断
                {
                    ConsumeParams consumeParams = ConsumeParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build();
                    billingClient.consumeAsync(consumeParams, consumeResponseListener);
                } else { //非消耗型
                    AcknowledgePurchaseParams acknowledgePurchaseParams =
                            AcknowledgePurchaseParams.newBuilder()
                                    .setPurchaseToken(purchase.getPurchaseToken())
                                    .build();
                    billingClient.acknowledgePurchase(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
                }

                if (!purchase.isAcknowledged()) {
                    SendLog("GooglePay  ClearPurchase ==aaa==" + purchase.getSku());
                }
            }
        }
    }

    //支付结构回调C#
    void SendPayCallBack(boolean success, Purchase purchase, String errorCode) {

        String purchaseToken = "";
        String packageName = "";
        String sku = payInfo.goodsID;
        if (sku == null) {
            sku = "";
        }
        String orderID = "";
        if (success && purchase != null) {
            purchaseToken = purchase.getPurchaseToken();
            packageName = purchase.getPackageName();
            sku = purchase.getSku();
            orderID = purchase.getOrderId();
        }
        SendLog("GooglePay  SendPayCallBack ====" + success + "==sku==" + sku + "==errorCode==" + errorCode);

        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, GoodsKeyToUnity(sku));
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, "");
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.GooglePay.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, packageName + "|" + purchaseToken + "|" + orderID);

            jo.put(SDKInterfaceDefine.Pay_ParameterName_Currency, "");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsName, "");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Price, "0");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsType, "NORMAL");
            payInfo.ToJson(jo);
            //            SendLog(" SendPayCallBack   1============ " + jo);
            //            jo.put(SDKInterfaceDefine.Pay_ParameterName_Currency,"");

            SendLog(" SendPayCallBack  =============" + jo);
            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    //region  google 物品ID大小写 转换工具

    private static HashMap<String, String> goodsIDKeys = new HashMap<String, String>(); //key=原物品id  ，value = 物品id 小写（符合google 要求）

    //获取原物品id 对应的 符合google要求的id
    private String GoodsKeyToGoogle(String goodsKeyFromUnity)
    {
        if(goodsKeyFromUnity.isEmpty())
        {
            SendLog("Google pay GoodsKeyToGoogle key is null");
            return "";
        }

        for (HashMap.Entry<String, String> entry : goodsIDKeys.entrySet()) {
            String key = entry.getKey();
            String val = entry.getValue();
            if(key.equals(goodsKeyFromUnity))
            {
                SendLog("Google pay GoodsKeyToGoogle key is " + key + "===value===" + val);
                return val;
            }
        }
        String putValue = goodsKeyFromUnity.toLowerCase();
        goodsIDKeys.put(goodsKeyFromUnity,putValue);

        return  putValue;
    }

    //获取符合google要求的id 对应的原Unity 物品id
    private String GoodsKeyToUnity(String goodsKeyFromGoogle)
    {
        if(goodsKeyFromGoogle.isEmpty())
        {
            SendLog("Google pay GoodsKeyToUnity key is null");
            return "";
        }
        for (HashMap.Entry<String, String> entry : goodsIDKeys.entrySet()) {
            String key = entry.getKey();
            String val = entry.getValue();
            if(val.equals(goodsKeyFromGoogle))
            {
                SendLog("Google pay GoodsKeyToUnity key is " + key + "===value===" + val);
                return key;
            }
        }

        SendLog("Google pay GoodsKeyToUnity key is not found :goodsKeyFromGoogle" );
        return goodsKeyFromGoogle;
    }
    //endregion
}
