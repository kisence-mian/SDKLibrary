package com.okjoy_2;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import android.webkit.WebView;
import android.widget.Toast;

import com.bun.miitmdid.core.JLibrary;
import com.okjoy.okjoysdk.api.api.OKJOYSDK;
import com.okjoy.okjoysdk.api.listener.OkJoySdkArchivesGetFileListener;
import com.okjoy.okjoysdk.api.listener.OkJoySdkArchivesUploadFileListener;
import com.okjoy.okjoysdk.api.listener.OkJoySdkInitListener;
import com.okjoy.okjoysdk.api.listener.OkJoySdkLoginListener;
import com.okjoy.okjoysdk.api.listener.OkJoySdkLogoutListener;
import com.okjoy.okjoysdk.api.listener.OkJoySdkOpenUserCenterListener;
import com.okjoy.okjoysdk.api.listener.OkJoySdkPayListener;
import com.okjoy.okjoysdk.api.listener.OkJoySdkSubmitRoleListener;
import com.okjoy.okjoysdk.api.model.request.OkJoySdkInitModel;
import com.okjoy.okjoysdk.api.model.request.OkJoySdkPayModel;
import com.okjoy.okjoysdk.api.model.request.OkJoySdkRoleModel;
import com.okjoy.okjoysdk.api.model.response.OkJoySdkArchivesCallBackModel;
import com.okjoy.okjoysdk.api.model.response.OkJoySdkInitCallBackModel;
import com.okjoy.okjoysdk.api.model.response.OkJoySdkLoginCallBackModel;
import com.okjoy.okjoysdk.api.model.response.OkJoySdkLogoutCallBackModel;
import com.okjoy.okjoysdk.api.model.response.OkJoySdkOpenUserCenterCallBackModel;
import com.okjoy.okjoysdk.api.model.response.OkJoySdkPayCallBackModel;
import com.okjoy.okjoysdk.api.model.response.OkJoySdkSubmitRoleCallBackModel;
import com.okjoy.okjoysdk.app.OkJoySdkApplication;
import com.okjoy.okjoysdk.topon.listener.OkJoySdkInterstitialAdListener;
import com.okjoy.okjoysdk.topon.listener.OkJoySdkRewardAdListener;
import com.okjoy.okjoysdk.topon.model.OkJoyAdInfoModel;
import com.qiyukf.nimlib.sdk.StatusBarNotificationConfig;
import com.qiyukf.unicorn.api.ImageLoaderListener;
import com.qiyukf.unicorn.api.Unicorn;
import com.qiyukf.unicorn.api.UnicornImageLoader;
import com.qiyukf.unicorn.api.YSFOptions;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import androidx.annotation.Nullable;
import sdkInterface.IAD;
import sdkInterface.IOther;
import sdkInterface.IPay;
import sdkInterface.IRealName;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.application.MainApplication;
import sdkInterface.define.ADType;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.RealNameStatus;
import sdkInterface.module.PayInfo;

public class OkjoySDK extends SDKBase implements ILogin, IPay, IAD, IOther, IRealName {

    final String ADKey = "ADKey";
    final String ADKeySplit = "->"; //分割 ADKey 所使用的分隔符
    PayInfo m_PayInfo = new PayInfo();
    private static Map<String, String> adKeys = new HashMap<String, String>(); //广告键值对，来自于 ADKey

    String m_userID;
    String m_userName;

    @Override
    public void OnApplicationCreate() {
        SendLog("OkjoySDK OnApplicationCreate Build.VERSION.SDK_INT " + Build.VERSION.SDK_INT);
//        OkJoySdkApplication.mAppContext = GetCurrentActivity().getApplicationContext();
        if (Build.VERSION.SDK_INT >= 28)
        {
            String processName = Application.getProcessName();
            if (!MainApplication.instance.getPackageName().equals(processName)) {
                WebView.setDataDirectorySuffix(processName);
            }
        }

        if (Unicorn.isInit()){
            Log.d("Unity","七鱼客服已初始化，无需重复初始化");
            return;
        }
        else
        {
            Log.d("Unity","进行七鱼客服初始化");

            YSFOptions options = new YSFOptions();
            options.statusBarNotificationConfig = new StatusBarNotificationConfig();
            Unicorn.init(MainApplication.instance, "2bd1ad7f34d5baab663386f76e8c63e3", options, new UnicornImageLoader() {
                @Nullable
                @Override
                public Bitmap loadImageSync(String s, int i, int i1) {
                    return null;
                }

                @Override
                public void loadImage(String s, int i, int i1, ImageLoaderListener imageLoaderListener) {

                }
            });

            Log.d("Unity","七鱼客服初始化完成");
        }
    }

