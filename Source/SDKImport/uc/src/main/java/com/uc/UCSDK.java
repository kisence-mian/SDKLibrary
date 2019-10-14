package com.uc;

import org.json.JSONObject;

import cn.gundam.sdk.shell.even.SDKEventKey;
import cn.gundam.sdk.shell.even.SDKEventReceiver;
import cn.gundam.sdk.shell.even.Subscribe;
import cn.gundam.sdk.shell.exception.AliLackActivityException;
import cn.gundam.sdk.shell.exception.AliNotInitException;
import cn.gundam.sdk.shell.open.OrderInfo;
import cn.gundam.sdk.shell.open.ParamInfo;
import cn.gundam.sdk.shell.open.UCOrientation;
import cn.gundam.sdk.shell.param.SDKParamKey;
import cn.gundam.sdk.shell.param.SDKParams;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SdkInterface;
import cn.uc.gamesdk.UCGameSdk;

public class UCSDK extends SDKBase implements ILogin, IPay
{
    int AppID;
    int cpID;

    UCOrientation landscape; //横屏还是竖屏


    private SDKEventReceiver eventReceiver = new SDKEventReceiver()
    {    @Subscribe(event = SDKEventKey.ON_INIT_SUCC)
        private void onInitSucc()
        {
            SdkInterface.SendLog("UCSDK 初始化成功");
        }

        @Subscribe(event = SDKEventKey.ON_INIT_FAILED)
        private void onInitFailed(String desc)
        {
            SdkInterface.SendLog("UCSDK 初始化失败:" + desc);
        }

        @Subscribe(event = SDKEventKey.ON_LOGIN_SUCC)
        private void onLoginSucc(String sid)
        {
            //sid即token，需发送给游戏服务器做登录校验获取accountId用户唯一标识，客户端无法获取用户唯 一标识
            // appendText("登录成功,sid:" + sid);
            SdkInterface.SendLog("UCSDK onLoginSucc:" + sid);
        }

        @Subscribe(event = SDKEventKey.ON_LOGIN_FAILED)
        private void onLoginFailed(String desc)
        {
            SdkInterface.SendLog("UCSDK 登录失败:" + desc);
        }

        @Subscribe(event = SDKEventKey.ON_CREATE_ORDER_SUCC)    private void onCreateOrderSucc(OrderInfo orderInfo)
        {
            if (orderInfo != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(String.format("'orderId':'%s'", orderInfo.getOrderId()));
                sb.append(String.format("'orderAmount':'%s'", orderInfo.getOrderAmount()));
                sb.append(String.format("'payWay':'%s'", orderInfo.getPayWay()));
                sb.append(String.format("'payWayName':'%s'", orderInfo.getPayWayName()));
                SdkInterface.SendLog( "此处为订单生成回调，客户端无支付成功回调，订单是否成功以 服务端回调为准: callback orderInfo = " + sb);
            }
        }
        @Subscribe(event = SDKEventKey.ON_PAY_USER_EXIT)    private void onPayUserExit(OrderInfo orderInfo)
        {
            if (orderInfo != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(String.format("'orderId':'%s'", orderInfo.getOrderId()));
                sb.append(String.format("'orderAmount':'%s'", orderInfo.getOrderAmount()));
                sb.append(String.format("'payWay':'%s'", orderInfo.getPayWay()));
                sb.append(String.format("'payWayName':'%s'", orderInfo.getPayWayName()));
                SdkInterface.SendLog("支付界面关闭: callback orderInfo = " + sb);
            }
        }
    };

    @Override
    public void Init(JSONObject json)
    {
        try {
            AppID = Integer.parseInt( GetProperties().getProperty("AppID"));
            landscape = UCOrientation.valueOf( GetProperties().getProperty("Landscape"));

            UCGameSdk.defaultSdk().registerSDKEventReceiver(eventReceiver);

            ParamInfo gpi= new ParamInfo();//请自行生成对象
            gpi.setGameId(AppID);
            gpi.setOrientation(landscape);

            SDKParams sdkParams = new SDKParams();
            sdkParams.put(SDKParamKey.GAME_PARAMS, gpi);

            UCGameSdk.defaultSdk().initSdk(GetCurrentActivity(),sdkParams);
        } catch (Exception e) {
            SendError("UCSDK Init Exception " + e.toString(),e);
        }
    }

    @Override
    public void OnDestory() {
        UCGameSdk.defaultSdk().unregisterSDKEventReceiver(eventReceiver);
    }

    @Override
    public void Login(JSONObject json)
    {
        try {
            UCGameSdk.defaultSdk().login(GetCurrentActivity(),null);
        } catch (Exception e)
        {
            SendError("UCSDK Login Exception " + e.toString(),e);
            e.printStackTrace();
        }
    }

    @Override
    public void Pay(JSONObject json)
    {
        try
        {
            UCGameSdk.defaultSdk().pay(GetCurrentActivity(),null);
        }catch (Exception e)
        {
            SendError("UCSDK Pay Exception " + e.toString(),e);
            e.printStackTrace();
        }
    }
}
