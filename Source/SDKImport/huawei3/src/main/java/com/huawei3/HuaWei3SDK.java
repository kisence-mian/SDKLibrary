package com.huawei3;

import android.content.Intent;
import android.content.IntentSender;
import android.provider.SyncStateContract;
import android.support.annotation.Nullable;
import android.util.Log;

import com.huawei.hmf.tasks.OnCompleteListener;
import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.auth.api.signin.HuaweiIdSignIn;
import com.huawei.hms.auth.api.signin.HuaweiIdSignInClient;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.api.entity.iap.GetBuyIntentReq;
import com.huawei.hms.support.api.entity.iap.OrderStatusCode;
import com.huawei.hms.support.api.entity.iap.SkuDetail;
import com.huawei.hms.support.api.entity.iap.SkuDetailReq;
import com.huawei.hms.support.api.hwid.HuaweiIdSignInOptions;
import com.huawei.hms.support.api.hwid.SignInHuaweiId;
import com.huawei.hms.support.api.iap.BuyResultInfo;
import com.huawei.hms.support.api.iap.GetBuyIntentResult;
import com.huawei.hms.support.api.iap.SkuDetailResult;
import com.huawei.hms.support.api.iap.json.Iap;
import com.huawei.hms.support.api.iap.json.IapApiException;

import org.json.JSONException;
import org.json.JSONObject;

import java.security.PublicKey;

import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.IPay;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;

import static android.support.v4.app.ActivityCompat.startActivityForResult;

public class HuaWei3SDK extends SDKBase implements ILogin, IPay {
    String TAG = "HuaWei3 SDK=====";

    public static final int REQUEST_CODE_LOGIN = 8888; //登录
    public static final int REQUEST_CODE_BUY = 1000;// 支付

    HuaweiIdSignInClient client;
    @Override
    public void Login(JSONObject json) {
        Log.i(TAG, "Login");
        //创建基础权限的登录参数options
        HuaweiIdSignInOptions signInOptions = new
                HuaweiIdSignInOptions.Builder(HuaweiIdSignInOptions.DEFAULT_SIGN_IN)
                .build();

        (new HuaweiIdSignInOptions.Builder()).requestId().requestProfile().build();

        client = HuaweiIdSignIn.getClient( GetCurrentActivity(), signInOptions);
        //调用HuaweiIdSignInClient.getSignInIntent方法并拉起华为帐号登录授权页面
        startActivityForResult(GetCurrentActivity(), client.getSignInIntent(), REQUEST_CODE_LOGIN,null);
    }

    @Override
    public void OnActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);
        //授权登录结果处理，从SignInHuaweiId中获取ID Token
        if (requestCode == REQUEST_CODE_LOGIN) {
            Task<SignInHuaweiId> signInHuaweiIdTask = HuaweiIdSignIn.getSignedInAccountFromIntent(data);
            if (signInHuaweiIdTask.isSuccessful()) {
                //登录成功，获取用户的华为帐号信息和ID Token
                SignInHuaweiId huaweiAccount = signInHuaweiIdTask.getResult();
                Log.i(TAG, " HuaWei3 idToken:" + huaweiAccount.getIdToken());

                try {
                   // String typeKey = userData.getPlayerId()+"|"+userData.getPlayerLevel()+"|"+userData.getGameAuthSign() +"|" + userData.getTs();
                    String typeKey = huaweiAccount.getUnionId() ;
                    JSONObject jo = new JSONObject();
                    jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                    jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,typeKey );
                    jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                    jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei3.toString());

                    CallBack(jo);
                } catch (Exception e) {
                    e.printStackTrace();
                    SendError("HuaWei3 onLoginSucc",e);
                }


            }else{
                //登录失败，不需要做处理，打点日志方便定位
                Log.e(TAG, "HuaWei3 sign in failed : " + ((ApiException)signInHuaweiIdTask.getException()).getStatusCode());
            }
        }
        //支付结果
        else if (requestCode == REQUEST_CODE_BUY) {
            if (data != null) {
                BuyResultInfo buyResultInfo = Iap.getIapClient(GetCurrentActivity()).getBuyResultInfoFromIntent(data);
                Log.i(TAG, "PayResult===" + buyResultInfo.getReturnCode());
                if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_STATE_CANCEL) {
                    // 用户取消
                    SendPayCallBack(false, "",TAG+buyResultInfo.getReturnCode());
                } else if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_ITEM_ALREADY_OWNED) {
                    // 已购买过该商品
                } else if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_STATE_SUCCESS) {
                    // 支付成功 等服务器消息
                } else {
                    // 其他异常
                    SendPayCallBack(false, "",TAG+buyResultInfo.getReturnCode());
                }
                return;
            }
        }
    }

    void SendPayCallBack(boolean success,String transNo,String errorCode)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,transNo);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.HuaWei3.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,transNo);

            sdkInterface.SdkInterface.SendMessage(jo);
        }
        catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
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

    @Override
    public void Pay(JSONObject json) {
        Log.i(TAG, "Pay Start == " + json);
        GetBuyIntentReq req = new GetBuyIntentReq();
        try {
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
                Log.i(TAG, "Pay onFailure == " +e );
                // 判断e是否为IapApiException实例
                if (e instanceof IapApiException) {
                    IapApiException apiException = (IapApiException)e;
                    Status status = apiException.getStatus();
                    int returnCode = apiException.getStatusCode();
                } else {
                    // Other external errors
                }
            }
        });
    }

//    // 支付结果回调
//    @Override
//    public void OnActivityResult(int requestCode, int resultCode, Intent data) {
//        if (requestCode == REQUEST_CODE_BUY) {
//            if (data != null) {
//                BuyResultInfo buyResultInfo = Iap.getIapClient(GetCurrentActivity()).getBuyResultInfoFromIntent(data);
//                if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_STATE_CANCEL) {
//                    // 用户取消
//                } else if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_ITEM_ALREADY_OWNED) {
//                    // 已购买过该商品
//                } else if (buyResultInfo.getReturnCode() == OrderStatusCode.ORDER_STATE_SUCCESS) {
//                    // 支付成功
//                } else {
//                    // 其他异常
//                }
//                return;
//            }
//        }
//    }


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
                    IapApiException apiException = (IapApiException)e;
                    Status status = apiException.getStatus();
                    int returnCode = apiException.getStatusCode();
                } else {
                    // Other external errors
                }
            }
        });
    }
    //查询商品信息回调
    void SendGoodsInfoCallBack(SkuDetailResult result)
    {
        Log.i(TAG, "GetGoodsInfo result == " + result);

        try {
            JSONObject jo = new JSONObject();
            //查询成功
            if(result.getReturnCode() == 0)
            {
                SkuDetail skuDetail = (SkuDetail)result.getSkuList().get(0);
                Log.i(TAG, "GetGoodsInfo success == id :" + skuDetail.productId + "======= price:" + skuDetail.price);
                jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
                jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.Pay_FunctionName_GetGoodsInfo);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, skuDetail.productId);
                jo.put(SDKInterfaceDefine.Pay_ParameterName_LocalizedPriceString,skuDetail.price);
                sdkInterface.SdkInterface.SendMessage(jo);
            }
            else
            {
                Log.i(TAG, "GetGoodsInfo faild == " + result.getReturnCode());
            }

        }
        catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }
}
