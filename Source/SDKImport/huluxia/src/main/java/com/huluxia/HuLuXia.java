package com.huluxia;

import android.annotation.SuppressLint;
import android.content.Context;

import com.huluxia.sdk.SdkConfig;
import com.huluxia.sdk.SdkEvent;
import com.huluxia.sdk.UIHelper;
import com.huluxia.sdk.UtilsAndroid;
import com.huluxia.sdk.framework.AppConfig;
import com.huluxia.sdk.framework.base.notification.CallbackHandler;
import com.huluxia.sdk.framework.base.notification.EventNotifyCenter;
import com.huluxia.sdk.framework.base.utils.UtilsFunction;
import com.huluxia.sdk.framework.base.utils.UtilsNetwork;
import com.huluxia.sdk.login.AccountMgr;
import com.huluxia.sdk.login.HttpMgr;
import com.huluxia.sdk.login.LoginCode;
import com.huluxia.sdk.login.LoginUserInfo;
import com.huluxia.sdk.login.ui.floatview.HlxFloatManager;
import com.huluxia.sdk.login.usage.DbManager;
import com.huluxia.sdk.login.usage.LogServiceDaemon;
import com.huluxia.sdk.pay.OrderInfo;
import com.huluxia.sdk.pay.PayCode;
import com.huluxia.sdk.pay.PayInfo;
import com.huluxia.sdk.pay.PayMgr;

import org.json.JSONObject;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.activity.MainActivity;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;

public class HuLuXia extends SDKBase implements ILogin, IPay
{
    int apkID;
    String callBackUrl;
    SdkConfig.Oriention oriention;

    sdkInterface.module.PayInfo payInfo;

    private LogServiceDaemon logServiceDaemon;
    private HlxFloatManager mHlxFloatManager;