    @Override
    public void AttachBaseContext(Context base) {
        SendLog("OkjoySDK AttachBaseContext");
        try
        {
            JLibrary.InitEntry(base);
        }
        catch (Exception e)
        {
            SendError("OkjoySDK AttachBaseContext " + e.toString(),e);
        }
    }

    @Override
    public void OnCreate() {
        super.OnCreate();

        SendLog("OkjoySDK OnCreate " + GetCurrentActivity());

//        OKJOYSDK.getInstance().onCreate(GetCurrentActivity());

        OKJOYSDK.getInstance().setLogOpen(SdkInterface.IsDebug());
        sdk_init(SdkInterface.IsDebug());
        sdk_listener();

        InitADKeys();
    }

    // SDK初始化接口
    private void sdk_init(Boolean isDebug){
        OkJoySdkInitModel initModel = new OkJoySdkInitModel();
        // 调试时设置为 true
        initModel.setDebug(isDebug);
        // 调试时设置为 true
        initModel.setAdvDebug(isDebug);
        OKJOYSDK.getInstance().init(GetCurrentActivity(), initModel);

//        OKJOYSDK.getInstance().onCreate(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        OKJOYSDK.getInstance().onPause(GetCurrentActivity());
    }

    @Override
    public void OnStart() {
        super.OnStart();

        OKJOYSDK.getInstance().onStart(GetCurrentActivity());
    }

    @Override
    public void OnRestart() {
        super.OnRestart();

        OKJOYSDK.getInstance().onRestart(GetCurrentActivity());

    }

    @Override
    public void OnResume() {
        super.OnResume();

        OKJOYSDK.getInstance().onResume(GetCurrentActivity());

    }

    @Override
    public void OnStop() {
        super.OnStop();

        OKJOYSDK.getInstance().onStop(GetCurrentActivity());
    }

    @Override
    public void OnDestroy() {
        super.OnDestroy();
        OKJOYSDK.getInstance().onDestroy(GetCurrentActivity());
    }

    @Override
    public void LoadAD(JSONObject json) {

    }


