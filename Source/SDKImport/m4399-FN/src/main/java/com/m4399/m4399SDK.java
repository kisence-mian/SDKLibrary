package com.m4399;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Bundle;

import com.ssjj.fnsdk.core.SsjjFNListener;
import com.ssjj.fnsdk.core.SsjjFNParams;
import com.ssjj.fnsdk.core.SsjjFNSDK;
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

import sdkInterface.IAD;
import sdkInterface.ILog;
import sdkInterface.ILogin;
import sdkInterface.IOther;
import sdkInterface.IPay;
import sdkInterface.IRealName;
import sdkInterface.IShare;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.RealNameStatus;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;
import sdkInterface.tool.ActResultRequest;

public class m4399SDK extends SDKBase implements ILogin, IPay, IOther
{
    PayInfo payInfo = new PayInfo();

    String uid = "用户Id";            //用户Id，必须是正式值，不能传空或0
    String userName = "用户名";       //用户名
    String roleId = "角色Id";         //角色Id
    String roleName = "角色名";       //角色名
    String roleLevel = "角色等级";    //角色等级
    String serverId = "当前服务器Id"; //当前服务器Id，必须是正式值，纯数字，不能传空
    String serverName = "服务器名称"; //服务器名称

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        SendLog("m4399SDK Init ");

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

                    HttpGetTask task = new HttpGetTask();
                    task.user = user;
                    task.callback = new HttpCallback() {
                        @Override
                        public void HttpCallbackMethod(String result) {
                            SendLog("onLoginSucceed result " + result);

                            try {
                                JSONObject json = new JSONObject(result);

                                if(json.getInt("code") == 1)
                                {
                                    LoginResult(true, user, "");

                                    //前端自行与登录验证接口通讯
                                    SsjjFNSDK.getInstance().setOauthData(GetCurrentActivity(), result);

                                    SsjjFNSDK.getInstance().logLoginFinish(user.uid);
                                    SsjjFNSDK.getInstance().logCreateRole("role_1", "role_1", "1", "server_1");
                                    SsjjFNSDK.getInstance().logSelectServer("role_1", user.uid, "1");
                                    SsjjFNSDK.getInstance().logEnterGame("role_1", "role_1", "1", "1", "server_1");
                                    SsjjFNSDK.getInstance().logRoleLevel("2", "1");
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

                    task.execute();

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

                SendLog("onSwitchUser");

                ExitGame();
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

                ExitGame();
            }
            @Override
            public void onLogoutException(String msg) {
                // 注销异常
                // 处理：游戏可不处理

                SendLog("onLogoutException");
            }
        });
    }

    interface HttpCallback
    {
        void HttpCallbackMethod(String result);
    }

    private class HttpGetTask extends AsyncTask<Void, Void, String> {

        public SsjjFNUser user;

        HttpCallback callback;

