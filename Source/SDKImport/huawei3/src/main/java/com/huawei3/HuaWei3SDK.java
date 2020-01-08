package com.huawei3;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.provider.SyncStateContract;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;

import com.huawei.hmf.tasks.OnCompleteListener;
import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.api.HuaweiApiClient;
import com.huawei.hms.auth.api.signin.HuaweiIdSignIn;
import com.huawei.hms.auth.api.signin.HuaweiIdSignInClient;
import com.huawei.hms.auth.api.signin.HuaweiIdSignInResult;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.jos.JosApps;
import com.huawei.hms.jos.JosAppsClient;
import com.huawei.hms.jos.games.Games;
import com.huawei.hms.jos.games.Player;
import com.huawei.hms.jos.games.PlayersClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.api.client.ResultCallback;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.iap.ConsumePurchaseReq;
import com.huawei.hms.support.api.entity.iap.GetBuyIntentReq;
import com.huawei.hms.support.api.entity.iap.GetPurchaseReq;
import com.huawei.hms.support.api.entity.iap.OrderStatusCode;
import com.huawei.hms.support.api.entity.iap.SkuDetail;
import com.huawei.hms.support.api.entity.iap.SkuDetailReq;
import com.huawei.hms.support.api.game.HuaweiGame;
import com.huawei.hms.support.api.game.ShowFloatWindowResult;
import com.huawei.hms.support.api.hwid.HuaweiIdSignInOptions;
import com.huawei.hms.support.api.hwid.SignInHuaweiId;
import com.huawei.hms.support.api.iap.BuyResultInfo;
import com.huawei.hms.support.api.iap.ConsumePurchaseResult;
import com.huawei.hms.support.api.iap.GetBuyIntentResult;
import com.huawei.hms.support.api.iap.GetPurchasesResult;
import com.huawei.hms.support.api.iap.SkuDetailResult;
import com.huawei.hms.support.api.iap.json.Iap;
import com.huawei.hms.support.api.iap.json.IapApiException;

import org.json.JSONException;
import org.json.JSONObject;

import java.security.PublicKey;
import java.util.ArrayList;

import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.IPay;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

import static android.support.v4.app.ActivityCompat.startActivityForResult;

public class HuaWei3SDK extends SDKBase implements ILogin, IPay {
    String TAG = "HuaWei3 SDK=====";
    PayInfo payInfo = new PayInfo();
    protected SignInHuaweiId mSignInHuaweiId = null;


    public static final int REQUEST_CODE_LOGIN = 8888; //登录
    public static final int REQUEST_CODE_BUY = 1000;// 支付

    HuaweiIdSignInClient client;


