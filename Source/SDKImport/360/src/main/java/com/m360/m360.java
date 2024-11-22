package com.m360;


import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;

import com.m360.payment.Constants;
import com.m360.payment.QihooPayInfo;
import com.m360.utils.QihooUserInfo;
import com.m360.utils.QihooUserInfoListener;
import com.m360.utils.QihooUserInfoTask;
import com.qihoo.gamecenter.sdk.activity.ContainerActivity;
import com.qihoo.gamecenter.sdk.common.IDispatcherCallback;
import com.qihoo.gamecenter.sdk.matrix.Matrix;
import com.qihoo.gamecenter.sdk.protocols.CPCallBackMgr;
import com.qihoo.gamecenter.sdk.protocols.ProtocolConfigs;
import com.qihoo.gamecenter.sdk.protocols.ProtocolKeys;

import org.json.JSONException;
import org.json.JSONObject;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class m360 extends SDKBase implements ILogin, IPay {
    QihooUserInfo mQihooUserInfo;
    String mAccessToken = null;
    private boolean mIsInOffline = false;
    private static boolean isQTValid = true;
    private static boolean isAccessTokenValid = true;

    boolean landScape;

    PayInfo sdkPayInfo;

    // 登录、注册的回调
    private IDispatcherCallback mLoginCallback = new IDispatcherCallback() {

        @Override
        public void onFinished(String data) {
            // press back
            if (isCancelLogin(data)) {
                return;
            }

            SendLog("360 onLogin onFinished " + data);

            // 显示一下登录结果
//            Toast.makeText(GetCurrentActivity(), data, Toast.LENGTH_LONG).show();
            mIsInOffline = false;
            mQihooUserInfo = null;
            // 解析access_token
            mAccessToken = parseAccessTokenFromLoginResult(data);

            if (!TextUtils.isEmpty(mAccessToken)) {
                // 需要去应用的服务器获取用access_token获取一下用户信息
                getUserInfo(mAccessToken);
            } else {
                Toast.makeText(GetCurrentActivity(), "get access_token failed!",
                        Toast.LENGTH_LONG).show();
                LoginCallBack(false, "");
            }
        }
    };

    // 支付的回调
    protected IDispatcherCallback mPayCallback = new IDispatcherCallback() {

        @Override
        public void onFinished(String data) {

            SendLog("360 login callback " + data);
            if (TextUtils.isEmpty(data)) {
                return;
            }

            boolean isCallbackParseOk = false;
            JSONObject jsonRes;
            try {
                jsonRes = new JSONObject(data);
                // error_code 状态码： 0 支付成功， -1 支付取消， 1 支付失败， -2 支付进行中,5 海马云环境支付转接处理(此处不需要做处理) ,4010201和4009911 登录状态已失效，引导用户重新登录
                // error_msg 状态描述
                int errorCode = jsonRes.optInt("error_code");
                String errorMsg;
                isCallbackParseOk = true;

                switch (errorCode) {
                    case 0:
                        //支付成功不回调
                        return;
                    case 1:
                    case -1:
                    case -2: {
                        isAccessTokenValid = true;
                        isQTValid = true;
                        errorMsg = jsonRes.optString("error_msg");

                        //支付成功不回调
                        SendPayCallBack(false,errorMsg);
                    }
                    break;
                    case 4010201:
                        //acess_token失效
                        isAccessTokenValid = false;
                        Toast.makeText(GetCurrentActivity(), "AccessToken已失效，请重新登录", Toast.LENGTH_SHORT).show();
                        SendPayCallBack(false,"");
                        break;
                    case 4009911:
                        //QT失效
                        isQTValid = false;
                        Toast.makeText(GetCurrentActivity(), "QT已失效，请重新登录", Toast.LENGTH_SHORT).show();
                        SendPayCallBack(false,"");
                        break;
                    //海马云环境支付转接处理(此处不需要做处理),不是错误码
                    case 5:
                        isAccessTokenValid = true;
                        isQTValid = true;
                        errorMsg = jsonRes.optString("error_msg");
                        String text = "状态码:%d, 状态描述：%s";
                        Toast.makeText(GetCurrentActivity(), text, Toast.LENGTH_SHORT).show();
                        break;

                    //海马云+手助支付时回调
                    case 995:
                    case 996:
                    case 997:
                    case 998:
                    case 999: {
                        errorMsg = jsonRes.optString("error_msg");
                        String text_2 = "pay_callback_toast";
                        Toast.makeText(GetCurrentActivity(), text_2, Toast.LENGTH_SHORT).show();
                    }
                    break;
                    default:
                        break;
                }
            } catch (JSONException e) {
                e.printStackTrace();
                SendPayCallBack(false,"");
            }

            // 用于测试数据格式是否异常。
            if (!isCallbackParseOk) {
                Toast.makeText(GetCurrentActivity(), "严重错误！！接口返回数据格式错误！！",
                        Toast.LENGTH_LONG).show();
                SendPayCallBack(false,"");
            }
        }
    };

    @Override
    public void OnCreate() {
        try {

            landScape = Boolean.parseBoolean(GetProperties().getProperty("isLandScape"));

            SendLog("360 Init");
            Matrix.initInApplication(GetCurrentActivity().getApplication());

        } catch (Exception e) {
            SendError("360 init Error " + e, e);
        }
    }

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        try {

            SendLog("360 Init");
            Matrix.initInApplication(GetCurrentActivity().getApplication());

            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("UI主线程去执行 ");
                    Matrix.setActivity(GetCurrentActivity(), mSDKCallback, SdkInterface.IsDebug());
                }
            });


        } catch (Exception e) {
            SendError("360 init Error " + e, e);
        }
    }

    @Override
    public void Login(JSONObject json) {
        try {
            SendLog("360 LogLogin");
            doSdkLogin(landScape);
        } catch (Exception e) {
            SendError("360 LogLogin Error " + e, e);
        }
    }

    public void LoginCallBack(boolean success, String userID) {
        try {
//            String typeKey = userData.getPlayerId() + "|" + userData.getPlayerLevel() + "|" + userData.getGameAuthSign() + "|" + userData.getTs();
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, userID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.m360.toString());

            CallBack(jo);
        } catch (Exception e) {
            SendError("", e);
        }
    }

    @Override
    public void LoginOut(JSONObject json) {
        try {
//            Intent intent = getSwitchAccountIntent(isLandScape);
//            Matrix.invokeActivity(this, intent, mAccountSwitchCallback);

            SendLog("360 LogLogin");
        } catch (Exception e) {
            SendError("360 LogLogin Error " + e, e);
        }
    }

    @Override
    public void Pay(JSONObject json) {
        try {
            sdkPayInfo = PayInfo.FromJson(json);

            // 必需参数，使用360SDK的支付模块:CP可以根据需求选择使用 带有收银台的支付模块 或者 直接调用微信支付模块或者直接调用支付宝支付模块。
            //functionCode 对应三种支付模块：
            //ProtocolConfigs.FUNC_CODE_PAY;//表示 带有360收银台的支付模块。
            //ProtocolConfigs.FUNC_CODE_WEIXIN_PAY;//表示 微信支付模块。
            //ProtocolConfigs.FUNC_CODE_ALI_PAY;//表示支付宝支付模块。
            int functionCode = ProtocolConfigs.FUNC_CODE_PAY;

            boolean isFixed = true;
            QihooPayInfo payInfo = getQihooPayInfo(isFixed, functionCode);
            Intent intent = getPayIntent(landScape, payInfo, functionCode);

            intent.putExtra(ProtocolKeys.FUNCTION_CODE, functionCode);
            // 启动接口
            Matrix.invokeActivity(GetCurrentActivity(), intent, mPayCallback);
        } catch (Exception e) {
            SendError("360 Pay Error " + e, e);
        }
    }

    @Override
    public boolean IsPrePay() {
        return true;
    }

    @Override
    public boolean IsReSendPay() {
        return false;
    }

    boolean isCancelLogin(String data) {
        try {
            JSONObject joData = new JSONObject(data);
            int errno = joData.optInt("errno", -1);
            if (-1 == errno) {
                Toast.makeText(GetCurrentActivity(), data, Toast.LENGTH_LONG).show();
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    private String parseAccessTokenFromLoginResult(String loginRes) {
        try {
            JSONObject joRes = new JSONObject(loginRes);
            JSONObject joData = joRes.getJSONObject("data");
            return joData.getString("access_token");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private void getUserInfo(String accessToken) {

        LoginCallBack(true, accessToken);
    }

    protected QihooPayInfo getQihooPayInfo(boolean isFixed, int functionCode) {
        QihooPayInfo payInfo = null;
        //收银台可以使用定额支付或者不定额支付。
        if (functionCode == ProtocolConfigs.FUNC_CODE_PAY) {
            payInfo = getQihooPay(sdkPayInfo.price + "");
        }
        //微信或者支付宝 支付 必须使用定额支付。
        if (functionCode == ProtocolConfigs.FUNC_CODE_WEIXIN_PAY || functionCode == ProtocolConfigs.FUNC_CODE_ALI_PAY) {
            payInfo = getQihooPay(sdkPayInfo.price + "");
        }
        return payInfo;
    }

    /***
     * @param moneyAmount 金额数，使用者可以自由设定数额。金额数为100的整数倍，360SDK运行定额支付流程；
     *            金额数为0，360SDK运行不定额支付流程。
     * @return QihooPay
     */
    private QihooPayInfo getQihooPay(String moneyAmount) {

        String[] info = sdkPayInfo.tag.split("\\|");
        String qihuUserID = info[0];
        moneyAmount = info[1];
        String callBackUrl = info[2];
//
//        String qihooUserId = (mQihooUserInfo != null) ? mQihooUserInfo.getId() : null;

        // 创建QihooPay
        QihooPayInfo qihooPay = new QihooPayInfo();
        qihooPay.setQihooUserId(qihuUserID);
        qihooPay.setMoneyAmount(moneyAmount);
        qihooPay.setExchangeRate(Constants.DEMO_PAY_EXCHANGE_RATE);

        qihooPay.setProductName(sdkPayInfo.goodsName);
        qihooPay.setProductId(sdkPayInfo.goodsID);

        qihooPay.setNotifyUri(callBackUrl);

        qihooPay.setAppName("Game");
        qihooPay.setAppUserName("玩家");
        qihooPay.setAppUserId(sdkPayInfo.userID);

        // 可选参数
        qihooPay.setAppExt1(sdkPayInfo.userID);
        qihooPay.setAppExt2(sdkPayInfo.goodsID);
        qihooPay.setAppOrderId(sdkPayInfo.orderID);

        return qihooPay;
    }

    protected Intent getPayIntent(boolean isLandScape, QihooPayInfo pay, int functionCode) {

        Bundle bundle = new Bundle();
//
//        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape);
//
//        // *** 以下非界面相关参数 ***

//        // 设置QihooPay中的参数。
        bundle.putString(ProtocolKeys.QIHOO_USER_ID, pay.getQihooUserId());

        // 必需参数，所购买商品金额, 以分为单位。金额大于等于100分，360SDK运行定额支付流程； 金额数为0，360SDK运行不定额支付流程。
        bundle.putString(ProtocolKeys.AMOUNT, pay.getMoneyAmount());

        // 必需参数，所购买商品名称，应用指定，建议中文，最大10个中文字。
        bundle.putString(ProtocolKeys.PRODUCT_NAME, pay.getProductName());

        // 必需参数，购买商品的商品id，应用指定，最大16字符。
        bundle.putString(ProtocolKeys.PRODUCT_ID, pay.getProductId());

        // 必需参数，应用方提供的支付结果通知uri，最大255字符。360服务器将把支付接口回调给该uri，具体协议请查看文档中，支付结果通知接口–应用服务器提供接口。
        bundle.putString(ProtocolKeys.NOTIFY_URI, pay.getNotifyUri());

        // 必需参数，游戏或应用名称，最大16中文字。
        bundle.putString(ProtocolKeys.APP_NAME, getAppName(GetCurrentActivity()));

        // 必需参数，应用内的用户名，如游戏角色名。 若应用内绑定360账号和应用账号，则可用360用户名，最大16中文字。（充值不分区服，
        bundle.putString(ProtocolKeys.APP_USER_NAME, pay.getAppUserName());
        // 必需参数，应用内的用户id。
        // 充到统一的用户账户，各区服角色均可使用）。
        bundle.putString(ProtocolKeys.APP_USER_ID, sdkPayInfo.userID);

        // 可选参数，应用订单号，应用内必须唯一，最大32字符。
        bundle.putString(ProtocolKeys.APP_ORDER_ID, sdkPayInfo.orderID);

        // 可选参数，应用扩展信息1，原样返回，最大255字符。
        bundle.putString(ProtocolKeys.APP_EXT_1, pay.getAppExt1());

        // 可选参数，应用扩展信息2，原样返回，最大255字符。
        bundle.putString(ProtocolKeys.APP_EXT_2, pay.getAppExt2());

        // 必需参数，使用360SDK的支付模块:CP可以根据需求选择使用 带有收银台的支付模块 或者 直接调用微信支付模块或者直接调用支付宝支付模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, functionCode);

        Intent intent = new Intent(GetCurrentActivity(), ContainerActivity.class);

        SendLog("360 pay QIHOO_USER_ID " + pay.getQihooUserId());
        SendLog("360 pay AMOUNT " + pay.getMoneyAmount());
        SendLog("360 pay APP_USER_ID " + sdkPayInfo.userID);
        SendLog("360 pay APP_ORDER_ID " + sdkPayInfo.orderID);
        SendLog("360 pay PRODUCT_ID " + pay.getProductId());
        SendLog("360 pay NOTIFY_URI " + pay.getNotifyUri());

//        intent.putExtra(ProtocolKeys.TOKEN_ID, pay.);
//        intent.putExtra(ProtocolKeys.ORDER_TOKEN, orderIdS);

        intent.putExtras(bundle);

        return intent;
    }

    /**
     * 使用360SDK的登录接口, 生成intent参数
     *
     * @param isLandScape 是否横屏显示登录界面
     */
    private Intent getLoginIntent(boolean isLandScape) {
        Intent intent = new Intent(GetCurrentActivity(), ContainerActivity.class);
        // 必需参数，使用360SDK的登录模块
        intent.putExtra(ProtocolKeys.FUNCTION_CODE,
                ProtocolConfigs.FUNC_CODE_LOGIN);
        // 可选参数，360SDK界面是否以横屏显示，默认为true，横屏
        intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE,
                isLandScape);
        //-- 以下参数仅仅针对自动登录过程的控制
        // 可选参数，自动登录过程中是否不展示任何UI，默认展示。
        intent.putExtra(ProtocolKeys.IS_AUTOLOGIN_NOUI, true);
        return intent;
    }

    // 调用接口
    protected void doSdkLogin(boolean isLandScape) {
        mIsInOffline = false;
        Intent intent = getLoginIntent(isLandScape);
        IDispatcherCallback callback = mLoginCallback;
//        if (getCheckBoxBoolean(R.id.isSupportOffline)) {
//            callback = mLoginCallbackSupportOffline;
//        }
        Matrix.execute(GetCurrentActivity(), intent, callback);
    }

    protected CPCallBackMgr.MatrixCallBack mSDKCallback = new CPCallBackMgr.MatrixCallBack() {
        @Override
        public void execute(Context context, int functionCode, String functionParams) {
            if (functionCode == ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT) {
                doSdkSwitchAccount(landScape);
            } else if (functionCode == ProtocolConfigs.FUNC_CODE_INITSUCCESS) {
                //这里返回成功之后才能调用SDK 其它接口
                //例如，登录接口必须在该callback回调成功后调用
                // ...
            }
        }

    };

    /**
     * 使用360SDK的切换帐号账号接口
     *
     * @param isLandScape 是否横屏显示登录界面
     */
    protected void doSdkSwitchAccount(boolean isLandScape) {
        Intent intent = getSwitchAccountIntent(isLandScape);
        IDispatcherCallback callback = mAccountSwitchCallback;
        Matrix.invokeActivity(GetCurrentActivity(), intent, callback);
    }

    /***
     * 生成调用360SDK切换帐号接口的Intent
     *
     * @param isLandScape 是否横屏
     * @return Intent
     */
    private Intent getSwitchAccountIntent(boolean isLandScape) {

        Intent intent = new Intent(GetCurrentActivity(), ContainerActivity.class);
        // 可选参数，是否在自动登录的过程中显示切换帐号按钮
        intent.putExtra(ProtocolKeys.IS_SHOW_AUTOLOGIN_SWITCH, true);

        // 必须参数，360SDK界面是否以横屏显示。
        intent.putExtra(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, isLandScape);

        // 必需参数，使用360SDK的切换帐号模块。
        intent.putExtra(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_SWITCH_ACCOUNT);

        return intent;
    }

    // 切换帐号的回调
    private IDispatcherCallback mAccountSwitchCallback = new IDispatcherCallback() {

        @Override
        public void onFinished(String data) {
            // press back
            if (isCancelLogin(data)) {
                return;
            }
            if (data != null) {
                // 显示一下登录结果
                Toast.makeText(GetCurrentActivity(), data, Toast.LENGTH_LONG).show();
            }
            // 解析access_token
            mAccessToken = parseAccessTokenFromLoginResult(data);

            if (!TextUtils.isEmpty(mAccessToken)) {
                // 需要去应用的服务器获取用access_token获取一下带qid的用户信息
                getUserInfo(mAccessToken);
            } else {
                Toast.makeText(GetCurrentActivity(), "get access_token failed!", Toast.LENGTH_LONG).show();
            }
        }
    };

    @Override
    public void OnDestory() {
        Matrix.destroy(GetCurrentActivity());
    }

    @Override
    public void OnAppplicationQuit(JSONObject json) {

        Bundle bundle = new Bundle();

        // 界面相关参数，360SDK界面是否以横屏显示。
        bundle.putBoolean(ProtocolKeys.IS_SCREEN_ORIENTATION_LANDSCAPE, landScape);

        // 可选参数，登录界面的背景图片路径，必须是本地图片路径
//        bundle.putString(ProtocolKeys.UI_BACKGROUND_PICTRUE, "");

        // 必需参数，使用360SDK的退出模块。
        bundle.putInt(ProtocolKeys.FUNCTION_CODE, ProtocolConfigs.FUNC_CODE_QUIT);

        Intent intent = new Intent(GetCurrentActivity(), ContainerActivity.class);
        intent.putExtras(bundle);

        Matrix.invokeActivity(GetCurrentActivity(), intent, mQuitCallback);

    }

    private IDispatcherCallback mQuitCallback = new IDispatcherCallback() {
        @Override
        public void onFinished(String data) {
            GetCurrentActivity().finish();
        }
    };

    @Override
    public void OnStart() {
        Matrix.onStart(GetCurrentActivity());
    }

    @Override
    public void OnResume() {
        Matrix.onResume(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        Matrix.onResume(GetCurrentActivity());
    }

    @Override
    public void OnStop() {
        Matrix.onStop(GetCurrentActivity());
    }

    @Override
    public void OnRestart() {
        Matrix.onRestart(GetCurrentActivity());
    }

    @Override
    public void OnActivityResult(int requestCode, int resultCode, Intent data) {
        Matrix.onActivityResult (GetCurrentActivity(),requestCode, resultCode, data);
    }

    @Override
    public void OnNewIntent(Intent intent) {
        Matrix.onNewIntent (GetCurrentActivity(),intent);
    }

    void SendPayCallBack(boolean success,String errorCode)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,sdkPayInfo.orderID);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.m360.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,sdkPayInfo.orderID);

            sdkPayInfo.ToJson(jo);
            sdkInterface.SdkInterface.SendMessage(jo);
        }
        catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }

    public synchronized String getAppName(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(
                    context.getPackageName(), 0);
            int labelRes = packageInfo.applicationInfo.labelRes;
            return context.getResources().getString(labelRes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