    @Override
    public void OnCreate() {
        try
        {
            SendLog("HuLuXia Oncreate " );
            SendLog("葫芦侠 初始化");
            SendLog("葫芦侠 getPackageName" +  GetCurrentActivity().getApplication().getPackageName());

            apkID = Integer.parseInt(GetProperties().getProperty("AppID"));
            callBackUrl = GetProperties().getProperty("CallBackUrl");
            oriention = SdkConfig.Oriention.valueOf(GetProperties().getProperty("Oriention"));

            SendLog("葫芦侠 apkID " + apkID);
            SendLog("葫芦侠 callBackUrl " + callBackUrl);
            SendLog("葫芦侠 oriention " + oriention);

            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("UI主线程去执行 " );

                    EventNotifyCenter.add(SdkEvent.class, mLoginCallbak);

                    SdkConfig.getInstance()
                            .setApkId(apkID) //葫芦侠为每个游戏分配了一个ID；测试ID为1000；具体游戏ID请向葫芦侠商务获取。
                            .setActivityName("sdkInterface.activity.MainActivity") //请填入游戏主Activity名称, 此处提供范例。该字段用于判定游戏Activity是否可见，从而统计在线时长。
                            .setNotifyUrl(callBackUrl) //该url由游戏方填写，此处提供范例
                            .setOriention(oriention);//设置横屏(ORIENTATION_LANDSCAPE)或竖屏(ORIENTATION_PORTRAIT)，根据游戏实际情况填写，默认是竖屏

                    String apk_id = SdkConfig.getInstance().getApkId();
                    String ativity_name = SdkConfig.getInstance().getActivityName();
                    String HLX_SDK_DB = "Hlx_" + apk_id + ".db";

                    AppConfig.getInstance().initApp(GetCurrentActivity().getApplication(), apk_id);
                    String appName = UtilsAndroid.getApplicationName();
                    AppConfig.getInstance().setAppName(appName);
                    DbManager.init(HLX_SDK_DB);//初始化数据库
                    logServiceDaemon = new LogServiceDaemon(GetCurrentActivity().getApplication(), ativity_name);
                }
            });

            SendLog("葫芦侠 初始化完成");
        }catch (Exception e)
        {
            SendError("HuLuXia error " + e,e);
        }
    }

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        try
        {
        }catch (Exception e)
        {
            SendError("Huluxia Init error"+ e,e);
        }
    }

    @Override
    public void Login(JSONObject json) {

        try {
            SendLog("葫芦侠 登陆 " + json);

            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {

                    SendLog("葫芦侠 登陆 run " );
                    /**
                     *  调用登录框
                     * 第二个参数控制登录框显示
                     * true: 点击登录框外部，登录框消失（适合游戏自身有登录按钮的场景）; false: 点击登录框外部， 登录框不会消失
                     */
                    AccountMgr.getInstance().
                            goToLoginActivity(GetCurrentActivity(), false);
                }
            });

        }catch (Exception e)
        {
            SendError("葫芦侠 Login error ",e);
        }
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    @Override
    public void Pay(JSONObject json) {
        try {
            SendLog("葫芦侠 Pay " + json);

            if (!AccountMgr.getInstance().isLogin()) {
                UIHelper.toast(GetCurrentActivity(), "请先登录");
                return;
            }

            payInfo = sdkInterface.module.PayInfo.FromJson(json);

            String money = payInfo.price+"";

            OrderInfo orderInfo = new OrderInfo();
            orderInfo.subject = payInfo.goodsID;
            orderInfo.body = payInfo.goodsID;
            orderInfo.amount = UtilsFunction.empty(money) ? "0.1" : money;//银联方式最小金额是0.10
            orderInfo.notifyUrl = SdkConfig.getInstance().getNotifyUrl();//该url由游戏方填写，在程序初始化时设置
            orderInfo.orderNo = PayMgr.getOutTradeNo();//订单号由游戏方生成，此处提供范例
            orderInfo.extraParam = payInfo.goodsID+"|"+payInfo.userID;//透传参数

            PayMgr.getInstance().goToPayActivity(GetCurrentActivity(), orderInfo);
        }
        catch (Exception e)
        {
            SendError("葫芦侠 Login error ",e);
        }
    }

    @Override
    public boolean IsPrePay() {
        return false;
    }

    @Override
    public boolean IsReSendPay() {
        return true;
    }

    @Override
    public void OnDestroy() {
        EventNotifyCenter.remove(mLoginCallbak);
    }

    @SuppressLint("HandlerLeak")
    private CallbackHandler mLoginCallbak = new CallbackHandler() {

        //必须实现（登录功能相关）
        @EventNotifyCenter.MessageHandler(message = SdkEvent.EVENT_LOGIN)
        public void onLogin(LoginCode code, boolean fromLoginActivity) {
            SendLog( "login result " + code.getCode().Value());
            if (code.isSucc()) {
                if (mHlxFloatManager == null) {
                    mHlxFloatManager = new HlxFloatManager(GetCurrentActivity());
                    mHlxFloatManager.create();
                }
                else {
                    HttpMgr.getInstance().getNoticeList(0, 20);
                    HttpMgr.getInstance().getMsgCount();
                }

                AccountMgr.HlxToken hlxToken = AccountMgr.getInstance().getToken();
                LoginUserInfo userInfo = AccountMgr.getInstance().getLoginUserInfo();
                SendLog( "hlxtoken device_code: " + hlxToken.device_code + "; key: " + hlxToken.key + "; uid: " + hlxToken.uid + "; userInfo: " + userInfo);

                LoginCallBack(true,hlxToken.uid + "");

            }  else if (!fromLoginActivity) {  //如果 LoginActivity未显示
                if (!UtilsNetwork.isNetworkConnected(GetCurrentActivity())) {
                    UIHelper.toast(GetCurrentActivity(), "网络异常");
                    LoginCallBack(false,"");
                    return;
                }
                startLogin(GetCurrentActivity());
                UIHelper.toast(GetCurrentActivity(), code.getMessage());

                LoginCallBack(false,"");
            }
        }

        //必须实现（支付功能相关）
        @EventNotifyCenter.MessageHandler(message = SdkEvent.EVENT_PAY)
        public void onPay(PayCode code, String orderNo) {
            SendLog("pay result "+code.getCode().Value()+", orderNo("+orderNo+") msg("+code.getMessage()+")");
            if (code.isSucc()){//此判断为true表示支付成功；失败时code.getMessage()是具体的错误内容

                PayCallBack(true,orderNo);
            }
            else
            {
                PayCallBack(false,"");
            }
        }

        //可选（退出登录功能）
        @EventNotifyCenter.MessageHandler(message = SdkEvent.EVENT_LOGOUT)
        public void onLogOut() {
            if (mHlxFloatManager != null) {
                mHlxFloatManager.destory();
                mHlxFloatManager = null;
            }
        }

        //仅供测试，建议从服务端进行校验（客户端校验token）
        @EventNotifyCenter.MessageHandler(message = SdkEvent.EVENT_VERIFY)
        public void onVerify(boolean ret, String msg) {
           SendLog( "verify result "+(ret ? 1 : 0)+", msg("+msg+")");
           UIHelper.toast(GetCurrentActivity(), msg);
        }
    };

    public void startLogin(Context context) {
        /**
         *  调用登录框
         * 第二个参数控制登录框显示
         * true: 点击登录框外部，登录框消失（适合游戏自身有登录按钮的场景）; false: 点击登录框外部， 登录框不会消失
         */
        AccountMgr.getInstance().goToLoginActivity(context, false);//建议第二个参数传false
    }

    void LoginCallBack(boolean success,String userID)
    {
        SdkInterface.SendLog("UCSDK onLoginSucc:" + userID);
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,userID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.Huluxia.toString());

            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("UCSDK onLoginSucc",e);
        }
    }

    void PayCallBack(Boolean success,String orderID)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,orderID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,orderID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.Huluxia.toString());

            payInfo.ToJson(jo);
            SdkInterface.SendMessage(jo);
        }
        catch (Exception e)
        {
            SendError("UCSDK onCreateOrderSucc Exception " +e,e);
        }
    }

    @Override
    public void OnResume() {
        super.OnResume();
    }

    @Override
    public void OnAppplicationQuit(JSONObject json) {
        super.OnAppplicationQuit(json);
    }
}