    private String mContinuationToken = "";
    private ArrayList<String> mIitemlist = new ArrayList<>();

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

    }

    @Override
    public void Login(JSONObject json) {

        Log.i(TAG, "Login");
//        //创建基础权限的登录参数options
//        HuaweiIdSignInOptions signInOptions = new
//                HuaweiIdSignInOptions.Builder(HuaweiIdSignInOptions.DEFAULT_SIGN_IN)
//                .build();
//        client = HuaweiIdSignIn.getClient(GetCurrentActivity(), signInOptions);
//        //调用HuaweiIdSignInClient.getSignInIntent方法并拉起华为帐号登录授权页面
//        startActivityForResult(GetCurrentActivity(), client.getSignInIntent(), REQUEST_CODE_LOGIN, null);

//       SendLog("");
//       SendError();

        HuaweiIdSignInOptions huaweiIdSignInOptions =
                new HuaweiIdSignInOptions.Builder(HuaweiIdSignInOptions.DEFAULT_GAMES_SIGN_IN).build();
        Task<SignInHuaweiId> signInHuaweiIdTask =
                HuaweiIdSignIn.getClient(GetCurrentActivity(), huaweiIdSignInOptions).silentSignIn();
        signInHuaweiIdTask.addOnSuccessListener(new OnSuccessListener<SignInHuaweiId>() {
            @Override
            public void onSuccess(SignInHuaweiId signInHuaweiId) {

                mSignInHuaweiId = signInHuaweiId;
                init();
                currentPlayerInfo();
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof ApiException) {
                    ApiException apiException = (ApiException) e;
                    Log.i(TAG, "Login= failed================="+apiException.getStatusCode());
                    signInNewWay();
                }
            }
        });
    }

    @Override
    public void OnCreate() {
        super.OnCreate();
        init();
    }

    @Override
    public void OnResume() {
        super.OnResume();
        showFloatWindow();
    }

    @Override
    public void OnPause() {
        super.OnPause();
        hideFloatWindow();
    }

    public void signInNewWay() {
        HuaweiIdSignInOptions huaweiIdSignInOptions =
                new HuaweiIdSignInOptions.Builder(HuaweiIdSignInOptions.DEFAULT_GAMES_SIGN_IN).build();
        Intent intent = HuaweiIdSignIn.getClient(GetCurrentActivity(), huaweiIdSignInOptions).getSignInIntent();
        startActivityForResult(GetCurrentActivity(),intent,REQUEST_CODE_LOGIN,null);
    }
    //登录后初始化
    public void init() {
        JosAppsClient appsClient = JosApps.getJosAppsClient(GetCurrentActivity(), getSignInHuaweiId());
        appsClient.init();

    }

    protected SignInHuaweiId getSignInHuaweiId() {
        return mSignInHuaweiId;
    }
    @Override
    public void OnActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);

        //授权登录结果处理，从SignInHuaweiId中获取ID Token
        if (requestCode == REQUEST_CODE_LOGIN) {

            if (null == data) {
                Log.e(TAG,"signIn inetnt is null");
                return;
            }

            String jsonSignInResult = data.getStringExtra("HUAWEIID_SIGNIN_RESULT");
            if (TextUtils.isEmpty(jsonSignInResult)) {
                Log.e(TAG,"signIn result is empty");
                return;
            }

            try {
                HuaweiIdSignInResult signInResult = new HuaweiIdSignInResult().fromJson(jsonSignInResult);
                if (0 == signInResult.getStatus().getStatusCode()) {
                    Log.e(TAG,"signIn success.");
                    Log.e(TAG,"signIn result: " + signInResult.toJson());
                    mSignInHuaweiId = signInResult.getSignInHuaweiId();
                    init();
                    currentPlayerInfo();

                } else {
                    Log.e(TAG,"signIn failed: " + signInResult.getStatus().getStatusCode());
                    mSignInHuaweiId = null;
                }
            } catch (JSONException var7) {
                Log.e(TAG,"Failed to convert json from signInResult.");
                mSignInHuaweiId = null;
            }

            //Task<SignInHuaweiId> signInHuaweiIdTask = HuaweiIdSignIn.getSignedInAccountFromIntent(data);
//            if (signInHuaweiIdTask.isSuccessful()) {
//                init();
//                //登录成功，获取用户的华为帐号信息和ID Token
//                SignInHuaweiId huaweiAccount = signInHuaweiIdTask.getResult();
//                Log.i(TAG, " HuaWei3 AuthCode===:" + huaweiAccount.getServerAuthCode());
//                try {
//                    // String typeKey = userData.getPlayerId()+"|"+userData.getPlayerLevel()+"|"+userData.getGameAuthSign() +"|" + userData.getTs();
//                    String typeKey = huaweiAccount.getServerAuthCode();
//                    JSONObject jo = new JSONObject();
//                    jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
//                    jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
//                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, true);
//                    jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei3.toString());
//
//                    CallBack(jo);
//                } catch (Exception e) {
//                    e.printStackTrace();
//                    SendError("HuaWei3 onLoginSucc", e);
//                }
//
//
//            } else {
//                //登录失败，不需要做处理，打点日志方便定位
//                Log.e(TAG, "HuaWei3 sign in failed : " + ((ApiException) signInHuaweiIdTask.getException()).getStatusCode());
//            }
        }
        //支付结果
        else if (requestCode == REQUEST_CODE_BUY) {
            if (data != null) {
                BuyResultInfo buyResultInfo = Iap.getIapClient(GetCurrentActivity()).getBuyResultInfoFromIntent(data);
                Log.i(TAG, "PayResult===" + buyResultInfo.getReturnCode());
                if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_STATE_CANCEL) {
                    // 用户取消
                    SendPayCallBack(false, "","", TAG + buyResultInfo.getReturnCode());
                } else if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_ITEM_ALREADY_OWNED) {
                    // 已购买过该商品
                } else if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_STATE_SUCCESS) {
                    String InAppPurchaseData = buyResultInfo.getInAppPurchaseData();
                    try {
                        JSONObject jsonObject = new JSONObject(InAppPurchaseData);
                        String mPurchaseToken = jsonObject.getString("purchaseToken");
                        String goodsID = jsonObject.getString("productId");
                        SendPayCallBack(true,goodsID ,mPurchaseToken, buyResultInfo.getReturnCode() + "");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }

                    // 支付成功 等服务器消息
                } else {
                    // 其他异常
                    SendPayCallBack(false, "","", TAG + buyResultInfo.getReturnCode());
                }
                return;
            }
        }
    }

    public SignInHuaweiId getHuaweiIdInfo() {
        return mSignInHuaweiId;
    }

    private void currentPlayerInfo() {
        PlayersClient playersClient = Games.getPlayersClient(GetCurrentActivity(), getHuaweiIdInfo());
        Task<Player> playerTask = playersClient.getCurrentPlayer();
        playerTask.addOnSuccessListener(new OnSuccessListener<Player>() {
            @Override
            public void onSuccess(Player player) {
                // TODO 请求成功，获取玩家信息
                Log.i(TAG, "getPlayerInfo Success, player info: " + player.toString());
                try {
                    // String typeKey = userData.getPlayerId()+"|"+userData.getPlayerLevel()+"|"+userData.getGameAuthSign() +"|" + userData.getTs();
                    String typeKey = player.getPlayerId() + "|" + player.getLevelInfo().getCurrentLevel()+ "|" +player.getPlayerSign() ;
                    Log.i(TAG, "send typeKey to Unity :  " + typeKey);
                    JSONObject jo = new JSONObject();
                    jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
                    jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, true);
                    jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei3.toString());

                    CallBack(jo);
                } catch (Exception e) {
                    e.printStackTrace();
                    SendError("HuaWei3 onLoginSucc", e);
                }


            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                // 获取玩家信息失败
                if (e instanceof ApiException) {
                    String errorCode = ((ApiException) e).getStatusCode() +"";
                    Log.e(TAG, "getPlayerInfo failed, status: " + errorCode);
                    try {
                        JSONObject jo = new JSONObject();
                        jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
                        jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, "");
                        jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, false);
                        jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);

                        jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei3.toString());

                        CallBack(jo);
                    }
                    catch (Exception e2) {
                        e2.printStackTrace();
                        SendError("HuaWei3 onLoginSucc", e2);
                    }
                }
            }
        });
    }


    void SendPayCallBack(boolean success,String goodsID, String token, String errorCode) {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, goodsID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, token);
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.HuaWei3.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, token);

            payInfo.ToJson(jo);
            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    @Override
    public void LoginOut(JSONObject json) {
        Log.i(TAG, "signOut start");
        Task<Void> signOutTask = client.signOut();
        signOutTask.addOnCompleteListener(new OnCompleteListener<Void>() {
            @Override
            public void onComplete(Task<Void> task) {
                //完成登出后的处理
                Log.i(TAG, "signOut complete");
            }
        });

    }

    //获取账号已经购买过的所有物品，判断补发
    private void GetPurchases() {
        GetPurchaseReq getPurchaseReq = new GetPurchaseReq();
        //商品类型 0 : 消耗型商品 1 : 非消耗型商品 2 : 自动续费订阅商品
        getPurchaseReq.priceType = 0;
        //continuationToken  Data Location Markers Supporting Paging Queries。
        //This parameter may not be passed in the first query, and it will be included in the return information after calling the interface.
        //If paging query is needed in the next invocation of the interface, it can be entered in the second invocation.
        if (!mContinuationToken.isEmpty()) {
            getPurchaseReq.continuationToken = mContinuationToken;
        }
        Task<GetPurchasesResult> task = Iap.getIapClient(GetCurrentActivity().getApplication()).getPurchases(getPurchaseReq);
        task.addOnSuccessListener(new OnSuccessListener<GetPurchasesResult>() {
            @Override
            public void onSuccess(GetPurchasesResult result) {
                //获得查询结果
                if (result != null) {
                    mContinuationToken = result.getContinuationToken();
                    mIitemlist = result.getInAppPurchaseDataList();
                    Log.i(TAG, "getPurchases onSuccess:" + mIitemlist.size());

                    for (int i = 0; i < mIitemlist.size(); i++) {
                        //向服务器查询 补充发放
                        Log.i(TAG, "need replenish provide goods" + mIitemlist.get(i));
                        try {
                            JSONObject jsonObject = new JSONObject(mIitemlist.get(i));
                            String mPurchaseToken = jsonObject.getString("purchaseToken");
                            SendPayCallBack(true,mIitemlist.get(i),mPurchaseToken,"");
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }

                    }

                }
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof IapApiException) {
                    Status status = ((IapApiException) e).getStatus();
                    int statuscode = status.getStatusCode();
                    Log.i(TAG, "getPurchases faile code:" + statuscode);
                }
            }
        });
    }

