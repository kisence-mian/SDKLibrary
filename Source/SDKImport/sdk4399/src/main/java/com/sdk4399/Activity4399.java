package com.sdk4399;

import android.content.pm.ActivityInfo;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Date;
import java.util.Random;

import cn.m4399.operate.OperateCenter;
import cn.m4399.operate.OperateCenter.OnLoginFinishedListener;
import cn.m4399.operate.OperateCenterConfig;
import cn.m4399.operate.User;
import sdkInterface.IOther;
import sdkInterface.define.LoginPlatform;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.IPay;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class Activity4399 extends SDKBase implements ILogin,IPay, IOther{
    public static PayInfo payInfo;
    public static  String AppID = "";
    public static  String GoodsID = "";
    @Override
    public void Init(JSONObject json) {

        try {
            AppID = GetProperties().getProperty("AppID");
            initSDK();
            SdkInterface.SendLog("4399SDK Init: AppID " + AppID + " AppSecret " + "");
        } catch (Exception e)
        {
            SdkInterface.SendError("4399SDK Init Error" + e.toString(),e);
        }
    }

    @Override
    public void OnAppplicationQuit(JSONObject json)
    {
        mOpeCenter.shouldQuitGame(GetCurrentActivity(), new OperateCenter.OnQuitGameListener() {

            @Override
            public void onQuitGame(boolean shouldQuit) {
                // 点击“退出游戏”时，shouldQuit为true，游戏处理自己的退出业务逻辑
                // 点击“前往游戏圈”时，shouldQuit为false，SDK会进入游戏圈或者下载
                //  游戏盒子界面，游戏可以不做处理。
                // 点击“留在游戏”时，shouldQuit为false，SDK和游戏都不做任何处理
                // 点击右上角的关闭图标，shouldQuit为false，SDK和游戏都不做任何处理

                if(shouldQuit)
                {
                    GetCurrentActivity().finish();
                }
            }
        });
    }

    @Override
    public void OnDestroy() {
        SdkInterface.SendLog("4399SDK Quit Ready");
        if (mOpeCenter != null) {
            mOpeCenter.destroy();
            mOpeCenter = null;
            SdkInterface.SendLog("4399SDK Quit OK");
        }
    }

    public void Login(JSONObject json) {
        mOpeCenter.login(GetCurrentActivity(), new OnLoginFinishedListener() {

            @Override
            public void onLoginFinished(boolean success, int resultCode, User userInfo)
            {
                //登录结束后的游戏逻辑
                LoginCallBack(userInfo.getUid(),userInfo.getState(),success);

                SdkInterface.SendLog("4399SDK LogLogin: " + resultCode );
            }
        });
    }

    @Override
    public void LoginOut(JSONObject json) {

    }


    @Override
    public void Pay(JSONObject json) {
        String mark = "";
        String price = "";
<<<<<<< HEAD
<<<<<<< HEAD
        String productName ="";
        String orderID = "";
        try {
            payInfo = PayInfo.FromJson(json);
            orderID = "od_4399_" + new Date().getTime() + "_"+new Random().nextInt(1000);
            mark = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            price = json.getString(SDKInterfaceDefine.Pay_ParameterName_Price);
=======
=======
>>>>>>> 8c5537acd97d3721f6b4030ae56b10056d56547f
        String productName ="";eterName_GoodsID);
            price = json.getString(SDKIn
                    String orderID = "";
            try {
                payInfo = PayInfo.FromJson(json);
                orderID = "od_4399_" + new Date().getTime() + "_"+new Random().nextInt(1000);
                mark = json.getString(SDKInterfaceDefine.Pay_ParamterfaceDefine.Pay_ParameterName_Price);
<<<<<<< HEAD
>>>>>>> 8c5537acd97d3721f6b4030ae56b10056d56547f
=======
>>>>>>> 8c5537acd97d3721f6b4030ae56b10056d56547f
            productName = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsName);

            payInfo.orderID = orderID;
        }
        catch (Exception e)
        {
            SendError("4399SDK  Pay Error " + e,e);
        }
        GoodsID = mark;

        mOpeCenter.recharge(GetCurrentActivity() ,
                Integer.parseInt(price),             //充值金额（元）
                mark,           //mark
                productName,    //商品名称
                new OperateCenter.OnRechargeFinishedListener() {

                    @Override
                    public void onRechargeFinished(
                            boolean success, int resultCode,
                            String msg)
                    {
                        SdkInterface.SendLog("4399SDK Pay msg: " + msg );
                        if(success){
                            SdkInterface.SendLog("4399SDK Pay success:  " + resultCode );
                            //请求游戏服，获取充值结果
                        }else{
                            SdkInterface.SendLog("4399SDK Pay fail:  " + resultCode );
                            //充值失败逻辑
                            SendPayCallBack(success,GoodsID,String.valueOf(resultCode));
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

    }

    @Override
    public void ClearPurchase(JSONObject json) {

    }

    OperateCenter mOpeCenter;

    private void initSDK() {
        // 游戏接入SDK；
        mOpeCenter = OperateCenter.getInstance();

        mOpeCenter = OperateCenter.getInstance();
        OperateCenterConfig mOpeConfig = new OperateCenterConfig.Builder(GetCurrentActivity())
                .setGameKey(AppID)     //设置GameKey
                .setDebugEnabled(false)     //设置DEBUG模式,用于接入过程中开关日志输出，发布前必须设置为false或删除该行。默认为false。
                .setOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT)  //设置横竖屏方向，默认为横屏，现支持横竖屏，和180度旋转
                .setSupportExcess(true)     //设置服务端是否支持处理超出部分金额，默认为false
                .setPopLogoStyle(OperateCenterConfig.PopLogoStyle.POPLOGOSTYLE_ONE) //设置悬浮窗样式，现有四种可选
                .setPopWinPosition(OperateCenterConfig.PopWinPosition.POS_LEFT) //设置悬浮窗默认显示位置，现有四种可选
                .build();
        mOpeCenter.setConfig(mOpeConfig);
        mOpeCenter.init(GetCurrentActivity(),new OperateCenter.OnInitGloabListener() {
            // 初始化结束执行后回调
            @Override
            public void onInitFinished(boolean isLogin, User userInfo) {
                assert (isLogin == mOpeCenter.isLogin());
            }

            // 注销帐号的回调， 包括个人中心里的注销和logout()注销方式
            // fromUserCenter区分是否是从悬浮窗-个人中心("4399游戏助手页面")注销的，若是则为true，不是为false
            @Override
            public void onUserAccountLogout(boolean fromUserCenter, int resultCode) {
            }

            // 切换帐号的回调
            //fromUserCenter区分是否是从"4399游戏助手页面"切换的，若是则为true，不是为false
            @Override
            public void onSwitchUserAccountFinished(boolean fromUserCenter, User userInfo) {

            }
        });
    }

    void LoginCallBack(String id,String state,boolean success)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,id + "$$$" + state);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.m4399.toString());

            CallBack(jo);
        }
        catch (Exception e)
        {
            SendError("LoginCallBack Error " + e.toString(),e);
        }
    }

    void SendPayCallBack(boolean success,String json,String info)
    {
        try {

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,GoodsID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,payInfo.orderID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.ParameterName_Content,info);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.m4399.toString());

            payInfo.ToJson(jo);

            SdkInterface.SendMessage(jo);
        } catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }

    @Override
    public void Other(JSONObject json)
    {
    }

    public String GenerateOrderID()
    {
        return "od_4399" + new Date().getTime() + "_" + new Random().nextInt()%1000;
    }

    @Override
    public String[] GetFunctionName() {
        return new String[]{"OnAppplicationQuit",""};
    }
}
