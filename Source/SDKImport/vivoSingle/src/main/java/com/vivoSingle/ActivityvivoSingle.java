package com.vivoSingle;

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
import sdkInterface.SdkInterface;
import sdkInterface.IPay;
import sdkInterface.define.StoreName;

public class ActivityvivoSingle extends SDKBase implements ILogin,IPay {

    private static String AppID = "";
    private static String OpenID = ""; //登陆后获得

    @Override
    public void Init(JSONObject json)
    {
        super.Init(json);

        try
        {
            AppID = GetProperties().getProperty("AppID");
            InitSDK();
            SendLog("vivo Init AppID >" + AppID + "< success is " );
        } catch (Exception e) {
            SendError("vivo Init Error " + e.toString(),e);
        }
    }

    @Override
    public void Login(JSONObject json) {
        VivoUnionSDK.login(GetCurrentActivity());

    }

    @Override
    public void Pay(JSONObject json) {

        int amount = 0;
        String name = "";
        String vivoSignature = "";
        String orderID ="";
        int platform = 1;
        try {
            float price = Float.parseFloat(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            amount = (int)(price * 100); // 支付金额，单位分

            name =  json.getString(SdkInterface.SDKInterfaceDefine.Pay_ParameterName_GoodsName);
            vivoSignature = json.getString(SdkInterface.SDKInterfaceDefine.Pay_ParameterName_GoodsID); //由订单推送接口返回，字段为accessKey
            orderID = json.getString(SdkInterface.SDKInterfaceDefine.Pay_ParameterName_CpOrderID);//交易流水号
            if(json.getString(SdkInterface.SDKInterfaceDefine.Pay_ParameterName_Payment) == "2")
            {
                platform = 2;
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }

        VivoPayInfo.Builder builder = new VivoPayInfo.Builder();
        builder.setProductName(name)
                .setProductDes("")
                .setProductPrice(String.valueOf(amount))
                .setVivoSignature(vivoSignature) //验签
                .setAppId(AppID)
                .setTransNo(orderID) //交易流水号
                .setUid(OpenID);

        VivoPayInfo vivoPayInfo = builder.build();

        VivoUnionSDK.payNow(GetCurrentActivity(),vivoPayInfo,new VivoPayCallback(){
            @Override
            public void onVivoPayResult(String s,boolean b, String s1)
            {
                SendLog("vivo pay result >" + s + "===========" + s1 +"< success is " + b);
                SendPayCallBack(b,s,s1);
            }
        },platform);
    }


    private void InitSDK()
    {
        VivoUnionSDK.initSdk(GetCurrentActivity(),AppID,false);

        VivoUnionSDK.registerAccountCallback(GetCurrentActivity(), new VivoAccountCallback() {
            @Override
            public void onVivoAccountLogin(String userName, String openId, String authToken) {
                OpenID = openId;
                //登陆成功，openid参数为用户唯一标识
                LoginCallBack(openId,authToken,true);
            }

            @Override
            public void onVivoAccountLogout(int i) {
                //登录退出
            }

            @Override
            public void onVivoAccountLoginCancel() {
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
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,openId);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AuchToken,authToken);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.vivo.toString());

            CallBack(jo);
        }
        catch (Exception e)
        {
            SendError("LoginCallBack Error " + e.toString(),e);
        }
    }

    void SendPayCallBack(boolean success,String s,String s1)
    {
        try {

            JSONObject jo = new JSONObject();
            jo.put(SdkInterface.SDKInterfaceDefine.ModuleName, SdkInterface.SDKInterfaceDefine.ModuleName_Pay);

            jo.put(SdkInterface.SDKInterfaceDefine.Pay_ParameterName_GoodsID,s);
            jo.put(SdkInterface.SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SdkInterface.SDKInterfaceDefine.Pay_ParameterName_OrderID,s1);
            jo.put(SdkInterface.SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.vivo.toString());

            SdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }
}
