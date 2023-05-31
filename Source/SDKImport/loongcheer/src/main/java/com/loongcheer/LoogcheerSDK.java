package com.loongcheer;

import android.util.Log;

import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.loongcheer.admobsdk.admobInit.AdmobInit;
import com.loongcheer.admobsdk.admobUtils.AdmobUtils;
import com.loongcheer.admobsdk.callBack.AdRewardedCallBack;
import com.loongcheer.appsflyersdk.callback.PlayCallback;
import com.loongcheer.appsflyersdk.init.AppsflyerInit;
import com.loongcheer.googleplaysdk.callback.ConsumptionInterface;
import com.loongcheer.googleplaysdk.callback.PlayInterface;
import com.loongcheer.googleplaysdk.callback.PurchasesResultInterface;
import com.loongcheer.googleplaysdk.utils.GooglePlayUtils;
import com.loongcheer.interactivesdk.config.GameConfig;
import com.loongcheer.googleplaysdk.callback.QuerySkuDetailsInterface;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import sdkInterface.IAD;
import sdkInterface.ILog;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;
import sdkInterface.module.PayInfo;
import sdkInterface.tool.JavaUtils;

public class LoogcheerSDK extends SDKBase implements  IPay , IAD , ILog {

    String rewardVideoAdId;

    String ironSource_app_Key;
    String ironSource_placementname;

    String Pangle_app_id;
    String Pangle_app_name;

    String AppsFlyer_APP_KEY;

    String GooglePlay_Key;

    PayInfo payInfo = new PayInfo();

    String PayIDKey;
    HashMap<String,String> payIDDict;
    HashMap<String,String> productIDDict;

    HashMap<String,String> priceDict;
    HashMap<String,String> priceDictByProductID;

    String goodsIDCache;
    String goodsIDCache_GoodsInfo;

    @Override
    public void OnApplicationCreate() {
        super.OnApplicationCreate();
    }

    @Override
    public void Init(JSONObject json) {
        SendLog("LoogcheerSDK Init");

        JavaUtils.VerifyClass("com.unity3d.services.core.device.AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder$GoogleAdvertisingInfoImplementation");

        try {
            rewardVideoAdId = GetProperties().getProperty("rewardVideoAdId");

            ironSource_app_Key = GetProperties().getProperty("ironSource_app_key");
            ironSource_placementname = GetProperties().getProperty("ironSource_placementname");

            Pangle_app_id = GetProperties().getProperty("Pangle_app_id");
            Pangle_app_name = GetProperties().getProperty("Pangle_app_name");

            AppsFlyer_APP_KEY =  GetProperties().getProperty("AppsFlyer_APP_KEY");

            PayIDKey =  GetProperties().getProperty("PayIDKey");

            GooglePlay_Key =  GetProperties().getProperty("GooglePlay_Key");

            payIDDict = GenerateHashMapBySqlitContent(PayIDKey,"-");
            productIDDict = new HashMap<String, String>();
            for (String key : payIDDict.keySet()) {
                productIDDict.put(payIDDict.get(key),key);
            }

            SendLog("rewardVideoAdId " + rewardVideoAdId);

            SendLog("ironSource_app_key " + ironSource_app_Key);
            SendLog("ironSource_placementname " + ironSource_placementname);

            SendLog("Pangle_app_id " + Pangle_app_id);
            SendLog("Pangle_app_name " + Pangle_app_name);

            SendLog("AppsFlyer_APP_KEY " + AppsFlyer_APP_KEY);

            SendLog("GooglePlay_Key " + GooglePlay_Key);

            GameConfig.setDebug(SdkInterface.IsDebug());
            GameConfig.setActivity(GetCurrentActivity());

            SendLog("LoogcheerSDK getApplication " + GetCurrentActivity().getApplication());

            //Appsflyer
            AppsflyerInit.getInstance().init(GetCurrentActivity().getApplication(),AppsFlyer_APP_KEY);

            //Admob
            AdmobInit.getInstance().admobInit().rewardVideoAdId(rewardVideoAdId);

            // IronSource
            AdmobInit.getInstance().isInit(ironSource_app_Key);
            AdmobInit.getInstance().isRewardVideoAdId(ironSource_placementname);

            //穿山甲
            AdmobInit.getInstance().TTadInit(Pangle_app_id,Pangle_app_name,GetCurrentActivity().getApplication());
            AdmobInit.getInstance().setParallel(2);

            InitPriceInfo();

            ClearGoodOrder();

        } catch (Exception e) {
            SendError("LoogcheerSDK Init error " + e,e );
        }
    }

