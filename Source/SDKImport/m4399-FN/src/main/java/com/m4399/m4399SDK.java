package com.m4399;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;

import com.ssjj.fnsdk.core.SsjjFNListener;
import com.ssjj.fnsdk.core.SsjjFNParams;
import com.ssjj.fnsdk.core.SsjjFNSDK;
import com.ssjj.fnsdk.core.SsjjFNSpecial;
import com.ssjj.fnsdk.core.entity.SsjjFNProduct;
import com.ssjj.fnsdk.core.entity.SsjjFNTag;
import com.ssjj.fnsdk.core.entity.SsjjFNUser;
import com.ssjj.fnsdk.core.listener.SsjjFNExitDialogListener;
import com.ssjj.fnsdk.core.listener.SsjjFNExitListener;
import com.ssjj.fnsdk.core.listener.SsjjFNInitListener;
import com.ssjj.fnsdk.core.listener.SsjjFNPayListener;
import com.ssjj.fnsdk.core.listener.SsjjFNUserListener;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.concurrent.CountDownLatch;

import sdkInterface.IAD;
import sdkInterface.ILog;
import sdkInterface.ILogin;
import sdkInterface.IOther;
import sdkInterface.IPay;
import sdkInterface.IRealName;
import sdkInterface.IShare;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.RealNameStatus;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;
import sdkInterface.tool.ActResultRequest;

public class m4399SDK extends SDKBase implements ILogin,ILog,IAD,IPay,IOther
{
    PayInfo payInfo = new PayInfo();
    String AdUnitID = "";
    SsjjFNUser m_user;

    String uid = "用户Id";            //用户Id，必须是正式值，不能传空或0
    String userName = "用户名";       //用户名
    String roleId = "角色Id";         //角色Id
    String roleName = "角色名";       //角色名
    String roleLevel = "角色等级";    //角色等级
    String serverId = "当前服务器Id"; //当前服务器Id，必须是正式值，纯数字，不能传空
    String serverName = "服务器名称"; //服务器名称 

    String LoginResultCache ="";

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        SendLog("m4399SDK Init new version 002");

