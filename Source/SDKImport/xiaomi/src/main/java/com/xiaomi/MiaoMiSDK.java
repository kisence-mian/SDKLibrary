package com.xiaomi;

import android.os.Bundle;

import com.xiaomi.gamecenter.sdk.GameInfoField;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.MiErrorCode;
import com.xiaomi.gamecenter.sdk.OnInitProcessListener;
import com.xiaomi.gamecenter.sdk.OnLoginProcessListener;
import com.xiaomi.gamecenter.sdk.OnPayProcessListener;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;

import org.json.JSONException;
import org.json.JSONObject;

import java.security.cert.Extension;
import java.util.Date;
import java.util.List;
import java.util.Random;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class MiaoMiSDK extends SDKBase implements ILogin, IPay {

    String AppID;
    String AppKey;

    PayInfo payInfo;
    String uid;

    @Override
    public void Init(JSONObject json)
    {
        try
        {
            AppID = GetProperties().getProperty("AppID");
            AppKey = GetProperties().getProperty("AppKey");

            MiAppInfo appInfo = new MiAppInfo();
            appInfo.setAppId(AppID);
            appInfo.setAppKey(AppKey);

            MiCommplatform.Init(GetCurrentActivity(), appInfo, new OnInitProcessListener() {

                @Override
                public void finishInitProcess(List<String> loginMethod, int gameConﬁg) {
                    SendLog("MiaoMiSDK Init success");
                }

                @Override
                public void onMiSplashEnd()
                {
                    //⼩⽶闪屏⻚结束回调，⼩⽶闪屏可配，⽆闪屏也会返回此回调，游戏的闪屏应当在收到此回调之后
                    SendLog("MiaoMiSDK Init ⼩⽶闪屏⻚结束回调");
                }
            });

            MiCommplatform.getInstance().onMainActivityCreate(GetCurrentActivity());
        }catch (Exception e)
        {
            SendError("XiaoMi Error " + e,e);
        }
    }

    @Override
    public void OnDestory() {
        MiCommplatform.getInstance().onMainActivityDestory(GetCurrentActivity());
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("XiaoMi Login ");

        MiCommplatform.getInstance().miLogin(GetCurrentActivity(), new OnLoginProcessListener()
        {
            @Override
            public void finishLoginProcess(int code, MiAccountInfo arg1) {
                switch (code)
                {
                    case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS: // 登陆成功
                        // 获取⽤⼾的登陆后的UID（即⽤⼾唯⼀标识）
                         //以下为获取session并校验流程，如果是⽹络游戏必须校验，如果是单机游戏或应⽤可选//
                         // 获取⽤⼾的登陆的Session（请参考5.3.3流程校验Session有效性）
                         // 请开发者完成将uid和session提交给开发者⾃⼰服务器进⾏session验证

                        uid = arg1.getUid();
                        String session = arg1.getSessionId();
                        SendLog("XiaoMi 登陆成功 uid " + uid + " session " + session);
                        SendLoginCakkBack(true,uid,session);
                        break;

                    case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_LOGIN_FAIL:
                        // 登陆失败
                        SendLog("XiaoMi 登录失败");
                        SendLoginCakkBack(false,"" ,"");
                        break;
                    case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_CANCEL:
                        // 取消登录
                        SendLog("XiaoMi 取消登录");
                        SendLoginCakkBack(false,"" ,"");
                         break;
                    case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED:
                        //登录操作正在进⾏中
                        SendLog("XiaoMi 登录操作正在进⾏中");
                        SendLoginCakkBack(false,"" ,"");
                        break;

                    default:
                        // 登录失败
                        SendLog("XiaoMi default 登录失败");
                        SendLoginCakkBack(false,"" ,"");
                        break;
                }
            }
        });
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    void SendLoginCakkBack(boolean success,String UID,String Session)
    {
        try {
//            String typeKey = userData.getPlayerId()+"|"+userData.getPlayerLevel()+"|"+userData.getGameAuthSign() +"|" + userData.getTs();
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,UID );
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.XiaoMi.toString());

            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("XiaoMi SendLoginCakkBack Error",e);
        }
    }

    @Override
    public void Pay(JSONObject json) {

        try {
            payInfo = PayInfo.FromJson(json);

//            payInfo.price = 1; //测试价格

            String orderID = GenerateOrderID();

            payInfo.orderID = orderID;

            MiBuyInfo miBuyInfo = new MiBuyInfo();
            miBuyInfo.setCpOrderId(orderID); //订单号唯⼀（不为空）
            miBuyInfo.setCpUserInfo( payInfo.goodsID + "|" + payInfo.userID); //此参数在⽤⼾⽀付成功后会透传给CP的服务器
            miBuyInfo.setAmount((int)payInfo.price); //必须是⼤于1的整数，10代表10⽶币，即10元⼈⺠币（不为空）                                  //⽤⼾信息，⽹游必须设置、单机游戏或应⽤可选

            Bundle mBundle = new Bundle();
//            mBundle.putString(GameInfoField.GAME_USER_BALANCE, "1000"); //⽤⼾余额
//            mBundle.putString(GameInfoField.GAME_USER_GAMER_VIP, vip0); //vip等级
//            mBundle.putString(GameInfoField.GAME_USER_LV, "20"); //⻆⾊等级
//            mBundle.putString(GameInfoField.GAME_USER_PARTY_NAME, "猎⼈"); //⼯会，帮派
//            mBundle.putString(GameInfoField.GAME_USER_ROLE_NAME, meteor); //⻆⾊名称
//            mBundle.putString(GameInfoField.GAME_USER_ROLEID, "123456"); //⻆⾊id
//            mBundle.putString(GameInfoField.GAME_USER_SERVER_NAME, "峡⾕"); //所在服务器
            miBuyInfo.setExtraInfo(mBundle); //设置⽤⼾信息

            MiCommplatform.getInstance().miUniPay(GetCurrentActivity(), miBuyInfo,
                    new OnPayProcessListener()
            {
                @Override
                public void finishPayProcess(int code) {

                switch (code) {
                    case MiErrorCode.MI_XIAOMI_PAYMENT_SUCCESS: //购买成功

                        SendLog(" MiaoMI 购买成功 " + code);
                        break;
//                    SendPayCallBack(true,code);

                    case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_CANCEL: //取消购买
                        SendLog(" MiaoMI 取消购买 "+ code);
                        SendPayCallBack(false,code);
                        break;

                    case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_PAY_FAILURE: //购买失败
                        SendLog(" MiaoMI 购买失败 "+ code);
                        SendPayCallBack(false,code);
                        break;

                    case MiErrorCode.MI_XIAOMI_PAYMENT_ERROR_ACTION_EXECUTED: //操作正在进⾏中
                        SendLog(" MiaoMI 操作正在进⾏中 "+ code);
                        SendPayCallBack(false,code);
                        break;

                    default:
                        //购买失败
                        SendLog(" MiaoMI default 购买失败 "+ code);
                        SendPayCallBack(false,code);
                        break;
                }
            }
            });

        } catch (Exception e) {
            e.printStackTrace();
            SendError("XiaoMi Pay Error",e);
        }
    }

    @Override
    public boolean IsPrePay() {
        return false;
    }

    void SendPayCallBack(boolean success,int errorCode)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,payInfo.orderID);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.HuaWei.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,uid +"|" + payInfo.orderID);

            payInfo.ToJson(jo);

            sdkInterface.SdkInterface.SendMessage(jo);
        }
        catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }

    String GenerateOrderID()
    {
        String orderID = "od_XM_" + new Date().getTime() + Math.random()%9000;

        return orderID;
    }
}