    @Override
    public void OnResume() {
        AdmobInit.getInstance().onResume(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        AdmobInit.getInstance().onPause(GetCurrentActivity());
    }

    @Override
    public void Pay(JSONObject json) {

        SendLog("Loongcheer Pay");

        payInfo = PayInfo.FromJson(json);
        goodsIDCache = payIDDict.get(payInfo.goodsID);

        SendLog("Loongcheer Pay goodsID " + goodsIDCache);

        GooglePlayUtils.googlePlay(GetCurrentActivity(), goodsIDCache, GooglePlayUtils.INAPP, new PlayInterface() {
            @Override
            public void fail(int code, String message) {
                SendLog("Loongcheer fail " + code + " message " + message);
                CallBackPayResult(payInfo, "Loongcheer",false,"",code + ": " + message);
            }

            @Override
            public void succ(Purchase purchase) {
                SendLog("Loongcheer succ " + purchase);

                String token = "" + purchase.getPackageName() + "|" + purchase.getPurchaseToken() +"|" + purchase.getOrderId()+ "|" + goodsIDCache;

                SendLog("Loongcheer token " + token);

                CallBackPayResult(payInfo, "Loongcheer",true,token,"");

                //消耗商品
                ConsumptionGoods(purchase.getPurchaseToken());

                //上报
                AfPlayValidation(purchase);
            }

            @Override
            public void succNotVerified(Purchase purchase)
            {
                SendLog("Loongcheer succNotVerified " + purchase);

                String token = "" + purchase.getPackageName() + "|" + purchase.getPurchaseToken() +"|" + purchase.getOrderId() + "|" + goodsIDCache;

                SendLog("Loongcheer token " + token);

                CallBackPayResult(payInfo, "Loongcheer",true,token,"");

                //消耗对应商品
                ConsumptionGoods(purchase.getPurchaseToken());

                //上报
                AfPlayValidation(purchase);
            }
        },"accountid");
    }

    public void AfPlayValidation(Purchase purchase)
    {
        Map<String,String> map = new HashMap<>();
//        map.put("af_content_id","google_id");
        map.put("getsku",purchase.getSku());
        AppsflyerInit.getInstance().playValidation(GetCurrentActivity(),
                GooglePlay_Key,
                purchase.getSignature(),
                purchase.getOriginalJson(),
                payInfo.price+"",
                        "USD",
                map,new PlayCallback(){
                    @Override
                    public void onValidateInApp() {
                        SendLog("AfPlayValidation onValidateInApp");
                    }

                    @Override
                    public void onValidateInAppFailure(String s) {
                        SendLog("AfPlayValidation onValidateInAppFailure " + s);
                    }
                }
        );
    }

    void ClearGoodOrder()
    {
        SendLog("ClearGoodOrder");
        GooglePlayUtils.queryPurchasesList(new PurchasesResultInterface() {
            @Override
            public void onBillingSetupFinished(List<Purchase> list) {
                SendLog("ClearGoodOrder onBillingSetupFinished " + list.size());

                for ( int i=0;i<list.size();i++)
                {
                    Purchase purchase = list.get(i);

                    SendLog("ClearGoodOrder purchase " + purchase.getSku() + " " + purchase.getOrderId() + " " + purchase.getPurchaseToken());

                    ConsumptionGoods(purchase.getPurchaseToken());
                }
            }

            @Override
            public void onError(String s) {
                SendError("ClearGoodOrder error " + s);
            }
        });
    }

    void ConsumptionGoods(String goodsToken)
    {
        final String token = goodsToken;
        SendLog("ConsumptionGoods goodsToken " + goodsToken);

        GooglePlayUtils.consumption(goodsToken, new ConsumptionInterface() {
            @Override
            public void successful() {
                SendLog("ConsumptionGoods successful "  + token);
            }

            @Override
            public void onError(String s) {
                SendLog("ConsumptionGoods successful " + token  + " error " + s);
            }
        });
    }

    @Override
    public boolean IsPrePay() {
        return false;
    }

    @Override
    public boolean IsReSendPay() {
        return false;
    }

    void InitPriceInfo()
    {
        List<String> list = new ArrayList<String>();
        priceDict = new HashMap<String, String>();
        priceDictByProductID = new HashMap<String, String>();

        for (String key : payIDDict.keySet()) {
        list.add(payIDDict.get(key));
    }

        GooglePlayUtils.querySkuDetails(list,new QuerySkuDetailsInterface()
                {
                    @Override
                    public void fail(int i,String s)
                    {
                        SendLog("GetGoodsInfo fail " + i + "->" + s);
                    }

                    @Override
                    public void succ (List<SkuDetails> skuDetailsList)
                    {
                        SendLog("GetGoodsInfo succ size ->" + skuDetailsList.size());

                        priceDict = new HashMap<String, String>();
                        for (  SkuDetails sku : skuDetailsList)
                        {
                            String goodsID = productIDDict.get(sku.getSku());
                            SendLog("GetGoodsInfo ->" + sku + " " + sku.getSku() + " ");
                            priceDict.put(goodsID,sku.getPrice());
                            priceDictByProductID.put(sku.getSku(),sku.getPrice());
                        }
                    }
                }
                ,GetCurrentActivity(),GooglePlayUtils.INAPP);
    }

    @Override
    public void GetGoodsInfo(JSONObject json) {
        try {
            String goodsID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);

            if(priceDict.containsKey(goodsID))
            {
                CallBackGoodsInfo(goodsID,priceDict.get(goodsID));
            }
            else {

                SendError("GetGoodsInfo Error not find goodsID " + goodsID);
            }

        } catch (JSONException e) {
            SendError("GetGoodsInfo error " + e.toString(),e );
        }
    }