        // 参数中Activity.this指当前activity实例对象。
        // 方法中两个参数都不能为null。
        SsjjFNSDK.getInstance().init(GetCurrentActivity(), new SsjjFNInitListener() {
            @Override
            public void onSucceed() {
                // 初始化成功。
                // 注意：务必等初始化成功回调后，才能调用蜂鸟其他接口（如获取设备id、登录），否则SDK可能无法正常工作甚至闪退
                // 处理：调用更新接口，开始加载游戏
                SendLog("m4399SDK 初始化成功");

                SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "checkUpdate", null, new SsjjFNListener() {
                    @Override
                    public void onCallback(int code, String msg, SsjjFNParams data) {

                        SendLog("m4399SDK checkUpdate onCallback code " + code +" msg " + msg);
                        // ------------ 这个事件必须处理，要退出App ----------- //
                        if(code == 8) {
                            //取消强更（必接！！！）
                            // 处理：释放蜂鸟sdk资源，退出游戏
                            ExitGame();
                        // ------------ 下面事件可以不处理，正常走游戏逻辑（当然也可以根据需要处理）
                        } else if(code == 7) {
                            //取消非强更（非必接）
                        } else if(code == 10) {
                            //下载成功，更新成功（非必接）
                        } else if(code == 1) {
                            //没有新版本！（非必接）
                        } else if(code == -1){
                            //检查新版本失败!（非必接）
                        } else if(code == -6){
                            //下载过程中失败!（非必接）
                        } else if(code == 9) {
                            //下载过程失败后，再次下载。（非必接）
                        } else if(code == -7){
                            //下载成功后，apk解析失败!（非必接）
                        } else if(code == 3){
                            //弹出非强更页面（非必接）
                            //以下数据选用
                            //String url = data.get("url"); //更新apk包的下载url
                            //String desc = data.get("desc"); //更新apk包后台配置的更新描述
                            //String md5 = data.get("md5"); //更新apk包的文件md5
                            //String version = data.get("version"); //更新apk的版本号
                            //String size = data.get("size"); //更新apk的大小，单位为byte
                        } else if(code == 4){
                            //弹出强更页面（非必接）
                            //以下数据选用
                            //String url = data.get("url"); //更新apk包的下载url
                            //String desc = data.get("desc"); //更新apk包后台配置的更新描述
                            //String md5 = data.get("md5"); //更新apk包的文件md5
                            //String version = data.get("version"); //更新apk的版本号
                            //String size = data.get("size"); //更新apk的大小，单位为byte
                        } else if(code == 5){
                            //点击下载按钮，开始非强更下载（非必接）
                        } else if(code == 6){
                            //点击下载按钮，开始强更下载（非必接）
                        }
                    }
                });


                // 当用户调用login、switchUser和logout接口时的状态监听回调
                SsjjFNSDK.getInstance().setUserListener(new SsjjFNUserListener() {
                    @Override
                    public void onLoginSucceed(SsjjFNUser user) {
                        // SDK端登录成功。
                        // 处理：
                        // 大陆平台：1. 需将user.name、user.uid和user.ext这3个字段原样传给游戏服务器，在游戏服务端进行登录验证（请参考服务端登陆验证接口）。
                        // 海外平台：ext参数包含以下字段：suid，username，timestamp，suidSignStr。使用这些参数在游戏服务端进行登录验证   （请参考海外服务端登录验证文档）。
                        // 注意：
                        // 1. 这个user是临时的user，有些平台这里的name和uid的值会为空，请不要用这里的name或uid来登录游戏。要使用服务端登陆验证接口返回的uid来登录游戏。
                        // 2. user.ext 是个json字符串，研发不要读不要改，原样传给服务端即可。不同平台这些字段是不同的。通过ext只能请求登录验证一次，有些平台多次验证会失效

                        try {

                            m_user = user;

                            HttpGetTask task = new HttpGetTask();
                            task.user = user;
                            task.callback = new HttpCallback() {
                                @Override
                                public void HttpCallbackMethod(String result) {
                                    SendLog("onLoginSucceed result " + result);

                                    LoginResultCache = result;

                                    try {
                                        JSONObject json = new JSONObject(result);

                                        if(json.getInt("code") == 1)
                                        {
                                            LoginResult(true, user, "");


                                        }
                                        else
                                        {
                                            LoginResult(false, user, json.getString("msg"));
                                        }
                                    } catch (JSONException e) {
                                        e.printStackTrace();
                                    }
                                }
                            };

                            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.CUPCAKE) {
                                task.execute();
                            }

                        }catch (Exception e)
                        {
                            SendError("onLoginSucceed error " + e,e);
                        }
                    }
                    @Override
                    public void onLoginFailed(String msg) {
                        // 登录失败。
                        // 处理：
                        // 1. 游戏停在初始化完成页面（或选服页面），显示登录按钮。
                        // 2. 用户点击登录按钮，重新调用 登录接口 进行登录

                        LoginResult(false,null,msg);
                    }
                    @Override
                    public void onLoginCancel() {
                        // 登录取消。
                        // 处理：
                        // 1. 游戏停在初始化完成页面（或选服页面），显示登录按钮（跟登录失败处理一样）。
                        // 2. 用户点击登录按钮，游戏就重新调用 登录接口 进行登录
                        LoginResult(false,null,"onLoginCancel");
                    }
                    @Override
                    public void onSwitchUser(SsjjFNUser user) {
                        // 切换帐号成功，返回新user，相当于切换帐号且登录成功。（可能在游戏过程中或小助手里切换的帐号）
                        // 处理：
                        // 1. 跑到这里说明帐号已经切换成功，这个user是新帐号登录的user，游戏应切换到新的帐号，重新调用登录验证接口和登录完成日志，并走正常登录选服创角等流程
                        // 2. 登录验证完，游戏内更新帐号信息
                        // 注意：
                        // 1. 此回调可能会在进入游戏后调用，如游戏中点击小助手的“切换帐号”按钮。
                        // 2. 也可能是调用切换帐号接口后调用SsjjFNSDK.getInstance().switchUser(...)
                        // 3. 如果进入游戏后，游戏不支持切换帐号，请重启游戏（但直接重启体验不好，请弹出确认框提示“您已切换帐号，需要重启游戏”，点确认重启游戏）

                        SendLog("4399 onSwitchUser " + user.uid);

                        //ExitGame();

                        //2024 0807
                        //当检测到 sdk 登出时，向游戏发送信息，让游戏弹出重启提示，此处不再直接关掉游戏
                        CallBackLoginOut(LoginPlatform.m4399_FN.toString(),true,user.uid,"onSwitchUser");

                    }
                    @Override
                    public void onLogout() {
                        // 当前用户被成功注销。（可能在游戏过程中或小助手里点击了注销）
                        // 处理：
                        // 1. 帐号被注销后，游戏应清理帐号信息，退回登录界面，显示登录按钮，点击重新登录
                        // 2. 点击登录按钮重新调用登录接口
                        // 注意：
                        // 1. 此回调可能会在进入游戏后调用。如游戏中点击小助手的“注销帐号”按钮。
                        // 2. 如果进入游戏后，游戏不支持注销返回初始页面，请重启游戏（但直接重启体验不好，请弹出确认框提示“您已注销，需要重启游戏”，点确认重启游戏）
                        // 3. 重点：收到此回调务必终止进入游戏，回退到登录界面，或者退出游戏，否则审核可能有问题

                        SendLog("onLogout");

                        CallBackLoginOut(LoginPlatform.m4399_FN.toString(),true,m_user.uid,"onLogout");
                    }
                    @Override
                    public void onLogoutException(String msg) {
                        // 注销异常
                        // 处理：游戏可不处理

                        SendLog("onLogoutException");
                    }
                });
            }
            @Override
            public void onFailed(String msg) {
                // 初始化失败
                // 此时sdk可能不能正常工作。
                // 处理：
                // 法1. 停止加载游戏，显示初始化失败字样和“重新初始化”的按钮
                // 法2. 走正常游戏流程。但可能无法登陆。
                SendLog("m4399SDK 初始化失败 " + msg);
            }
        });
    }

    @Override
    public void LogLogin(JSONObject json) {

        SendLog("4399 LogLogin ");

        try {
            String typeKey = json.getString(SDKInterfaceDefine.Login_ParameterName_TypeKey);

            //前端自行与登录验证接口通讯
            SsjjFNSDK.getInstance().setOauthData(GetCurrentActivity(), LoginResultCache);


            SendLog("4399 LogLogin typeKey " + typeKey + " LoginResultCache " + LoginResultCache );

            SsjjFNSDK.getInstance().logLoginFinish(typeKey);
            SsjjFNSDK.getInstance().logCreateRole("role_1", "role_1", "1", "server_1");
            SsjjFNSDK.getInstance().logSelectServer("role_1", typeKey, "1");
            SsjjFNSDK.getInstance().logEnterGame("role_1", "role_1", "1", "1", "server_1");
            SsjjFNSDK.getInstance().logRoleLevel("2", "1");

        }catch (Exception e)
        {
            SendError("LogLogin error " + e);
        }
    }

    boolean isSwitching = false;
    public void switchUser()
    {
        if( SsjjFNSDK.getInstance().isSurportFunc(SsjjFNTag.FUNC_switchUser)) {
            SendLog("switchUser -> switchUser");
            // 切换帐号成功后，回调到onSwitchUser。
            // 注意：务必等SDK初始化完成回调后，才能调用此接口。否则将无法正常登录甚至闪退
            SsjjFNSDK.getInstance().switchUser(GetCurrentActivity());
        } else if(SsjjFNSDK.getInstance().isSurportFunc(SsjjFNTag.FUNC_logout)){
            SendLog("switchUser -> logout");
            // 如果支持注销，先注销，再登录进行切换。注销后，回调到onLogout。
            isSwitching = true;
            SsjjFNSDK.getInstance().logout(GetCurrentActivity());
        }
        else
        {
            SendLog("switchUser -> 没有支持的方法");
        }
    }

    public static boolean isSupportSwitchUser()
    {
        if( SsjjFNSDK.getInstance().isSurportFunc(SsjjFNTag.FUNC_switchUser)) {
            return true;
        } else if(SsjjFNSDK.getInstance().isSurportFunc(SsjjFNTag.FUNC_logout)){
            return true;
        }
        else
        {
            return false;
        }
    }

    void m4399LoginOut()
    {
        boolean result = SsjjFNSDK.getInstance().isSurportFunc(SsjjFNTag.FUNC_logout);
        if(result)
        {
            //注销接口
            SsjjFNSDK.getInstance().logout (GetCurrentActivity());
        }
    }

    interface HttpCallback
    {
        void HttpCallbackMethod(String result);
    }

    @TargetApi(Build.VERSION_CODES.CUPCAKE)
    private class HttpGetTask extends AsyncTask<Void, Void, String> {

        public SsjjFNUser user;

        HttpCallback callback;

        @Override
        protected String doInBackground(Void... params) {

            try {

                String encodedName = URLEncoder.encode(user.name, "UTF-8");
                String encodedUid = URLEncoder.encode(user.uid, "UTF-8");
                String encodedExt = URLEncoder.encode(user.ext, "UTF-8");

                String urlString = "http://fnapi.aiysm.com/sdk/api/login.php?name=" + encodedName + "&uid=" + encodedUid + "&ext=" + encodedExt;

                SendLog("Send URL " + urlString);

                URL url = new URL(urlString);
                HttpURLConnection con = (HttpURLConnection) url.openConnection();
                con.setRequestMethod("GET");

                int status = con.getResponseCode();
                if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
                    InputStream in = con.getInputStream();
                    BufferedReader reader = new BufferedReader(new InputStreamReader(in));
                    String line;
                    StringBuilder response = new StringBuilder();

                    while ((line = reader.readLine()) != null) {
                        response.append(line);
                    }

                    reader.close();
                    con.disconnect();

                    callback.HttpCallbackMethod(response.toString());

                    return response.toString();
                } else {
                    System.out.println("Request failed: " + con.getResponseMessage());
                }

                return "";
            }
            catch (Exception e)
            {
                SendError("HttpRequest error " + e,e);
                return "";
            }
        }
    }

    private void LoginResult(boolean success,SsjjFNUser user ,String errorString)
    {
        SendLog("login result  " + success);
        try {
            String typeKey = "";
            if(success && user != null)
            {
                String name = URLEncoder.encode(user.name, "UTF-8");
                String uid = URLEncoder.encode(user.uid, "UTF-8");
                String ext = URLEncoder.encode(user.ext, "UTF-8");

                typeKey = name + "|" + uid +"|" + ext;
            }
            SendLog( "send typeKey to Unity :  " + typeKey);
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnLogin);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.m4399_FN.toString());
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorString);
            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("HuaWei4 onLoginSuccess", e);
        }
    }


    @Override
    public void LoadAD(JSONObject json) {

        SendLog("4399 Load AD " + json);

        boolean isSupport = SsjjFNSDK.getInstance().isSurportFunc("fnadv_loadVideoAD"); // 先判断是否支持该方法
        if (isSupport) {
            SsjjFNParams data = new SsjjFNParams();
            data.put("AdUnitID", "102338314"); // 激励视频广告位id，非必传，根据业务场景来定
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "fnadv_loadVideoAD", data, new SsjjFNListener() {
                public void onCallback(int code, String msg, SsjjFNParams data) {
                    if (code == SsjjFNTag.CODE_SUCCEED) {
                        // 操作成功
                    } else {
                        // 操作失败或取消
                    }
                }
            });
        }
    }

    String m_ADTag;

    @Override
    public void PlayAD(JSONObject json) {

        SendLog("4399 PlayAD " + json);

        try {
            m_ADTag = json.getString(SDKInterfaceDefine.Tag);

            String AdUnitID = "28811";
            String AdPlacementId = "";
            String adUnitIdKey = "";

            boolean isSupport = SsjjFNSDK.getInstance().isSurportFunc("fnadv_showVideoAD"); // 先判断是否支持该方法
            if (isSupport) {
                SsjjFNParams data = new SsjjFNParams();

                if(json.has(SDKInterfaceDefine.Tag))
                {
                    AdUnitID = json.getString(SDKInterfaceDefine.Tag);
                    data.put("AdUnitID", AdUnitID); // 激励视频广告位id。非必传，根据业务场景来定
                }

                AdUnitID = "28811";

                if(json.has("AdPlacementId"))
                {
                    AdPlacementId = json.getString("AdPlacementId");
                    // 如果研发不想维护广告位id，可用指定的key来映射。映射关系需联系蜂鸟技术在蜂鸟后台配置
                    data.put("AdPlacementId", AdPlacementId); // 研发自定义的广告位key。非必传，根据业务场景来定
                }

                if(json.has("adUnitIdKey"))
                {
                    adUnitIdKey = json.getString("adUnitIdKey");
                    data.put("adUnitIdKey", adUnitIdKey); // （选传）广告展示位置id，根据运营给的传，没有可不传
                }

                SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "fnadv_showVideoAD", data, new SsjjFNListener() {
                    public void onCallback(int code, String msg, SsjjFNParams data) {
                        if (code == SsjjFNTag.CODE_SUCCEED) {
                            SendLog("4399 AD onCallback  播放视频完成 " + msg);
                            // 播放视频完成
                            // 发放奖励
                            AdRewardCallBack(ADType.Reward,ADResult.Show_Finished);
                        } else {
                            SendLog("4399 AD onCallback  视频播放失败 " + msg);
                            // 玩家没观看完视频，或视频播放失败，可通过msg查找原因
                            // 不做处理
                            AdRewardCallBack(ADType.Reward,ADResult.Show_Failed);
                        }
                    }
                });
            }
            else
            {
                SendLog("4399 PlayAD out support ad ");
                AdRewardCallBack(ADType.Reward,ADResult.Show_Failed);
            }

        } catch (JSONException e) {
            e.printStackTrace();
            AdRewardCallBack(ADType.Reward,ADResult.Show_Failed);
        }
    }

    void AdRewardCallBack(ADType type, ADResult result)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_AD);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.AD_FunctionName_OnAD);
            jo.put(SDKInterfaceDefine.AD_ParameterName_ADType, type);
            jo.put(SDKInterfaceDefine.AD_ParameterName_ADResult,result);
            jo.put(SDKInterfaceDefine.Tag,m_ADTag);

            CallBack(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }


    @Override
    public void CloseAD(JSONObject json)
    {

    }

    @Override
    public Boolean IsLoaded(JSONObject json)  {

        try {
            return isVideoLoadedSync();
        } catch (Exception e) {
            SendError("IsLoaded Error " + e);
            return false;
        }
    }

    public boolean isVideoLoadedSync() throws InterruptedException {
        boolean isSupport = SsjjFNSDK.getInstance().isSurportFunc("fnadv_hasLoadedVideo"); // 先判断是否支持该方法

        SendLog("isVideoLoadedSync fnadv_hasLoadedVideo " + isSupport);
        if (isSupport) {
            SsjjFNParams data = new SsjjFNParams();
            data.put("AdUnitID", "102338314"); // 激励视频广告位id。非必传，根据业务场景来定
            // 如果研发不想维护广告位id，可用指定的key来映射。映射关系需联系蜂鸟技术在蜂鸟后台配置
            // data.put("adUnitIdKey", "1"); // 研发自定义的广告位key。非必传，根据业务场景来定

            // 创建CountDownLatch，初始计数为1
            final CountDownLatch latch = new CountDownLatch(1);
            final boolean[] result = {false}; // 用于存储结果

            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "fnadv_hasLoadedVideo", data, new SsjjFNListener() {
                @Override
                public void onCallback(int code, String msg, SsjjFNParams data) {

                    SendLog("isVideoLoadedSync onCallback code " + code + " msg " + msg);
                    if (code == SsjjFNTag.CODE_SUCCEED) {
                        // 视频加载已完成
                        result[0] = true; // 设置为true表示视频加载完成
                    }
                    // 无论成功与否，释放latch让主线程继续执行
                    latch.countDown();
                }
            });

            // 等待回调完成
            latch.await();
            return result[0]; // 返回视频是否加载完成
        }
        return false; // 如果不支持，返回false
    }


    @Override
    public void Login(JSONObject json) {

        SendLog("4399 login");

        SsjjFNSDK.getInstance().login(GetCurrentActivity());
    }

    @Override
    public void LoginOut(JSONObject json) {

        SendLog("4399 LogLoginOut");
        // 改为切换账号
        switchUser();

        // m4399LoginOut();
    }



    @Override
    public void LogLoginOut(JSONObject json) {


    }

    @Override
    public void LogPay(JSONObject json) {

    }

    @Override
    public void LogPaySuccess(JSONObject json) {

    }

    @Override
    public void RewardVirtualCurrency(JSONObject json) {

    }

    @Override
    public void LogPurchaseVirtualCurrency(JSONObject json) {

    }

    @Override
    public void LogUseItem(JSONObject json) {

    }

    @Override
    public void LogEvent(JSONObject json) {

    }

    @Override
    public void LogError(JSONObject json) {

    }

    @Override
    public void Pay(JSONObject json) {

        try {
            payInfo = PayInfo.FromJson(json);
            String goodsID  = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            String playerID = json.getString(SDKInterfaceDefine.ParameterName_UserID);

            // 商品配置
            SsjjFNProduct info = new SsjjFNProduct();

            info.serverId ="1";
            info.productId = payInfo.goodsID;
            //uid 使用服务器传回的值
            //info.uid = payInfo.userID;
            info.uid = payInfo.tag;
            info.productName = payInfo.goodsName;
            info.productDesc = payInfo.goodsDescription;
            info.price = (int)payInfo.price +"";
            info.productCount = "1";
            info.callbackInfo = payInfo.userID+"|" + payInfo.goodsID +"|" + payInfo.internalOrderID + "|m4399_FN";

            // 充值接口
            SsjjFNSDK.getInstance().pay(GetCurrentActivity(), info, new SsjjFNPayListener() {
                @Override
                public void onSucceed() {
                    // 充值成功。但不要在这里发货！！！看说明
                    // 只是订单提交成功，不一定会马上到账
                    // 注意：充值成功后，有些平台不会回调到这里。请以服务端充值回调成功为准
                    // 处理：游戏自行处理
                    SendLog("订单成功");

                    SendPayCallBack(true,"");
                }
                @Override
                public void onFailed(String errorMsg) {
                    // 处理：游戏自行处理
                    SendLog("订单失败 " + errorMsg);

                    SendPayCallBack(false,errorMsg);
                }
                @Override
                public void onCancel() {
                    // 处理：游戏自行处理
                    SendLog("订单取消 ");

                    SendPayCallBack(false,"user cancel");
                }
            });


        } catch (Exception e) {
            SendError("Pay Error:" +e.toString(),e);
        }
    }


    void SendPayCallBack(boolean success,String errorCode) {
        try {
            JSONObject jo = new JSONObject();
            String goodsID = "";
            if(payInfo != null)
            {
                goodsID = payInfo.goodsID;
            }

            //2024 1031 不再信任前端SDK 返回的支付结果

            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, payInfo.goodsID);
            //2024 1031 不再信任前端SDK 返回的支付结果
            //jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, true);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, payInfo.orderID);
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, "m4399_FN");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, "");

            SendLog( "PayInfo is null " + (payInfo == null) + " jo is null " + (jo == null));

            if (payInfo == null) {
                payInfo = new PayInfo();
            }
            payInfo.ToJson(jo);

            SendLog( jo.toString());

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
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

    @Override
    public void GetGoodsInfo(JSONObject json) {
    }

    @Override
    public void ClearPurchase(JSONObject json) {

        try {
            String OrderID = json.getString(SDKInterfaceDefine.Pay_ParameterName_OrderID);

            // 设置参数
            SsjjFNParams params = new SsjjFNParams();
            params.add("orderId","[订单号]"); // 充值成功后返回的订单号
            params.add("uid",m_user.uid);
            // 调用接口
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "djConfirmOrder", params, new SsjjFNListener() {
                @Override
                public void onCallback(int code, String msg, SsjjFNParams data) {
                    if (code == SsjjFNTag.CODE_SUCCEED) {
                        // 成功
                        // 确认订单成功后, 游戏可以发货

                        SendLog("djConfirmOrder success " + code);
                    } else {
                        // 失败
                        SendLog("djConfirmOrder fail " + code +" msg " + msg);
                    }
                }
            });

        }
        catch (Exception e)
        {
            SendError("ClearPurchase error " + e,e);
        }
    }

    //region 生命周期回调
    @Override
    public void OnNewIntent(Intent intent) {
        super.OnNewIntent(intent);

        SendLog("m4399SDK OnNewIntent");

        SsjjFNSDK.getInstance().onNewIntent(intent);
    }

    @Override
    public void OnActivityResult(int requestCode, int resultCode, Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);

        SendLog("m4399SDK OnActivityResult requestCode " + requestCode + " resultCode " + resultCode + " data " + data);

        SsjjFNSDK.getInstance().onActivityResult(requestCode, resultCode, data);
    }

    @Override
    public void OnStart() {
        super.OnStart();

        SendLog("m4399SDK OnStart");

        SsjjFNSDK.getInstance().onStart();
    }

    @Override
    public void OnRestart() {
        super.OnRestart();

        SendLog("m4399SDK OnRestart");
        SsjjFNSDK.getInstance().onRestart();
    }

    @Override
    public void OnPause() {
        super.OnPause();

        SendLog("m4399SDK OnPause");
        SsjjFNSDK.getInstance().onPause();
    }

    @Override
    public void OnStop() {
        super.OnStop();

        SendLog("m4399SDK OnPause");

        SsjjFNSDK.getInstance().onStop();
    }

    @Override
    public void OnDestroy() {
        super.OnDestroy();

        SendLog("m4399SDK OnDestroy");

        SsjjFNSDK.getInstance().onDestroy();
    }

    @Override
    public void OnRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.OnRequestPermissionsResult(requestCode, permissions, grantResults);

        SendLog("m4399SDK OnRequestPermissionsResult requestCode " + requestCode );

        boolean res = SsjjFNSDK.getInstance().isSurportFunc("onRequestPermissionsResult");
        SendLog("m4399SDK OnRequestPermissionsResult isSurportFunc onRequestPermissionsResult " + res );

        if(res) {
            SsjjFNParams params = new SsjjFNParams();
            params.putObj("requestCode", requestCode);
            params.putObj("permissions", permissions);
            params.putObj("grantResults", grantResults);
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onRequestPermissionsResult", params, null);
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);


        boolean res = SsjjFNSDK.getInstance().isSurportFunc("onSaveInstanceState");
        SendLog("m4399SDK onSaveInstanceState  " + res);

        if(res) {
            SsjjFNParams params = new SsjjFNParams();
            params.putObj("bundle", outState);
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onSaveInstanceState", params, null);
        }
    }

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);

        boolean res = SsjjFNSDK.getInstance().isSurportFunc("onRestoreInstanceState");
        SendLog("m4399SDK onRestoreInstanceState  " + res);

        if(res) {
            SsjjFNParams params = new SsjjFNParams();
            params.putObj("bundle", savedInstanceState);
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onRestoreInstanceState", params, null);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);

        SendLog("m4399SDK onConfigurationChanged  " );

        SsjjFNParams params = new SsjjFNParams();
        params.putObj("configuration", newConfig);
        SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onConfigurationChanged", params, null);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();

        boolean res = SsjjFNSDK.getInstance().isSurportFunc("onAttachedToWindow");
        SendLog("m4399SDK onAttachedToWindow  " + res);

        if(res) {
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onAttachedToWindow", null, null);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);

        boolean res = SsjjFNSDK.getInstance().isSurportFunc("onWindowFocusChanged");
        SendLog("m4399SDK onWindowFocusChanged  " + res);

        if (res) {
            SsjjFNParams params = new SsjjFNParams();
            params.putObj("hasFocus", hasFocus);
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onWindowFocusChanged", params, null);
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();

        boolean res = SsjjFNSDK.getInstance().isSurportFunc("onBackPressed");
        SendLog("m4399SDK onBackPressed  " +res);

        if (res) {
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onBackPressed", null, null);
        }
    }

    @Override
    public void Other(JSONObject json)
    {
        try {

            SendLog("4399 Other " + json);
            String functionName = json.getString(SDKInterfaceDefine.FunctionName);

            if(functionName .equals("setOauthData"))
            {
                String key = json.getString(SDKInterfaceDefine.ParameterName_Content);
                SsjjFNSDK.getInstance().setOauthData(GetCurrentActivity(), key);
            }

            if(functionName.equals( "toggle"))
            {
                Toggle(json);
            }

            if(functionName.equals("openWebView"))
            {
                OpenWebView(json);
            }

            if(functionName.equals("showActivityPage"))
            {
                showActivityPage(json);
            }

            if(functionName.equals("ReportViolation"))
            {
                reportViolation(json);
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void Toggle(JSONObject json) throws JSONException {

        /** 4.  用户勾选“隐私政策”和“用户协议”入口按钮后调用此接口
            * isSelect 字段说明 勾选传 "true", 不勾选传 "false"
            * */

        SendLog("4399 Toggle " + json);

        String isSelect = json.getString("isSelect");

        SsjjFNParams params = new SsjjFNParams();
        params.put("isSelect", isSelect);
        SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "saveSelect", params,null);

    }

    public void OpenWebView(JSONObject json) throws JSONException {

        SendLog("4399 OpenWebView " + json);

        String webType = json.getString("webType");

        // 1. 判断是否支持“蜂鸟PopWeb”插件。支持了才有下面打开协议和客服的功能。如不支持请联系蜂鸟技术配置PopWeb插件
        boolean isSupportWeb = SsjjFNSDK.getInstance().isSurportFunc("showWebView");
        // 2. 单独判断是否支持那种webType类型，可调用如下方法：
        // 2.1 是否支持网页版客服
        boolean isSurportKefu = SsjjFNSDK.getInstance().isSurportFunc("showWebView_webType_kefu");
        // 2.2是否支持隐私政策
        boolean isSurportYinsi = SsjjFNSDK.getInstance().isSurportFunc("showWebView_webType_yinsi");
        // 2.3是否支持用户协议
        boolean isSurportUser = SsjjFNSDK.getInstance().isSurportFunc("showWebView_webType_user");

        SendLog("4399 OpenWebView isSupportWeb " + isSupportWeb
                +" isSurportKefu " + isSurportKefu
                + " isSurportYinsi " + isSurportYinsi
                + " isSurportUser " + isSurportUser);

        // 3.“隐私政策”和“用户协议”入口按钮是否需要默认勾选
        //   此接口返回值根据后台运营配置的策略返回，默认返回需要勾选状态
        SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "isDefaultSelect", null, new SsjjFNListener() {
            @Override
            public void onCallback(int code, String msg, SsjjFNParams data) {
                if (code == SsjjFNTag.CODE_SUCCEED) {
                    // 1、需要勾选，设置成勾选状态
                    // 2、设置成功后调用saveSelect接口
                    SendLog("4399 需要勾选，设置成勾选状态");
                } else {
                    // 1、不需要勾选，设置成不勾选状态
                    // 2、设置成功后调用saveSelect接口
                    SendLog("4399 不需要勾选，设置成不勾选状态");
                }
            }
        });

        // 5. 显示页面
        SsjjFNParams params = new SsjjFNParams();
        params.put("webType", webType); // 打开页面类型（必传），如yishi是表示隐私政策弹窗。取值范围请见后面
        params.put("fullScreen", "true");// 打开页面是否全屏（可不传）。false:不全屏,true:全屏

        if(webType.equals("browser") || webType.equals("url"))
        {
            // 如果是1,2,3类型可不传，如果是4类型要传入打开的url, 如果类型传空或者没传要传入url。注意url必须以http或https开头
            params.put("webUrl", json.getString("webUrl"));
        }

        //activity为游戏的主Activity,也就是集成UnityActivity的那个Activity
        SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "showWebView", params, null);

        // 附webType取值范围：
        // 1、yinsi：隐私政策
        // 2、user：用户协议
        // 3、kefu：客服webview
        // 4、browser：跳转外部浏览器打开, 必须传webUrl
        // 5、url: webview打开传入的url,这种类型webUrl必须传入

        SendLog("4399 OpenWebView finish");
    }

    public void showActivityPage(JSONObject json) throws JSONException
    {
        SendLog("4399 showActivityPage " + json);

        String url = json.getString("url");

        //游戏要展示活动页前，先调用isSurportFunc测试是否支持
        //当result为true时表示支持，此时才展示游戏内视频活动页的功能入口按钮
        boolean result = SsjjFNSDK.getInstance().isSurportFunc("showWebView");
        //打开游戏内视频活动页接口
        SsjjFNParams params = new SsjjFNParams();
        params.put("webType","activity"); //（必传）打开webivew类型
        params.put("webUrl",url); //（必传）打开活动地址的url。url必须以http或https开头
        params.put("orientation","1");//(可不传)，竖屏：1，横屏：0。默认打开为竖屏
        SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "showWebView", params, new SsjjFNListener() {
            @Override
            public void onCallback(int code, String msg, SsjjFNParams data) {
                // data为null，这里data没有数据返回
                if(code == SsjjFNTag.CODE_SUCCEED) {
                    // 打开活动页成功
                    SendLog("4399 打开活动页成功");
                } else if(code == SsjjFNTag.CODE_FAILED) {
                    // 打开活动页失败
                    SendLog("4399 打开活动页失败");
                }
            }
        });
    }

    public void reportViolation(JSONObject json) throws JSONException
    {
        SendLog("4399 reportViolation ");

        String uid = m_user.uid;
        String userName = json.getString(SDKInterfaceDefine.Login_ParameterName_NickName);
        String contact = "";

        if(json.has("Contact"))
        {
            contact = json.getString("Contact");
        }

        if(SsjjFNSpecial.getInstance().isSurportApi("4399hz_reportViolation")) {
            SsjjFNParams params = new SsjjFNParams();
            // 下面例子中的value为key的含义，请修改为真实值；
            // 各字段必须且名称固定如下，若确实没有可留空，但不能不传！
            params.put("g_uid", uid);
            params.put("g_tid", "");
            params.put("g_sid", "");
            params.put("g_rid", "");
            params.put("g_content", "");
            params.put("g_role", userName);
            params.put("g_gname", "公会名");
            params.put("g_cname", "");
            params.put("contact", contact);
            SsjjFNSpecial.getInstance().invoke(GetCurrentActivity(),"4399hz_reportViolation", params, new SsjjFNListener() {
                @Override
                public void onCallback(int code, String msg, SsjjFNParams data) {
                    if (code == SsjjFNTag.CODE_SUCCEED) {
                        // 调用举报窗口成功
                        SendLog("4399 调用举报窗口成功");
                    }
                }
            });
        }
    }

    @Override
    public String[] GetFunctionName() {
        return new String[]{"setOauthData","toggle","openWebView","showActivityPage","ReportViolation"};
    }

    @Override
    public boolean OnAppplicationQuit() {

        SendLog("m4399 OnAppplicationQuit ");

        SsjjFNSDK.getInstance().showPlatformExitDialog(new SsjjFNExitDialogListener() {
            @Override
            public void onExit() {
                // 点击对话框的“确定退出”
                // 调用"释放SDK资源接口"并退出游戏
                ExitGame();
            }
            @Override
            public void onCancel() {
                // 点击对话框的“取消退出”，继续游戏
            }
        });

        return true;
    }

    void ExitGame()
    {
        SsjjFNSDK.getInstance().exit(new SsjjFNExitListener() {
            @Override
            public void onCompleted() {
                // SDK释放资源完成，游戏可以退出
                // 处理：正式退出游戏
                // finish(); // Demo 正常退出 Activity

                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

                android.os.Process.killProcess(android.os.Process.myPid());
            }
        });
    }

    //endregion
}
