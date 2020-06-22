package com.HMS4;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.util.Log;

import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.api.HuaweiMobileServicesUtil;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.iap.Iap;
import com.huawei.hms.iap.IapApiException;
import com.huawei.hms.iap.entity.ConsumeOwnedPurchaseReq;
import com.huawei.hms.iap.entity.ConsumeOwnedPurchaseResult;
import com.huawei.hms.iap.entity.InAppPurchaseData;
import com.huawei.hms.iap.entity.IsEnvReadyResult;
import com.huawei.hms.iap.entity.OrderStatusCode;
import com.huawei.hms.iap.entity.OwnedPurchasesReq;
import com.huawei.hms.iap.entity.OwnedPurchasesResult;
import com.huawei.hms.iap.entity.ProductInfo;
import com.huawei.hms.iap.entity.ProductInfoReq;
import com.huawei.hms.iap.entity.ProductInfoResult;
import com.huawei.hms.iap.entity.PurchaseIntentReq;
import com.huawei.hms.iap.entity.PurchaseIntentResult;
import com.huawei.hms.iap.entity.PurchaseResultInfo;
import com.huawei.hms.jos.JosApps;
import com.huawei.hms.jos.JosAppsClient;
import com.huawei.hms.jos.games.Games;
import com.huawei.hms.jos.games.PlayersClient;
import com.huawei.hms.jos.games.buoy.BuoyClient;
import com.huawei.hms.jos.games.player.Player;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.hwid.HuaweiIdAuthManager;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParams;
import com.huawei.hms.support.hwid.request.HuaweiIdAuthParamsHelper;
import com.huawei.hms.support.hwid.result.AuthHuaweiId;
import com.huawei.hms.support.hwid.service.HuaweiIdAuthService;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import androidx.annotation.Nullable;
import sdkInterface.ILogin;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class HMS4Game extends SDKBase implements ILogin , IPay {
    public static int HMSRequestCode_GameLogin = 8644;
    public static int HMSRequestCode_GameLogOut = 8643;
    public String TAG = "=====HuaweiGameLogin===";

    static public AuthHuaweiId huaweiAccount; //账号信息

    public void HMS4Init()
    {
        HuaweiMobileServicesUtil.setApplication(GetCurrentActivity().getApplication());
        JosAppsClient appsClient = JosApps.getJosAppsClient(GetCurrentActivity(), null);
        appsClient.init();
        Log.i(TAG, "初始化成功 | init success");
        SendLog(TAG +"HMS4Init");
        InitHMSBuoy();
        ShowBuoy();

        try {
            HMS4GameReport.ReportKey_Login = GetProperties().getProperty("ReportKey_Login");
            HMS4GameReport.ReportKey_Pay = GetProperties().getProperty("ReportKey_Pay");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


    public void HMS4Login() {
        Log.i(TAG, "Start Login");

        HuaweiIdAuthParams authParams = new HuaweiIdAuthParamsHelper(HuaweiIdAuthParams.DEFAULT_AUTH_REQUEST_PARAM_GAME).createParams();

        HuaweiIdAuthService service = HuaweiIdAuthManager.getService(GetCurrentActivity(), authParams);

        GetCurrentActivity().startActivityForResult(service.getSignInIntent(), HMSRequestCode_GameLogin);
    }

    public void HMS4Logout()
    {
        Log.i(TAG, "Start Logout");

        HuaweiIdAuthParams authParams = new HuaweiIdAuthParamsHelper(HuaweiIdAuthParams.DEFAULT_AUTH_REQUEST_PARAM_GAME).createParams();

        HuaweiIdAuthService service = HuaweiIdAuthManager.getService(GetCurrentActivity(), authParams);

        GetCurrentActivity().startActivityForResult(service.getSignInIntent(), HMSRequestCode_GameLogOut);
    }

    public void onActivityResultLogin(int requestCode, int resultCode, @Nullable Intent data) {
        {
            Log.i(TAG, "requestCode:" + requestCode);
            if (HMSRequestCode_GameLogin == requestCode) {
                handleSignInResult(data);
            }
            else if(HMSRequestCode_GameLogOut == requestCode)
            {
                Log.i(TAG,"HMS4 logout result " + resultCode);
            }
        }
    }

    private void handleSignInResult(Intent data) {
        if (null == data) {
            Log.i(TAG, "signIn intent is null");
            LoginResult(false,null,"signIn intent is null");
            return;
        }

        Task<AuthHuaweiId> task = HuaweiIdAuthManager.parseAuthResultFromIntent(data);

        task.addOnSuccessListener(new OnSuccessListener<AuthHuaweiId>() {
            @Override
            public void onSuccess(AuthHuaweiId authHuaweiId) {
                huaweiAccount = authHuaweiId;
                Log.i(TAG, "sign in success." + authHuaweiId.getAccessToken());
                CurrentPlayerInfo(authHuaweiId);
                HMS4GameReport.GetInstance().InitReport(GetCurrentActivity());
                //HMS4Report.GetInstance().GetPlayerInfo(); //暂时不需要
                if(!canPay)
                {
                    InitHMS4Pay();
                }
            }

        }).addOnFailureListener(new OnFailureListener() {

            @Override
            public void onFailure(Exception e) {
                Log.e(TAG, "parseAuthResultFromIntent failed" + e);
                LoginResult(false,null,"parseAuthResultFromIntent failed");
            }
        });
    }


    //获取玩家信息
    private void CurrentPlayerInfo(AuthHuaweiId authHuaweiId) {
        PlayersClient playersClient = Games.getPlayersClient(GetCurrentActivity(), authHuaweiId);
        Task<Player> playerTask = playersClient.getCurrentPlayer();
        playerTask.addOnSuccessListener(new OnSuccessListener<Player>() {
            @Override
            public void onSuccess(Player player) {
                // TODO 请求成功，获取玩家信息
                Log.i(TAG, "getPlayerInfo Success, player info: " + player.toString());
                LoginResult(true,player,"");
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                // 获取玩家信息失败
                if (e instanceof ApiException) {
                    Log.e(TAG, "getPlayerInfo failed, status: " + ((ApiException) e).getStatusCode());
                }
                LoginResult(false,null,e.toString());
            }
        });
    }

    BuoyClient buoyClient;//浮标

    //初始化HMS 游戏浮标
    public void InitHMSBuoy()
    {
        Log.i(TAG,"InitHMSBuoy");
        buoyClient = Games.getBuoyClient(GetCurrentActivity());
    }

    //展示浮标
    public void ShowBuoy()
    {
        Log.i(TAG,"ShowBuoy Start" + (buoyClient != null));
        if(buoyClient != null)
        {
            buoyClient.showFloatWindow();
        }
        else
        {
            InitHMSBuoy();
        }
    }

    //隐藏浮标
    public  void HideBuoy()
    {
        Log.i(TAG,"HideBuoy Start" + (buoyClient!= null));
        if(buoyClient!= null)
        {
            buoyClient.hideFloatWindow();
        }
        else
        {
            InitHMSBuoy();
        }
    }

    @Override
    public void OnCreate() {
        super.OnCreate();

    }

    @Override
    public void OnResume() {
        super.OnResume();
        ShowBuoy(); //展示游标
    }

    @Override
    public void OnPause() {
        super.OnPause();
        HideBuoy(); //隐藏游标
    }

    @Override
    public void Init(JSONObject json)
    {
        HMS4Init();
        InitHMS4Pay();
    }

    @Override
    public void Login(JSONObject jsonObject) {
        HMS4Login();
    }

    @Override
    public void LoginOut(JSONObject jsonObject) {
        HMS4Logout();
    }


    @Override
    public void OnActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);
        Log.i(TAG, "OnActivityResult requestCode:" + requestCode);

        onActivityResultLogin(requestCode,resultCode,data);

        onActivityResultPay(requestCode,resultCode,data);


    }
    //登陆结果
    private void LoginResult(boolean success,Player player ,String errorString)
    {
        Log.i(TAG, "HMS4 login result  " + success);
        try {
            String typeKey = "";
            if(success && player != null)
            {
                typeKey = player.getPlayerId() + "|" + player.getLevel()+ "|" +player.getPlayerSign()  + "|" + player.getSignTs();
                HMS4GameReport.GetInstance().Report(HMS4GameReport.ReportKey_Login,1); //上报一次登录
            }

            Log.i(TAG, "send typeKey to Unity :  " + typeKey);
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei4.toString()); //需要修改
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorString);
            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("HuaWei4 onLoginSucc", e);
        }
    }



    //===================================支付========================================

    public static int HMSRequestCode_Pay = 8600;
    public static int HMSRequestCode_PayInit = 8601;//支付初始化
    public String TAGPay = "=====HuaweiPay===";

    boolean canPay = false; //是否可以支付
    String payErrorCode = "";//支付不可进行的code

    List<ProductInfo> productList = new ArrayList<ProductInfo>(); //从hms获取的物品信息，存在此处
    PayInfo payInfo = new PayInfo();


    final String GoodsKey = "GoodsKey";
    final String GoodsKeySplit = "->"; //分割 GoodsKey 所使用的分隔符
    private static Map<String, String> goodsKeys = new HashMap<String, String>(); //商品键值对，来自于 GoodsKey


    //初始化HMS Pay
    public void InitHMS4Pay()
    {
        InitGoodsKeys();
        Log.d(TAGPay,"StatInit");
        SendLog(TAGPay+ "StatInit unity");
        canPay = false;
        payErrorCode= "Start Init";
        Activity activity = GetCurrentActivity();
        Task<IsEnvReadyResult> task = Iap.getIapClient(activity).isEnvReady();

        task.addOnSuccessListener(new OnSuccessListener<IsEnvReadyResult>() {
            @Override
            public void onSuccess(IsEnvReadyResult result) {
                // Obtain the execution result.
                Log.d(TAGPay,"IsEnvReadyResult success");
                SendLog(TAGPay +"IsEnvReadyResult Unity success");
                ReissueHMSPurchase();
                //GetGoodsInfoFromHMS("Gold1");
                canPay = true;
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                SendLog(TAGPay +"IsEnvReadyResult fail" +e);
                e.printStackTrace();
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException) e;
                    Status status = apiException.getStatus();
                    if (status.getStatusCode() == OrderStatusCode.ORDER_HWID_NOT_LOGIN) {
                        Log.d(TAGPay,"InitHMS4Pay fail" + OrderStatusCode.ORDER_HWID_NOT_LOGIN);
                        // Not logged in.
                        if (status.hasResolution()) {
                            try {
                                // 6666 is an int constant defined by the developer.
                                status.startResolutionForResult(GetCurrentActivity(), HMSRequestCode_PayInit);
                            } catch (IntentSender.SendIntentException exp) {
                            }
                        }
                    } else if (status.getStatusCode() == OrderStatusCode.ORDER_ACCOUNT_AREA_NOT_SUPPORTED) {
                        // The current region does not support HUAWEI IAP.
                        payErrorCode = "not support HUAWEI IAP";
                        SendLog(TAGPay +payErrorCode);
                    }
                }
            }
        });
    }

    //初始化商品映射键值对
    private void InitGoodsKeys() {
        try {
            String keyString = GetProperties().getProperty(GoodsKey);
            Log.d(TAG, "keyString: "+ keyString);
            String[] keySplit = keyString.split("\\|");
            for (int i = 0; (i) < keySplit.length; i++) {
                Log.d(TAG, "InitGoodsKeys keySplit : "+ keySplit[i]);
                if (!keySplit[i].isEmpty()) {
                    String[] key_value = keySplit[i].split(GoodsKeySplit);
                    Log.d(TAG, "InitGoodsKeys ready : " + key_value[0] + "=" + key_value[1]);
                    if (!goodsKeys.containsKey(key_value[0])) {
                        Log.d(TAG, "InitGoodsKeys: " + key_value[0] + "=" + key_value[1]);
                        goodsKeys.put(key_value[0], key_value[1]);
                    }
                }

            }
            Log.d(TAG, "InitGoodsKeys success" + goodsKeys.size());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //根据数据表中的物品key获取 华为后台物品key
    private String GetHWGoodsKey(String goodsKey) {
        if (goodsKeys.containsKey(goodsKey)) {
            Log.d(TAG, " get GetHWGoodsKey:" + goodsKey + "key:" + goodsKeys.get(goodsKey));
            return goodsKeys.get(goodsKey);
        }
        Log.d(TAG, "can not get GetHWGoodsKey:" + goodsKey);
        return goodsKey;
    }

    //根据 华为后台物品key 获取 数据表中的物品key
    private String GetMyGoodsKey(String HWgoodsKey) {
        Iterator<Map.Entry<String,String>> allInfo = goodsKeys.entrySet().iterator();
        while (allInfo.hasNext())
        {
            Map.Entry<String,String> entry = allInfo.next();
            if(entry.getValue().equals(HWgoodsKey))
            {
                Log.d(TAG, " get GetMyGoodsKey:" + HWgoodsKey + " MyKey:" + entry.getKey());
                return  entry.getKey();
            }
        }
        Log.d(TAG, "can not get GetMyGoodsKey:" + HWgoodsKey);
        return HWgoodsKey;
    }



    //从HMS 获取商品 已经是华为后台key 了
    public void GetGoodsInfoFromHMS(String goodsID)
    {
        Log.d(TAGPay,"GetgoodsInfo"+ goodsID);
        SendLog(TAGPay+"Unity GetgoodsInfo" + goodsID);
        ProductInfo savedGoods = GetHMSProductInfo(goodsID); //先查缓存
        if(savedGoods != null)
        {
            SendGoodsInfoCallBack(savedGoods);
            return;
        }

        List<String> productIdList = new ArrayList<>();
        productIdList.add(goodsID);

        ProductInfoReq req = new ProductInfoReq();
        // priceType: 0: consumable(消耗品); 1: non-consumable（非消耗品）; 2: auto-renewable subscription（自动续订）
        req.setPriceType(0);
        req.setProductIds(productIdList);

        Activity activity = GetCurrentActivity();
        Task<ProductInfoResult> task = Iap.getIapClient(activity).obtainProductInfo(req);
        task.addOnSuccessListener(new OnSuccessListener<ProductInfoResult>() {
            @Override
            public void onSuccess(ProductInfoResult result) {
                // Obtain the result
                List<ProductInfo> productList = result.getProductInfoList();
                SendLog(TAGPay +"Get goods from HMS success num:" +productList.size() );
                for(int i = 0;i< productList.size();i++)
                {
                    ProductInfo productInfo = productList.get(i);
                    SendLog(TAGPay +"Get goods from HMS success info:" +productInfo.getProductId() + "price" + productInfo.getPrice());
                    SaveHMSProductInfo(productInfo); //缓存
                    SendGoodsInfoCallBack(productInfo);
                }

            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException)e;
                    int returnCode = apiException.getStatusCode();
                    SendLog(TAGPay +"Get goods from HMS error" + returnCode);

                } else {
                    // Other external errors
                    SendLog(TAGPay +"Get goods from HMS other error" + e.toString());
                }
            }
        });
    }

    //获取之前从 HMS 获取的商品信息
    public ProductInfo GetHMSProductInfo(String goodsID)
    {
        for(int i = 0;i<productList.size();i++)
        {
            ProductInfo result = productList.get(i);
            if(result.getProductId().equals(goodsID))
            {
                SendLog(TAGPay +"Get HMS goods OK:" + goodsID +" price" + result.getPrice() );
                return result;
            }
        }

        SendLog(TAGPay +"No HMS goods Saved:" + goodsID );
        return  null;
    }

    //缓存来自HMS的商品信息
    private void SaveHMSProductInfo(ProductInfo productInfo)
    {
        productList.add(productInfo);
    }

    //调用HMS的支付 已经是华为后台key 了
    public  void PayToHMS(String goodsID )
    {
        if(!canPay)
        {
            SendLog(TAGPay+"can not Pay" + payErrorCode);
            SendPayCallBack(false,null,"can not Pay" + payErrorCode);
            return;
        }

        SendLog(TAGPay +"PayToHMS" + goodsID);
        PurchaseIntentReq req = new PurchaseIntentReq();
        req.setProductId(goodsID);
        // priceType: 0: consumable(消耗品); 1: non-consumable（非消耗品）; 2: auto-renewable subscription（订阅类）
        req.setPriceType(0);
//        req.setDeveloperPayload("test");

        final Activity activity = GetCurrentActivity();
        Task<PurchaseIntentResult> task = Iap.getIapClient(activity).createPurchaseIntent(req);

        task.addOnSuccessListener(new OnSuccessListener<PurchaseIntentResult>() {
            @Override
            public void onSuccess(PurchaseIntentResult result) {
                // Obtain the payment result.
                Status status = result.getStatus();
                if (status.hasResolution()) {
                    try {
                        // HMSRequestCode_Pay is an int constant defined by the developer.
                        status.startResolutionForResult(activity, HMSRequestCode_Pay);
                        SendLog(TAGPay + "Pay task success:");
                    } catch (IntentSender.SendIntentException exp) {
                        SendPayCallBack(false,null,exp.toString());
                    }
                }
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException)e;
                    Status status = apiException.getStatus();
                    int returnCode = apiException.getStatusCode();
                    SendLog(TAGPay + "Pay task fail:"+ returnCode);
                    SendPayCallBack(false,null,"Pay task fail:"+ returnCode);
                } else {
                    // Other external errors
                    SendLog(TAGPay + "Pay task fail other:"+ e.toString());
                }
            }
        });

    }

    String inAppPurchaseData; //购买订单详情的JSON字符串 ，来自于支付成功的回调
    //确认HMS 订单
    public void ConsumeHMSPurchase()
    {
        SendLog(TAGPay +"Start ConsumeHMSPurchase");
        // Constructs a ConsumeOwnedPurchaseReq object.
        String purchaseToken = "";
        InAppPurchaseData inAppPurchaseDataBean = null;
        try {
            inAppPurchaseDataBean = new InAppPurchaseData(inAppPurchaseData);
            purchaseToken = inAppPurchaseDataBean.getPurchaseToken();
        } catch (JSONException e) {
            SendError(TAGPay +"ConsumeHMSPurchase error",e);
            return;
        }

        SendLog(TAGPay +"Start ConsumeHMSPurchase purchaseToken" + purchaseToken);
        ConsumeOwnedPurchaseReq req = new ConsumeOwnedPurchaseReq();
        req.setPurchaseToken(purchaseToken);
        // to call the consumeOwnedPurchase API.
        // To get the Activity instance that calls this API.
        Activity activity = GetCurrentActivity();
        Task<ConsumeOwnedPurchaseResult> task = Iap.getIapClient(activity).consumeOwnedPurchase(req);
        final InAppPurchaseData finalInAppPurchaseDataBean = inAppPurchaseDataBean;
        task.addOnSuccessListener(new OnSuccessListener<ConsumeOwnedPurchaseResult>() {
            @Override
            public void onSuccess(ConsumeOwnedPurchaseResult result) {
                // Obtain the result
                SendLog(TAGPay +"ConsumeHMSPurchase Success" );
                HMS4GameReport.GetInstance().Report(HMS4GameReport.ReportKey_Pay, (int)finalInAppPurchaseDataBean.getPrice()); //上报一次支付成功
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException)e;
                    Status status = apiException.getStatus();
                    int returnCode = apiException.getStatusCode();
                    SendLog(TAGPay +"Start ConsumeHMSPurchase fail" +  returnCode);
                } else {
                    // Other external errors
                    SendLog(TAGPay +"Start ConsumeHMSPurchase other fail" +  e.toString());
                }
            }
        });
    }

    //临时
    public void SendLog(String value)
    {
        Log.d("----",value);
    }

    //重发订单
    public void ReissueHMSPurchase()
    {
        SendLog(TAGPay +"Start ReissueHMSPurchase");
        OwnedPurchasesReq ownedPurchasesReq = new OwnedPurchasesReq();
        // priceType: 0: consumable（消耗品）; 1: non-consumable（非消耗品）; 2: auto-renewable subscription（订阅）
        ownedPurchasesReq.setPriceType(0);
        Activity activity = GetCurrentActivity();
        Task<OwnedPurchasesResult> task = Iap.getIapClient(activity).obtainOwnedPurchases(ownedPurchasesReq);
        task.addOnSuccessListener(new OnSuccessListener<OwnedPurchasesResult>() {
            @Override
            public void onSuccess(OwnedPurchasesResult result) {
                // 获取执行结果
                if (result != null && result.getInAppPurchaseDataList() != null) {
                    for (int i = 0; i < result.getInAppPurchaseDataList().size(); i++) {
                        inAppPurchaseData = result.getInAppPurchaseDataList().get(i);
                        String InAppSignature = result.getInAppSignature().get(i);
                        // use the payment public key to verify the signature of the inAppPurchaseData.
                        // if success.
                        try {
                            InAppPurchaseData inAppPurchaseDataBean = new InAppPurchaseData(inAppPurchaseData);
                            int purchaseState = inAppPurchaseDataBean.getPurchaseState();
                            //交易是成功的，补发
                            if(purchaseState == 0)
                            {
                                SendLog(TAGPay +" ReissueHMSPurchase" +inAppPurchaseDataBean.getOrderID() );
                                //ConsumeHMSPurchase();
                                SendPayCallBack(true,inAppPurchaseDataBean,"0");
                            }
                            else
                            {
                                SendPayCallBack(false,null,"ReissueHMSPurchase : "+ purchaseState);
                            }

                        } catch (JSONException e) {
                            SendError(TAGPay +"ReissueHMSPurchase error" ,e);
                        }
                    }
                }
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException)e;
                    Status status = apiException.getStatus();
                    int returnCode = apiException.getStatusCode();
                    SendLog(TAGPay +"ReissueHMSPurchase fail: "+ returnCode);
                } else {
                    // Other external errors
                    SendError(TAGPay +"ReissueHMSPurchase other fail: ",e);
                }
            }
        });

    }

    public void onActivityResultPay(int requestCode, int resultCode, @Nullable Intent data) {
        SendLog(TAGPay + "requestCode:" + requestCode);

        //支付结果回调
        if (requestCode == HMSRequestCode_Pay) {
            if(data == null)
            {
                SendLog(TAGPay +"Pay result: data is null");
                SendPayCallBack(false,null,"Pay data is null："+ resultCode);
                return;
            }

            PurchaseResultInfo purchaseResultInfo = Iap.getIapClient(GetCurrentActivity()).parsePurchaseResultInfoFromIntent(data);
            SendLog(TAGPay +"Pay result: " + purchaseResultInfo.getReturnCode());
            switch(purchaseResultInfo.getReturnCode()) {
                case OrderStatusCode.ORDER_STATE_CANCEL:
                    // User cancel payment.
                    SendLog(TAGPay +"Pay result:User cancel payment");
                    SendPayCallBack(false,null,"User cancel");
                    break;
                case OrderStatusCode.ORDER_STATE_FAILED:
                case OrderStatusCode.ORDER_PRODUCT_OWNED:
                    // to check if there exists undelivered products.
                    SendLog(TAGPay +"to check if there exists undelivered products");
                    ReissueHMSPurchase();
                    break;
                case OrderStatusCode.ORDER_STATE_SUCCESS:
                    // pay success.
                    inAppPurchaseData = purchaseResultInfo.getInAppPurchaseData();
                    String inAppPurchaseDataSignature = purchaseResultInfo.getInAppDataSignature();

                    InAppPurchaseData inAppPurchaseDataBean = null;
                    try {
                        inAppPurchaseDataBean = new InAppPurchaseData(inAppPurchaseData);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    SendLog(TAGPay + "Pay result Success inAppPurchaseData" +inAppPurchaseData+"Signature" +  inAppPurchaseDataSignature);
                    SendPayCallBack(true,inAppPurchaseDataBean,"0");
                    // use the public key of your app to verify the signature.
                    // If ok, you can deliver your products.
                    // If the user purchased a consumable product, call the consumeOwnedPurchase API to consume it after successfully delivering the product.

                    break;
                default:
                    break;
            }
            return;
        }
        else if(requestCode == HMSRequestCode_PayInit)
        {
            if (data != null) {
                // Obtain the execution result.
                int returnCode = data.getIntExtra("returnCode", 1);
                SendLog(TAGPay +"Init result:" + returnCode);
                if(returnCode == OrderStatusCode.ORDER_HWID_NOT_LOGIN)
                {
                    SendLog(TAGPay +"需要先登陆华为账号");
                    HMS4Login();
                }
                else if(returnCode == OrderStatusCode.ORDER_STATE_SUCCESS)
                {
                    SendLog(TAGPay +"可以进行华为支付");
                    canPay = true;
                }
                payErrorCode = "PayInit result:"+returnCode;
            }
        }
    }

//    @Override
//    public void Init(JSONObject jsonObject)
//    {
//        InitHMS4Pay();
//    }

    @Override
    public void Pay(JSONObject jsonObject) {
        try {
            payInfo = PayInfo.FromJson(jsonObject);
            String goodsID  = jsonObject.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            goodsID = GetHWGoodsKey(goodsID);//转化为后台配置的key
            SendLog(TAGPay +"StartPay goods" + goodsID);
            PayToHMS(goodsID);
        } catch (JSONException e) {
            e.printStackTrace();
            SendError(TAGPay + "Pay" ,e );
        }
    }

    //返回支付结果
    void SendPayCallBack(boolean success,InAppPurchaseData inAppPurchaseData, String errorCode) {
        try {
            JSONObject jo = new JSONObject();
            String goodsID ="";
            String token = "";
            if(success && inAppPurchaseData != null)
            {
                goodsID = inAppPurchaseData.getProductId();
                token = inAppPurchaseData.getPurchaseToken();
            }
            goodsID = GetMyGoodsKey(goodsID);//从后台key 转换为游戏配置中的 key

            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, goodsID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, token);
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.HuaWei4.toString()); //需要修改
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, token);

            Log.d(TAGPay,"PayInfo is null" + (payInfo == null) + "jo is null" + (jo == null));

            if(payInfo == null)
            {
                payInfo = new PayInfo();
            }
            payInfo.ToJson(jo);

            SendLog(TAGPay +jo.toString());

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
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

    @Override
    public void GetGoodsInfo(JSONObject jsonObject) {

        try {
            String goodsID = jsonObject.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            goodsID = GetHWGoodsKey(goodsID);//转化为 后台key
            SendLog(TAGPay +"GetGoodsInfo" + goodsID);
            GetGoodsInfoFromHMS(goodsID);

        } catch (JSONException e) {
//            e.printStackTrace();
            SendError(TAGPay +"GetGoodsInfo",e );
        }

    }

    //查询商品信息回调
    void SendGoodsInfoCallBack(ProductInfo result) {
        Log.d(TAGPay,"GetGoodsInfo result == " + result);
        SendLog(TAGPay +"GetGoodsInfo result == " + result);

        try {
            JSONObject jo = new JSONObject();
            //查询成功
            SendLog(TAGPay + "GetGoodsInfo success == id :" + result.getProductId() + "======= price:" + result.getPrice());
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.Pay_FunctionName_GetGoodsInfo);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, GetMyGoodsKey(result.getProductId())); //转化为游戏配置的key
            jo.put(SDKInterfaceDefine.Pay_ParameterName_LocalizedPriceString, result.getPrice());
            sdkInterface.SdkInterface.SendMessage(jo);


        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    @Override
    public void ClearPurchase(JSONObject jsonObject) {
        SendLog("Start ClearPurchase");

        ConsumeHMSPurchase();
    }




}