//    @Override
//    protected void onResume() {
//        super.onResume();
//        showFloatWindow();
//    }
//    @Override
//    protected void onPause() {
//        super.onPause();
//        hideFloatWindow();
//    }

    //展示飘窗 start
    private void showFloatWindow() {
        ConnectClientSupport.get().connect(GetCurrentActivity(), new IShowFloatConnectCallBack(GetCurrentActivity()));
    }
    private static class IShowFloatConnectCallBack implements  ConnectClientSupport.IConnectCallBack {
        private Activity activity;
        private IShowFloatConnectCallBack(Activity activity) {
            this.activity = activity;
        }

        @Override
        public void onResult(HuaweiApiClient apiClient) {
            if (apiClient != null && activity!= null && !activity.isFinishing()) {
                PendingResult<ShowFloatWindowResult> pendingRst = HuaweiGame.HuaweiGameApi.showFloatWindow(apiClient,activity);
                pendingRst.setResultCallback(new ResultCallback<ShowFloatWindowResult>() {
                    @Override
                    public void onResult(ShowFloatWindowResult showFloatWindowResult) {

                    }
                });
            }
        }
    }
    //展示飘窗 end

    //隐藏飘窗 start
    private void hideFloatWindow() {
        ConnectClientSupport.get().connect(GetCurrentActivity(), new IHideFloatConnectCallBack(GetCurrentActivity()));
    }
    private static class IHideFloatConnectCallBack implements  ConnectClientSupport.IConnectCallBack {
        private Activity activity;
        private IHideFloatConnectCallBack(Activity activity) {
            this.activity = activity;
        }

        @Override
        public void onResult(HuaweiApiClient apiClient) {
            if (apiClient != null && activity!= null && !activity.isFinishing()) {
                HuaweiGame.HuaweiGameApi.hideFloatWindow(apiClient,activity);
            }
        }
    }
    //隐藏飘窗 end

    @Override
    public void Pay(JSONObject json) {
        Log.i(TAG, "Pay Start == " + json);
        GetBuyIntentReq req = new GetBuyIntentReq();
        try {
            payInfo = PayInfo.FromJson(json);
            req.productId = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            req.priceType = 0;
        } catch (JSONException e) {
            e.printStackTrace();
        }

        Task<GetBuyIntentResult> task = Iap.getIapClient(GetCurrentActivity()).getBuyIntent(req);
        task.addOnSuccessListener(new OnSuccessListener<GetBuyIntentResult>() {
            @Override
            public void onSuccess(GetBuyIntentResult result) {
                // 获取支付结果
                Status status = result.getStatus();
                Log.i(TAG, "Pay result == " + status.hasResolution());
                if (status.hasResolution()) {
                    try {
                        status.startResolutionForResult(GetCurrentActivity(), REQUEST_CODE_BUY);
                    } catch (IntentSender.SendIntentException exp) {
                    }
                }
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                Log.i(TAG, "Pay onFailure == " + e);
                // 判断e是否为IapApiException实例
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException) e;
                    Status status = apiException.getStatus();
                    int returnCode = apiException.getStatusCode();
                    Log.i(TAG, "Pay onFailure coed == " + returnCode);
                } else {
                    // Other external errors
                }
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

    @Override
    public void GetGoodsInfo(JSONObject json) {

        Log.i(TAG, "GetGoodsInfo == " + json);

        SkuDetailReq req = new SkuDetailReq();
        //0: 消耗型商品
        //1: 非消耗型商品
        //2: 自动续费订阅商品
        req.priceType = 0;

        try {
            String goodsID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            req.skuIds.add(goodsID);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        Task<SkuDetailResult> task = Iap.getIapClient(GetCurrentActivity()).getSkuDetail(req);
        task.addOnSuccessListener(new OnSuccessListener<SkuDetailResult>() {
            @Override
            public void onSuccess(SkuDetailResult result) {
                // 获取查询结果
                SendGoodsInfoCallBack(result);
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {

                // 判断e是否为IapApiException实例
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException) e;
                    Status status = apiException.getStatus();
                    int returnCode = apiException.getStatusCode();
                    Log.i(TAG, "GetGoodsInfo failure == " + returnCode);
                } else {
                    // Other external errors
                }

            }
        });
    }
    //擦除已发放的商品 与C# 通信
    @Override
    public void ClearPurchase(JSONObject json) {
        try {
            String token = json.getString(SDKInterfaceDefine.Pay_ParameterName_Receipt);
            ConsumePurchase(token);

        } catch (JSONException e) {
            SendError("OnConsumePurchase Error " + e, e);
        }
    }

    //查询商品信息回调
    void SendGoodsInfoCallBack(SkuDetailResult result) {
        Log.i(TAG, "GetGoodsInfo result == " + result);

        try {
            JSONObject jo = new JSONObject();
            //查询成功
            if (result.getReturnCode() == 0) {
                SkuDetail skuDetail = (SkuDetail) result.getSkuList().get(0);
                Log.i(TAG, "GetGoodsInfo success == id :" + skuDetail.productId + "======= price:" + skuDetail.price);
                jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
                jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.Pay_FunctionName_GetGoodsInfo);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, skuDetail.productId);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_LocalizedPriceString, skuDetail.price);
                sdkInterface.SdkInterface.SendMessage(jo);
            } else {
                Log.i(TAG, "GetGoodsInfo faild == " + result.getReturnCode());
            }

        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    //擦除已发放的商品
    public void ConsumePurchase(String mPurchaseToken)
    {
        ConsumePurchaseReq consumePurchaseReq = new ConsumePurchaseReq();
        consumePurchaseReq.purchaseToken = mPurchaseToken;
        consumePurchaseReq.developerChallenge = "test consumePurchase";
        Task<ConsumePurchaseResult> task = Iap.getIapClient(GetCurrentActivity()).consumePurchase(consumePurchaseReq);
        task.addOnSuccessListener(new OnSuccessListener<ConsumePurchaseResult>() {
            @Override
            public void onSuccess(ConsumePurchaseResult result) {
                //Get execution results
                if (result != null) {
                    Log.i(TAG, "consumePurchase success " + result.getReturnCode());
                }
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof IapApiException) {
                    IapApiException iapApiException = (IapApiException) e;
                    Status status = iapApiException.getStatus();
                    Log.i(TAG, "consumePurchase fail：" + status.getStatusCode());
                }
            }
        });
    }

}