        @Override
        protected String doInBackground(Void... params) {

            try {

                String encodedName = URLEncoder.encode(user.name, "UTF-8");
                String encodedUid = URLEncoder.encode(user.uid, "UTF-8");
                String encodedExt = URLEncoder.encode(user.ext, "UTF-8");

                String urlString = "http://fnapi.4399sy.com/sdk/api/login.php?name=" + encodedName + "&uid=" + encodedUid + "&ext=" + encodedExt;

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

//    public String HttpRequest(SsjjFNUser user)  {
//
//        try {
//
//            String encodedName = URLEncoder.encode(user.name, "UTF-8");
//            String encodedUid = URLEncoder.encode(user.uid, "UTF-8");
//            String encodedExt = URLEncoder.encode(user.ext, "UTF-8");
//
//            String urlString = "http://fnapi.4399sy.com/sdk/api/login.php?name=" + encodedName + "&uid=" + encodedUid + "&ext=" + encodedExt;
//
//            SendLog("Send URL " + urlString);
//
//            URL url = new URL(urlString);
//            HttpURLConnection con = (HttpURLConnection) url.openConnection();
//            con.setRequestMethod("GET");
//
//            int status = con.getResponseCode();
//            if (con.getResponseCode() == HttpURLConnection.HTTP_OK) {
//                InputStream in = con.getInputStream();
//                BufferedReader reader = new BufferedReader(new InputStreamReader(in));
//                String line;
//                StringBuilder response = new StringBuilder();
//
//                while ((line = reader.readLine()) != null) {
//                    response.append(line);
//                }
//
//                reader.close();
//                con.disconnect();
//
//                return response.toString();
//            } else {
//                System.out.println("Request failed: " + con.getResponseMessage());
//            }
//
//            return "";
//        }
//        catch (Exception e)
//        {
//            SendError("HttpRequest error " + e,e);
//            return "";
//        }
//    }

    private void LoginResult(boolean success,SsjjFNUser user ,String errorString)
    {
        SendLog("login result  " + success);
        try {
            String typeKey = "";
            if(success && user != null)
            {
                typeKey = user.name + "|" + user.uid +"|" + user.ext;

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


//    @Override
//    public void LoadAD(JSONObject json) {
//
//    }
//
//    @Override
//    public void PlayAD(JSONObject json) {
//
//    }
//
//    @Override
//    public void CloseAD(JSONObject json) {
//
//    }
//
//    @Override
//    public Boolean IsLoaded(JSONObject json) {
//        return null;
//    }


    @Override
    public void Login(JSONObject json) {

        SendLog("4399 login");

        SsjjFNSDK.getInstance().login(GetCurrentActivity());
    }

    @Override
    public void LoginOut(JSONObject json) {

        SendLog("4399 LoginOut");
        //注销接口
        SsjjFNSDK.getInstance().logout (GetCurrentActivity());
    }

    @Override
    public void Pay(JSONObject json) {


        try {
            payInfo = PayInfo.FromJson(json);
            String goodsID  = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            String playerID = json.getString(SDKInterfaceDefine.ParameterName_UserID);


            // 商品配置
            SsjjFNProduct info = new SsjjFNProduct();

            info.productId = payInfo.goodsID;
            info.uid = payInfo.userID;
            info.productName = payInfo.goodsName;
            info.productDesc = payInfo.goodsDescription;
            info.price = payInfo.price +"";
            info.productCount = "1";

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

            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, payInfo.goodsID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, payInfo.orderID);
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, "m4399_FN");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, "");

            SendLog( "PayInfo is null" + (payInfo == null) + "jo is null" + (jo == null));

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

    }

//    @Override
//    public RealNameStatus GetRealNameType() {
//        return null;
//    }
//
//    @Override
//    public boolean IsAdult() {
//        return false;
//    }
//
//    @Override
//    public void OnLogin(JSONObject json) {
//
//    }
//
//    @Override
//    public void OnLogout() {
//
//    }
//
//    @Override
//    public void StartRealNameAttestation() {
//
//    }
//
//    @Override
//    public int GetTodayOnlineTime() {
//        return 0;
//    }
//
//    @Override
//    public void CheckPayLimit(JSONObject json) {
//
//    }
//
//    @Override
//    public void LogPayAmount(JSONObject json) {
//
//    }
//
//    @Override
//    public void Share(JSONObject json, String thumbImage, String image) {
//
//    }

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

        if(SsjjFNSDK.getInstance().isSurportFunc("onRequestPermissionsResult")) {
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

        SendLog("m4399SDK onSaveInstanceState  " );

        if(SsjjFNSDK.getInstance().isSurportFunc("onSaveInstanceState")) {
            SsjjFNParams params = new SsjjFNParams();
            params.putObj("bundle", outState);
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onSaveInstanceState", params, null);
        }
    }

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);

        SendLog("m4399SDK onRestoreInstanceState  " );

        if(SsjjFNSDK.getInstance().isSurportFunc("onRestoreInstanceState")) {
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

        SendLog("m4399SDK onAttachedToWindow  " );

        if(SsjjFNSDK.getInstance().isSurportFunc("onAttachedToWindow")) {
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onAttachedToWindow", null, null);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);

        SendLog("m4399SDK onWindowFocusChanged  " );

        if (SsjjFNSDK.getInstance().isSurportFunc("onWindowFocusChanged")) {
            SsjjFNParams params = new SsjjFNParams();
            params.putObj("hasFocus", hasFocus);
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onWindowFocusChanged", params, null);
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();

        SendLog("m4399SDK onBackPressed  " );

        if (SsjjFNSDK.getInstance().isSurportFunc("onBackPressed")) {
            SsjjFNSDK.getInstance().invoke(GetCurrentActivity(), "onBackPressed", null, null);
        }
    }

    @Override
    public void Other(JSONObject json)
    {
        try {

            SendLog("4399 Other " + json);
            String functionName = json.getString(SDKInterfaceDefine.FunctionName);

            if(functionName == "setOauthData")
            {
                String key = json.getString(SDKInterfaceDefine.ParameterName_Content);
                SsjjFNSDK.getInstance().setOauthData(GetCurrentActivity(), key);
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String[] GetFunctionName() {
        return new String[]{"setOauthData"};
    }

    @Override
    public boolean OnAppplicationQuit() {
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

        return false;
    }

    void ExitGame()
    {
        SsjjFNSDK.getInstance().exit(new SsjjFNExitListener() {
            @Override
            public void onCompleted() {
                // SDK释放资源完成，游戏可以退出
                // 处理：正式退出游戏
                // finish(); // Demo 正常退出 Activity


                android.os.Process.killProcess(android.os.Process.myPid());
            }
        });
    }

    //endregion



}
