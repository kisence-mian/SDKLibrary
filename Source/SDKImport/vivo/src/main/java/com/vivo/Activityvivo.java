package com.vivo;

import com.vivo.unionsdk.open.VivoAccountCallback;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import com.vivo.unionsdk.open.VivoUnionSDK;

import org.json.JSONException;
import org.json.JSONObject;

import sdkInterface.define.LoginPlatform;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.IPay;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class Activityvivo extends SDKBase implements ILogin,IPay {

    private static String AppID = "";
    private static String OpenID = ""; //登陆后获得

    PayInfo payInfo;

    String CpOrderID ="";
    @Override
    public void Init(JSONObject json)
    {
        super.Init(json);

        try
        {
            SendLog("vivo Init Start"  );
            AppID = GetProperties().getProperty("AppID");
            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("vivo Init Start AppID >" + AppID + "< success is " );
                    InitSDK();
                    SendLog("vivo Init End AppID >" + AppID + "< success is " );
                }
            });

            SendLog("vivo Init End"  );

        } catch (Exception e) {
            SendError("vivo Init Error " + e.toString(),e);
        }
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("vivo Login"  );
        VivoUnionSDK.login(GetCurrentActivity());
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    @Override
    public void Pay(JSONObject json) {

        String name = "";
        String vivoSignature = "";
        String orderID ="";

//      int platform = 2; //1微信、2支付宝，这里固定使用支付宝

        payInfo = PayInfo.FromJson(json);

        String[] info = payInfo.tag.split("\\|");

        String[] info2 = payInfo.orderID.split("\\|");

        String amount = info[0]; //后端控制价格
        vivoSignature = info[1];

        CpOrderID = info2[0];
        orderID = info2[1]; //由订单推送接口返回，字段为accessKey

        name =  payInfo.goodsName;

        SendLog("setVivoSignature " + vivoSignature);
        SendLog("setTransNo " + orderID);
        SendLog("setUid " + OpenID);
        SendLog("setAppId " + AppID);
        SendLog("setProductName " + name);
        SendLog("setProductPrice " + amount);

        VivoPayInfo vivoPayInfo = new VivoPayInfo(
                payInfo.goodsID,
                payInfo.goodsID,
                amount,
                vivoSignature,
                AppID,
                orderID,
                OpenID);

        VivoUnionSDK.pay(GetCurrentActivity(),vivoPayInfo,new VivoPayCallback(){
            @Override
            public void onVivoPayResult(String transNo,boolean success, String errorCode)
            {
                SendLog("vivo pay result transNo " + transNo + " errorCode :" + errorCode +"< success is " + success);
                SendPayCallBack(success,transNo,errorCode);
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

    private void InitSDK()
    {
        VivoUnionSDK.initSdk(GetCurrentActivity(),AppID,false);

        VivoUnionSDK.registerAccountCallback(GetCurrentActivity(), new VivoAccountCallback() {
            @Override
            public void onVivoAccountLogin(String userName, String openId, String authToken) {
                OpenID = openId;
                SendLog("vivo onVivoAccountLogin userName >" + userName + " openId" + openId +" authToken " + authToken);
                //登陆成功，openid参数为用户唯一标识
                LoginCallBack(openId,authToken,true);
            }

            @Override
            public void onVivoAccountLogout(int i) {
                SendLog("vivo onVivoAccountLogout i >" + i );
                //登录退出
                LoginCallBack("","",false);
            }

            @Override
            public void onVivoAccountLoginCancel() {
                SendLog("vivo onVivoAccountLoginCancel i >" );
                //登录取消
                LoginCallBack("","",false);
            }
        });
    }

    void LoginCallBack(String openId,String authToken,boolean success)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,authToken);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.VIVO.toString());

            CallBack(jo);
        }
        catch (Exception e)
        {
            SendError("LoginCallBack Error " + e.toString(),e);
        }
    }

    void SendPayCallBack(boolean success,String transNo,String errorCode)
    {
        try {
            String receipt = CpOrderID +"|" + transNo;

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,transNo);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.VIVO.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, receipt);

            payInfo.ToJson(jo);

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }
}