    //初始化广告键值对
    private void InitADKeys() {
        try {
            String keyString = GetProperties().getProperty(ADKey);

            SendLog( "InitOkJoyAD keyString " + keyString);

            SendLog("keyString: "+ keyString);
            String[] keySplit = keyString.split("\\|");
            for (int i = 0; (i) < keySplit.length; i++) {
                SendLog("InitADKeys keySplit : "+ keySplit[i]);
                if (!keySplit[i].isEmpty()) {
                    String[] key_value = keySplit[i].split(ADKeySplit);
                    SendLog( "InitADKeys ready : " + key_value[0] + "=" + key_value[1]);
                    if (!adKeys.containsKey(key_value[0])) {
                        SendLog( "InitADKeys: " + key_value[0] + "=" + key_value[1]);
                        adKeys.put(key_value[0], key_value[1]);
                    }
                }

            }
            SendLog( "InitADKeys success" + adKeys.size());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void PlayAD(JSONObject json) {
        SendLog("OKJOY_2 PlayAD --->>-->> ");
        try {
            String adType = json.getString(SDKInterfaceDefine.AD_ParameterName_ADType);
            String adTag = json.getString(SDKInterfaceDefine.Tag);
            String ADID = GetADKeyByTag(adTag);

            SendLog("OKJOY_2 PlayAD ADID " + GetADKeyByTag(adTag) + " adType " + adType);

            switch (adType) {
                case SDKInterfaceDefine.AD_ADTypeEnum_Reward: {
                    OKJOYSDK.getInstance().showRewardAd(GetCurrentActivity(), ADID);
                }
                break;
                case SDKInterfaceDefine.AD_ADTypeEnum_Interstitial: {
                    OKJOYSDK.getInstance().showInterstitialAd(GetCurrentActivity(), ADID);
                }
                break;
            }

        } catch (JSONException e) {
            SendError("OKJOY PlayAD " + e.toString(),e);
        }
    }

    //根据tag获取广告key
    private String GetADKeyByTag(String tag) {
        if (adKeys.containsKey(tag)) {
            return adKeys.get(tag);
        }
        SendLog("can not get ADKeyByTag:" + tag);
        return "";
    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {

        return true;
    }

    @Override
    public void Login(JSONObject json) {
        SendLog("OKJOY_2 LogLogin");
        OKJOYSDK.getInstance().login(GetCurrentActivity());
    }

    @Override
    public void LoginOut(JSONObject json) {
        SendLog("OKJOY_2 LogLoginOut");
        OKJOYSDK.getInstance().logout(GetCurrentActivity());
    }

    void UploadGameRecord(JSONObject json) {
        try {
            // 需要上传的游戏存档的完整文件路径（注意是文件路径）
            String filePath = json.getString(SDKInterfaceDefine.Other_ParameterName_RecordPath);
            // 上传的文件命名，可不传；如果不传，则默认为文件路径的MD5值
            String fileName = json.getString(SDKInterfaceDefine.Other_ParameterName_RecordName);
            OKJOYSDK.getInstance().archivesUpLoadFile(GetCurrentActivity(), filePath, fileName);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void Other(JSONObject json) {
        try {
            String funcName = json.getString(SDKInterfaceDefine.FunctionName);

            switch (funcName) {
                case SDKInterfaceDefine.Other_FunctionName_OpenGameCenter: {
                    OKJOYSDK.getInstance().openUserCenter(GetCurrentActivity());
                }
                break;

                case SDKInterfaceDefine.Other_FunctionName_UploadGameRecord:{
                    UploadGameRecord(json);
                }break;
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String[] GetFunctionName() {
        String [] funcNames = new String []{
            SDKInterfaceDefine.Other_FunctionName_OpenGameCenter};
        return funcNames;
    }

    @Override
    public void Pay(JSONObject json) {

        SendLog("OKJOY_2 Pay");
        m_PayInfo = PayInfo.FromJson(json);
        // 模拟游戏订单号
        String gameOrderId = "OKJoy_" + m_PayInfo.userID + "_"+ System.currentTimeMillis() ;

        OkJoySdkPayModel payModel = new OkJoySdkPayModel();
        payModel.setProductId(m_PayInfo.goodsID); // 商品id（必传）
        payModel.setOrderId(gameOrderId);      // 游戏订单号（必传）
        payModel.setChannel("1");              // 渠道号，默认填1（必传）
        payModel.setExtraInfo("1");            // 透传信息（必传）
        payModel.setProductName(m_PayInfo.goodsName);    // 商品名称
        payModel.setProductDesc(m_PayInfo.goodsDescription);    // 商品描述
        payModel.setRoleId(m_PayInfo.userID);               // 角色id（必传）
        payModel.setRoleName(m_userName);         // 角色名（必传）
        payModel.setRoleLevel("1");            // 角色等级（必传）
        payModel.setServerId("1");             // 区服id（必传）
        payModel.setServerName("区服1");       // 区服名（必传）
        payModel.setVipLevel("0");             // 角色VIP等级
        payModel.setPower("0");                // 角色战斗力
        payModel.setBalance("0");              // 角色金币余额
        payModel.setCurrency("0");             // 角色元宝/钻石余额
        OKJOYSDK.getInstance().pay(GetCurrentActivity(), m_userID, payModel);
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

    @Override
    public RealNameStatus GetRealNameType() {
        return null;
    }

    @Override
    public boolean IsAdult() {
        return false;
    }

    @Override
    public void OnLogin(JSONObject json) {

        SendLog("OKJOY OnLogin");
        sdk_login();
    }

    @Override
    public void OnLogout() {

    }

    @Override
    public void StartRealNameAttestation() {

    }

    @Override
    public int GetTodayOnlineTime() {
        return 0;
    }

    @Override
    public void CheckPayLimit(JSONObject json) {

    }

    @Override
    public void LogPayAmount(JSONObject json) {

    }

    // SDK角色信息接口
    private void sdk_submitRoleId(OkJoySdkLoginCallBackModel model){
        String createTime = "" + System.currentTimeMillis();

        OkJoySdkRoleModel roleModel = new OkJoySdkRoleModel();
        roleModel.setScene("create");       // 场景：create创建  login登录 （必传）
        roleModel.setRoleId("1");           // 角色id（必传）
        roleModel.setRoleName(model.userName);     // 角色名（必传）
        roleModel.setRoleLevel("1");        // 角色等级（必传）
        roleModel.setServerId("1");         // 区服id（必传）
        roleModel.setServerName("区服名");   // 区服名
        roleModel.setVipLevel("0");         // 角色VIP等级（必传）
        roleModel.setPower("0");            // 角色战斗力
        roleModel.setCreateTime(createTime);// 角色创建时间
        roleModel.setBalance("0");          // 角色金币余额
        roleModel.setCurrency("0");         // 角色元宝/钻石余额
        OKJOYSDK.getInstance().submitRoleInfo(GetCurrentActivity(), model.userId, roleModel);
    }


    //返回登陆结果
    private void LoginResult(boolean success,OkJoySdkLoginCallBackModel okJoyModel)
    {
        String errorString = okJoyModel.getMessage();
        SendLog("login result  " + success);
        try {
            String typeKey = "";
            if(success && okJoyModel != null)
            {
                typeKey = okJoyModel.getUserId()+"|" +  okJoyModel.getTime()+"|" + okJoyModel.vsign;//loginInfo.getUserCode() + "|" + loginInfo.getLoginToken();
            }
            SendLog( "send typeKey to Unity :  " + typeKey);
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnLogin);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, "OKJOY_2");
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorString);
            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("HuaWei4 onLoginSuccess", e);
        }
    }

    // SDK登录接口
    private void sdk_login(){
        OKJOYSDK.getInstance().login(GetCurrentActivity());
    }

    // 接口监听
    private void sdk_listener(){
        // 初始化监听
        OKJOYSDK.getInstance().setInitListener(new OkJoySdkInitListener() {
            @Override
            public void onSuccess(OkJoySdkInitCallBackModel model) {
                SendLog("OKJOY SDK init success");
                Toast.makeText(GetCurrentActivity(), "SDK 初始化成功", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onFailure(OkJoySdkInitCallBackModel model) {
                SendLog("OKJOY SDK init failure");
                Toast.makeText(GetCurrentActivity(), model.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });

        // 登录监听
        OKJOYSDK.getInstance().setLoginListener(new OkJoySdkLoginListener() {
            @Override
            public void onSuccess(OkJoySdkLoginCallBackModel model) {
                //userId = model.getUserId();
                SendLog("登录成功");
                SendLog("userId = " + model.getUserId());
                SendLog("userName = " + model.getUserName());
                SendLog("vsign = " + model.getVsign());
                SendLog("time = " + model.getTime());

                m_userID = model.getUserId();
                m_userName =  model.getUserName();

                Toast.makeText(GetCurrentActivity(), "登录成功", Toast.LENGTH_SHORT).show();

                sdk_submitRoleId(model);
                LoginResult(true,model);
            }

            @Override
            public void onFailure(OkJoySdkLoginCallBackModel model) {
                SendLog("登录失败：" + model.getMessage());
                Toast.makeText(GetCurrentActivity(), model.getMessage(), Toast.LENGTH_SHORT).show();

                LoginResult(false,model);
            }
        });

        // 注销登录监听
        OKJOYSDK.getInstance().setLogoutListener(new OkJoySdkLogoutListener() {
            @Override
            public void onSuccess(OkJoySdkLogoutCallBackModel model) {
                SendLog("SDK注销登录成功");
                Toast.makeText(GetCurrentActivity(),"注销成功",Toast.LENGTH_SHORT).show();
                // 游戏中在此处回到游戏开始界面：

                // 再重新调用SDK登录接口：
                sdk_login();
            }

            @Override
            public void onFailure(OkJoySdkLogoutCallBackModel model) {
                SendLog("SDK注销登录失败："+model.getMessage());
                Toast.makeText(GetCurrentActivity(), model.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });

        // 角色信息提交监听
        OKJOYSDK.getInstance().setSubmitRoleListener(new OkJoySdkSubmitRoleListener() {
            @Override
            public void onSuccess(OkJoySdkSubmitRoleCallBackModel model) {
                SendLog("角色信息提交成功");
                Toast.makeText(GetCurrentActivity(),"角色信息提交成功", Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onFailure(OkJoySdkSubmitRoleCallBackModel model) {
                SendLog("角色信息提交失败：" + model.getMessage());
                Toast.makeText(GetCurrentActivity(), model.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });

        // 支付监听
        OKJOYSDK.getInstance().setPayListener(new OkJoySdkPayListener() {
            @Override
            public void onSuccess(OkJoySdkPayCallBackModel model) {
                SendLog("支付成功，此处回调只作为参考，发货依据以服务端回调为准");
                SendLog("订单号：" + model.getOrderId());
            }

            @Override
            public void onFailure(OkJoySdkPayCallBackModel model) {
                SendLog("支付失败：" + model.getMessage());
                SendLog("订单号：" + model.getOrderId());

            }
        });

        // 打开个人中心监听
        OKJOYSDK.getInstance().setOpenUserCenterListener(new OkJoySdkOpenUserCenterListener() {
            @Override
            public void onSuccess(OkJoySdkOpenUserCenterCallBackModel model) {
                SendLog("个人中心打开成功");
            }

            @Override
            public void onFailure(OkJoySdkOpenUserCenterCallBackModel model) {
                SendLog("个人中心打开失败：" + model.getMessage());
                Toast.makeText(GetCurrentActivity(), model.getMessage(), Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onClosed(OkJoySdkOpenUserCenterCallBackModel model) {
                SendLog("个人中心已关闭");
            }
        });

        // 奖励广告播放监听
        OKJOYSDK.getInstance().setRewardAdListener(new OkJoySdkRewardAdListener() {
            @Override
            public void onRewardedAdPlayStart(OkJoyAdInfoModel model) {
                SendLog("激励广告开始播放");
            }

            @Override
            public void onRewardedAdPlayEnd(OkJoyAdInfoModel model) {
                SendLog("激励广告结束播放");
            }

            @Override
            public void onRewardedAdPlayFailed(OkJoyAdInfoModel model) {
                SendLog("激励广告播放失败："+model.getErrorMsg());
                String errorMsg = model.getErrorMsg();
                Toast.makeText(GetCurrentActivity(), errorMsg, Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onRewardedAdPlayClicked(OkJoyAdInfoModel model) {
                SendLog("激励广告被点击");
            }

            @Override
            public void onReward(OkJoyAdInfoModel model) {
                SendLog("激励广告激励回调");
            }

            @Override
            public void onRewardedAdClosed(OkJoyAdInfoModel model) {
                SendLog("激励广告被关闭");
            }
        });

        // 插屏广告播放监听
        OKJOYSDK.getInstance().setInterstitialAdListener(new OkJoySdkInterstitialAdListener() {
            @Override
            public void onInterstitialAdPlayStart(OkJoyAdInfoModel model) {
                SendLog("插屏广告开始播放");
            }

            @Override
            public void onInterstitialAdPlayEnd(OkJoyAdInfoModel var1) {
                SendLog("插屏广告结束播放");
            }

            @Override
            public void onInterstitialAdPlayFailed(OkJoyAdInfoModel model) {
                SendLog("插屏广告播放失败");

                String errorMsg = model.getErrorMsg();
                Toast.makeText(GetCurrentActivity(), errorMsg, Toast.LENGTH_SHORT).show();
            }

            @Override
            public void onInterstitialAdShow(OkJoyAdInfoModel model) {
                SendLog("插屏广告展示");
            }

            @Override
            public void onInterstitialAdClicked(OkJoyAdInfoModel model) {
                SendLog("插屏广告被点击了");
            }

            @Override
            public void onInterstitialAdClose(OkJoyAdInfoModel model) {
                SendLog("插屏广告被关闭");
            }
        });

        // 游戏存档：上传文件监听
        OKJOYSDK.getInstance().setArchivesUploadFileListener(new OkJoySdkArchivesUploadFileListener() {
            @Override
            public void onSuccess(OkJoySdkArchivesCallBackModel model) {
                // 上传游戏存档文件成功
                SendLog(model.getMessage());
            }

            @Override
            public void onFailure(OkJoySdkArchivesCallBackModel model) {
                // 上传游戏存档文件失败
                SendLog(model.getMessage());
            }
        });

        OKJOYSDK.getInstance().setArchivesGetFileListener(new OkJoySdkArchivesGetFileListener() {
            @Override
            public void onSuccess(OkJoySdkArchivesCallBackModel model) {
                // 获取游戏存档成功
                SendLog(model.getMessage());
                SendLog("存档下载地址："+model.getAddress());
                SendLog("本地存档文件路径" + model.getFilePath());
                // 如果 needDownload 为 false，需要自行根据下载地址进行文件下载
                // ...
            }

            @Override
            public void onFailure(OkJoySdkArchivesCallBackModel model) {
                // 获取游戏存档失败
                SendLog(model.getMessage());
            }
        });
    }
}