    @Override
    public void ClearPurchase(JSONObject json) {

    }

    @Override
    public void LoadAD(JSONObject json) {

    }

    @Override
    public void PlayAD(JSONObject json) {
        AdmobUtils.showRewardedVideoAd(rewardVideoAdId, new AdRewardedCallBack() {
            @Override
            public void onAdError(String error) {
                SendLog("PlayAD .onAdError");
                CallBackADReward(ADType.Reward, ADResult.Show_Failed,error);
            }

            @Override
            public void onClose() {

                SendLog("PlayAD.onClose");
                CallBackADReward(ADType.Reward, ADResult.Show_Skipped,"");
            }

            @Override
            public void onShow() {
                SendLog("PlayAD.onShow");
                CallBackADReward(ADType.Reward, ADResult.Show_Start,"");
            }

            @Override
            public void onReward() {

                SendLog("PlayAD.onReward");

                CallBackADReward(ADType.Reward, ADResult.Show_Finished,"");
            }
            @Override
            public void onShowError(String s) {
                SendLog("PlayAD.onShowAdError " + s);
                CallBackADReward(ADType.Reward, ADResult.Show_Failed,s);
            }
        });
    }

    @Override
    public void CloseAD(JSONObject json) {
    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return AdmobUtils.queryCashRewardVideoA(rewardVideoAdId);
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("loongcheer LogLogin " + json.toString());
        ClearGoodOrder();
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    @Override
    public void LogPay(JSONObject json) {

    }

    @Override
    public void LogPaySuccess(JSONObject json) {

    }

    @Override
    public void RewardVirtualCurrency(JSONObject json) {

    }

    @Override
    public void PurchaseVirtualCurrency(JSONObject json) {

    }

    @Override
    public void UseItem(JSONObject json) {

    }

    @Override
    public void OnEvent(JSONObject json) {

        SendLog("Loongcheer OnEvent " + json.toString());

        try {
            Map<String, Object> map = new HashMap<>();
            String eventID = json.getString(SDKInterfaceDefine.Log_ParameterName_EventID);

            if(json.has(SDKInterfaceDefine.Log_ParameterName_EventMap))
            {
                String mapString = json.getString(SDKInterfaceDefine.Log_ParameterName_EventMap);

                JSONObject mapJson = new JSONObject(mapString);
                map  = jsonToMap(mapJson);
            }

            AppsflyerInit.getInstance().event(GetCurrentActivity(), map, eventID);
        } catch (JSONException e) {
            SendError("Loongcheer OnEvent error " + e.toString(),e);
        }
    }

    @Override
    public void LogError(JSONObject json) {

    }

    public static Map<String, Object> jsonToMap(JSONObject json) throws JSONException {
        Map<String, Object> map = new HashMap<String, Object>();

        Iterator<String> iterable =  json.keys();

        while (iterable.hasNext())
        {
            String key = iterable.next();
            map.put(key,json.getString(key));
        }

        return map;
    }
}
