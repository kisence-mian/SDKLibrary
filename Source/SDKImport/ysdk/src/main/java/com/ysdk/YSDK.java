package com.ysdk;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.CountDownTimer;
import android.widget.Toast;
import com.tencent.ysdk.api.YSDKApi;
import com.tencent.ysdk.framework.common.eFlag;
import com.tencent.ysdk.framework.common.ePlatform;
import com.tencent.ysdk.module.pay.PayListener;
import com.tencent.ysdk.module.pay.PayRet;
import com.tencent.ysdk.module.user.UserLoginRet;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class YSDK extends SDKBase implements ILogin , IPay
{
    PayInfo payInfo;

    public void LoginCallBack(boolean success)
    {
        cdTimer.cancel();

        UserLoginRet ret = new UserLoginRet();
        int platform = YSDKApi.getLoginRecord(ret);
        String accessToken = ret.getAccessToken();
        String payToken = ret.getPayToken();
        String openid = ret.open_id;
        int flag = ret.flag;
        String msg = ret.msg;
        String pf = ret.pf;
        String pf_key = ret.pf_key;

        SendLog("YSDK LoginCallBack accessToken " + accessToken);
        SendLog("YSDK LoginCallBack payToken " + payToken);
        SendLog("YSDK LoginCallBack openid " + openid);
        SendLog("YSDK LoginCallBack flag " + flag);
        SendLog("YSDK LoginCallBack msg " + msg);
        SendLog("YSDK LoginCallBack pf " + pf);
        SendLog("YSDK LoginCallBack pf_key " + pf_key);
        SendLog("YSDK LoginCallBack platform " + platform);

        //TODO 这里做微信和qq的平台判断
        LoginPlatform p;

        try {
            JSONObject jo = new JSONObject();
            if(platform == 2)
            {
                p = LoginPlatform.WeiXin;
                jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,accessToken );
            }
            else  if(platform == 1)
            {
                p = LoginPlatform.QQ ;
                jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,openid );
            }
            else
            {
                p = LoginPlatform.Tourist ;
                jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,openid );
            }

            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, p.toString());

            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("XiaoMi SendLoginCakkBack Error",e);
        }
    }

    @Override
    public void OnCreate() {

        System.loadLibrary("YSDK");
        SendLog("YSDK onCreate " );
        GetCurrentActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                SendLog("YSDK onCreate UI主线程去执行 " );

                YSDKApi.onCreate(GetCurrentActivity());
                YSDKApi.handleIntent(GetCurrentActivity().getIntent());
            }
        });

        YSDKApi.setUserListener(new YSDKCallback(this));
        YSDKApi.setBuglyListener(new YSDKCallback(this));
    }

    //记录登录超时返回登录失败
    private CountDownTimer cdTimer = new CountDownTimer(30000, 1000) {
        @Override
        public void onTick(long millisUntilFinished) {
//            tvCount.setText((millisUntilFinished / 1000) + " s");
        }

        @Override
        public void onFinish() {

            LoginCallBack(false);
        }
    };
    @Override
    public void Login(JSONObject json) {

        try
        {
            SendLog("YSDK login " + json);

            String tag = json.getString(SDKInterfaceDefine.Tag);
            String[] info = tag.split("\\|");
            String p = info[2];

            ePlatform pl = Enum.valueOf(ePlatform.class,p);
            YSDKApi.login(pl);
            SendLog("YSDK login " + json);

            cdTimer.start();
        }
        catch (Exception e)
        {
            SendError("YSDK login error " + e,e);
        }
    }

    @Override
    public void LoginOut(JSONObject json) {
        YSDKApi.logout();
    }

    @Override
    public void Pay(JSONObject json) {

        try
        {
            payInfo = PayInfo.FromJson(json);

            String zoneId = "1";
            String saveValue ="1";
            boolean isCanChange = false;

            String ysdkExt = "ysdkExt";
            YSDKApi.recharge(zoneId, saveValue,isCanChange,null,ysdkExt,new PayListener() {
                @Override
                public void OnPayNotify(PayRet ret) {
                    if(PayRet.RET_SUCC == ret.ret){
                        //支付流程成功
                        switch (ret.payState){
                            //支付成功
                            case PayRet.PAYSTATE_PAYSUCC:
                                SendLog(
                                        "用户支付成功，支付金额"+ret.realSaveNum+";" +
                                                "使用渠道："+ret.payChannel+";" +
                                                "发货状态："+ret.provideState+";" +
                                                "业务类型："+ret.extendInfo+";建议查询余额："+ret.toString());
//
//                                PayCallBack(true,ret.,"");

                                //支付成功不回调
                                break;
                            //取消支付
                            case PayRet.PAYSTATE_PAYCANCEL:
                                SendLog("用户取消支付："+ret.toString());
                                PayCallBack(false,"","");
                                break;
                            //支付结果未知
                            case PayRet.PAYSTATE_PAYUNKOWN:
                                SendLog("用户支付结果未知，建议查询余额："+ret.toString());
                                PayCallBack(false,"","");
                                break;
                            //支付失败
                            case PayRet.PAYSTATE_PAYERROR:
                                SendLog("支付异常"+ret.toString());
                                PayCallBack(false,"","");
                                break;
                        }
                    }else{
                        switch (ret.flag){
//                            case eFlag.User_LocalTokenInvalid:
//                                //用户取消支付
//                                SendLog("登陆态过期，请重新登陆："+ret.toString());
//                                PayCallBack(false,"","");
//                                break;
                            case eFlag.Pay_User_Cancle:
                                //用户取消支付
                                SendLog("用户取消支付："+ret.toString());
                                PayCallBack(false,"","");
                                break;
                            case eFlag.Pay_Param_Error:
                                SendLog("支付失败，参数错误"+ret.toString());
                                PayCallBack(false,"","");
                                break;
                            case eFlag.Error:
                            default:
                                SendLog("支付异常"+ret.toString());
                                PayCallBack(false,"","");
                                break;
                        }
                    }
                }
            });
        }
        catch (Exception e)
        {
            SendError("YSDK Pay Error" + e,e);
        }
    }

    void PayCallBack(boolean success,String transNo,String errorCode)
    {
        try
        {
//            String receipt = CpOrderID +"|" + transNo;

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,transNo);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.YSDK.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, transNo);

            payInfo.ToJson(jo);

            sdkInterface.SdkInterface.SendMessage(jo);
        }
        catch (Exception e)
        {
            SendError("SendPayCallBack Error " + e,e);
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

    public void showToastTips(String tips) {
        Toast.makeText(GetCurrentActivity(),tips, Toast.LENGTH_LONG).show();
    }

    @Override
    public void OnResume() {
        YSDKApi.onResume(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        YSDKApi.onPause(GetCurrentActivity());
    }

    @Override
    public void OnStop() {
        YSDKApi.onStop(GetCurrentActivity());
    }

    @Override
    public void OnDestroy() {
        YSDKApi.onDestroy(GetCurrentActivity());
    }

    @Override
    public void OnRestart() {
        YSDKApi.onRestart(GetCurrentActivity());
    }

    @Override
    public void OnActivityResult(int requestCode, int resultCode, Intent data) {
        YSDKApi. onActivityResult(requestCode, resultCode,data);
    }

    @Override
    public void OnNewIntent(Intent intent) {
        YSDKApi.handleIntent(GetCurrentActivity().getIntent());
    }
}
