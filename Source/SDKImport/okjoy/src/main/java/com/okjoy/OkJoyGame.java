package com.okjoy;

import android.content.Intent;
import android.nfc.Tag;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.JoyFramework.common.ExitListener;
import com.JoyFramework.common.ExtraDataInfo;
import com.JoyFramework.common.IOnAdListener;
import com.JoyFramework.common.IPaymentCallback;
import com.JoyFramework.common.IRealNameCallbackAdapter;
import com.JoyFramework.common.InitListener;
import com.JoyFramework.common.JoyGame;
import com.JoyFramework.common.LoginListener;
import com.JoyFramework.common.LoginMessageInfo;
import com.JoyFramework.common.PaymentInfo;
import com.JoyFramework.common.UserApiListenerInfo;
import com.JoyFramework.module.BaseActivity;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.security.Key;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;

import sdkInterface.IAD;
import sdkInterface.ILog;
import sdkInterface.ILogin;
import sdkInterface.IOther;
import sdkInterface.IPay;
import sdkInterface.IRealName;
import sdkInterface.SDKBase;
import sdkInterface.SDKCommunication;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.RealNameStatus;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;
import sdkInterface.tool.JavaUtils;

public class OkJoyGame extends SDKBase implements ILogin, IPay, IAD , IRealName, ILog {

    final String ADKey = "ADKey";
    final String ADKeySplit = "->"; //分割 ADKey 所使用的分隔符
    private static Map<String, String> adKeys = new HashMap<String, String>(); //广告键值对，来自于 ADKey
    private String nowADTag = "";//当前播放用的广告tag

    final String LogKey = "LogKey";
    final String LogKeySplit = "->";//分割LogKey 所使用的分隔符
    private static Map<String, String> logKeys = new HashMap<String, String>();//上报键值对，来自于 LogKey

    private static String appid = "";
    private static String appkey = "";
    PayInfo payInfo = new PayInfo();

    final String Tag = "======OkJoyGame======";
    boolean openDebug = false; //展示打印
    public String userCode = ""; // 玩家唯一OkJoy id  登陆成功后获得
    boolean isRealName = false;//已实名认证
    boolean isAdult = false;// 是成年 （检测实名认证后获得）

    public boolean initSuccess = false;//是否完成了初始化
    public boolean adLoadSuccess = false;//广告加载成功

    //初始化SDK
    public void InitOkJoy() {



        Log.d(Tag, "InitOkJoy");
        JoyGame.init(GetCurrentActivity(), appid, appkey,
                new InitListener() {
                    @Override
                    public void initSuccess(String msg) {
                        showToastWithMsg("初始化成功！");
                        JoyGame.setWelcome(false); //要求关闭闪屏
                        //InitJoyListener();
                        InitPayCallback();
                        InitOkJoyAD();
                        initSuccess = true;
                        Log.d(Tag, "InitOkJoy success");

                    }

                    @Override
                    public void fail(String msg) {
                        Toast.makeText(GetCurrentActivity(), msg,
                                Toast.LENGTH_SHORT).show();
                        initSuccess = false;
                        Log.d(Tag, "InitOkJoy fail");
                    }
                }
        );
    }

    //登录
    public void OkJoyLogin() {
        if (!initSuccess) {
            Log.d(Tag, "OkJoyLogin fail : initSuccess == false");
            return;
        }

        JoyGame.login(GetCurrentActivity(), new LoginListener() {
            @Override
            public void loginSuccess(Object obj) {
                Log.d(Tag, "OkJoyLogin success" + (obj != null));
                if (obj != null) {

                    LoginMessageInfo data = (LoginMessageInfo) obj;
                    String userName = data.getUserName();
                    String l_userCode = data.getUserCode();
                    userCode = l_userCode;
                    String token = data.getLoginToken();
                    Log.d(Tag, "登录结果" + userName + "|userCode:"
                            + l_userCode + "|token:" + token);
                    LoginResult(true, data, "0");
                    OkJoyPlayerInfo();
                    AskRealName();
                }
            }

            @Override
            public void fail(String msg) {

                Log.d(Tag, "OkJoyLogin failed" + msg);
                LoginResult(false, null, "OkJoyLogin failed");

            }
        });
    }

    //登出
    public void OkJoyLogout() {
        Log.d(Tag, "OkJoyLogout");
        JoyGame.logout(GetCurrentActivity());
        LogoutResult(true, "0");
    }

    //支付
    public void OkJoyPay(String productId, String playerId, String playerName) {
        if (!initSuccess) {
            Log.d(Tag, "OkJoyPay fail :initSuccess == false ");
            SendPayCallBack(false,"" ,"init fail");         //直接call 回调完成
            return;
        }

        if (userCode.equals("")) {
            Log.d(Tag, "OkJoyPay fail :login == false ");
            SendPayCallBack(false, "","No login");         //直接call 回调完成
            return;
        }

        Log.d(Tag, "OkJoyPay Start");
        String billNo =  PayInfo.CreatSelfReceipt(playerId,StoreName.OKJOY);
        PaymentInfo payInfo = new PaymentInfo();
        payInfo.setBillNo(billNo);                  //订单id（必填）
        payInfo.setProductId(productId);//商品id（必填）
        payInfo.setExtraInfo(playerId + "|"+billNo);                   //扩展信息
        payInfo.setServerName("无");                  //区服名（必填）
        payInfo.setServerId("123");                    //区服id（必填）
        payInfo.setRoleName(playerName);                    //角色名（必填）
        payInfo.setRoleId(playerId);                      //角色id（必填）
        payInfo.setLevel("0");                       //角色等级，如没有填  “0”，不可为空值（必填）
        payInfo.setBalance("0");                     //用户余额，如没有填  “0”，不可为空值（必填）
        payInfo.setCurrency("0");                    //元宝余额，如没有填  “0”，不可为空值（必填）
        payInfo.setVip("0");                         //vip等级，如没有填  “0”，不可为空值（必填）
        payInfo.setPartyName("无");                   //工会，帮派，如没有填“无”
        payInfo.setUserCode(userCode);        //用户userCode，登录成功后获得（必填）
        JoyGame.payment(GetCurrentActivity(), payInfo);
        SendPayCallBack(true, billNo,"0");         //直接call 回调完成
    }

    //初始化支付的回调
    public void InitPayCallback() {
        JoyGame.setPaymentCallback(new IPaymentCallback() {
            @Override
            public void paySuccess(String billNo) {
                Toast.makeText(GetCurrentActivity(), "支付完成", Toast.LENGTH_SHORT).show();
                Log.d(Tag, "OkJoyPay Success" + billNo);
                //经过测试，此回调不靠谱
            }
        });
    }

    //初始化广告
    public void InitOkJoyAD() {
        Log.d(Tag, "InitOkJoyAD");
        adLoadSuccess = true;
        InitADKeys();
        JoyGame.initAd(GetCurrentActivity(), mAdListener);
    }

    //初始化广告键值对
    private void InitADKeys() {
        try {
            String keyString = GetProperties().getProperty(ADKey);
            Log.d(Tag, "keyString: "+ keyString);
            String[] keySplit = keyString.split("\\|");
            for (int i = 0; (i) < keySplit.length; i++) {
                Log.d(Tag, "InitADKeys keySplit : "+ keySplit[i]);
                if (!keySplit[i].isEmpty()) {
                    String[] key_value = keySplit[i].split(ADKeySplit);
                    Log.d(Tag, "InitADKeys ready : " + key_value[0] + "=" + key_value[1]);
                    if (!adKeys.containsKey(key_value[0])) {
                        Log.d(Tag, "InitADKeys: " + key_value[0] + "=" + key_value[1]);
                        adKeys.put(key_value[0], key_value[1]);
                    }
                }

            }
            Log.d(Tag, "InitADKeys success" + adKeys.size());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //根据tag获取广告key
    private String GetADKeyByTag(String tag) {
        if (adKeys.containsKey(tag)) {
            Log.d(Tag, " get ADKeyByTag:" + tag + "key:" + adKeys.get(tag));
            return adKeys.get(tag);
        }
        Log.d(Tag, "can not get ADKeyByTag:" + tag);
        return "";
    }

    //播放广告
    public void PlayOkJoyAD(final String ADID) {
        //检测
        //JavaUtils.VerifyClass("com.qq.e.comm.plugin.POFactoryImpl");
        Log.d(Tag, "PlayOkJoyAD:" + ADID);
        nowADTag = ADID;
        //交给主线程去执行
        GetCurrentActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                SendLog("UI主线程去执行 : PlayOkJoyAD");
                JoyGame.playAd(GetCurrentActivity(), ADID, IOnAdListener.Ad_Type.Ad_Type_Inspire);
            }
        });
    }

    //使用统一的回调接口，实际也可单独在方法内使用匿名内部类方式
    private IOnAdListener mAdListener = new IOnAdListener() {
        @Override
        public void onAdShow(Ad_Type ad_type) {
            Log.d(Tag, ad_type + "广告显示中");
            switch (ad_type) {
                case Ad_Type_Banner:
                    showToastWithMsg("Banner广告显示中...");
                    break;
                case Ad_Type_Inspire:
                    showToastWithMsg("激励广告显示中...");
                    break;
                case Ad_Type_Insert:
                    showToastWithMsg("插屏广告显示中...");
                    break;
                case Ad_Type_Other:
                    showToastWithMsg("其他类型广告显示中...");
                    break;
            }
        }

        @Override
        public void onAdClick(Ad_Type ad_type) {
            Log.d(Tag, ad_type + "广告被点击了");
            switch (ad_type) {
                case Ad_Type_Banner:
                    showToastWithMsg("点击了Banner广告");
                    break;
                case Ad_Type_Inspire:
                    showToastWithMsg("点击了激励广告");
                    break;
                case Ad_Type_Insert:
                    showToastWithMsg("点击了插屏广告");
                    break;
                case Ad_Type_Other:
                    showToastWithMsg("点击了其他类型广告");
                    break;
            }
        }

        @Override
        public void onAdClose(Ad_Type ad_type) {
            Log.d(Tag, ad_type + "广告关闭中");
            switch (ad_type) {
                case Ad_Type_Banner:
                    showToastWithMsg("关闭Banner广告");
                    break;
                case Ad_Type_Inspire:
                    showToastWithMsg("关闭激励广告");
                    break;
                case Ad_Type_Insert:
                    showToastWithMsg("关闭插屏广告");
                    break;
                case Ad_Type_Other:
                    showToastWithMsg("关闭其他类型广告");
                    break;
            }
        }

        @Override
        public void onAdError(Ad_Type ad_type, String s) {
            Log.d(Tag, ad_type + "广告加载错误");
            adLoadSuccess = false;
            switch (ad_type) {
                case Ad_Type_Banner:
                    showToastWithMsg("Banner广告加载错误");
                    break;
                case Ad_Type_Inspire:
                    showToastWithMsg("激励广告加载错误");
                    break;
                case Ad_Type_Insert:
                    showToastWithMsg("插屏广告加载错误");
                    break;
                case Ad_Type_Other:
                    showToastWithMsg("其他类型广告加载错误");
                    break;
            }
        }

        @Override
        public void onStimulateSuccess(Ad_Type ad_type) {
            //该回调只用作判断是否该给用户激励的回调，只有在 ad_type = Ad_Type.Ad_Type_Inspire 的情况下才有可能回调
            if (ad_type == Ad_Type.Ad_Type_Inspire) {
                Log.d(Tag, "激励广告成功，发放奖励");
                showToastWithMsg("奖励玩家");
                AdRewardCallBack(ADType.Reward, ADResult.Show_Finished);
            }
        }
    };

    //显示信息
    private void showToastWithMsg(String msg) {
        if (TextUtils.isEmpty(msg)) return;
        if (!openDebug) {
            return;
        }
        Toast.makeText(GetCurrentActivity(), msg, Toast.LENGTH_SHORT).show();
    }

    //开始实名认证
    public void ShowRealName() {
        if (!isAdult) {
            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("UI主线程去执行 ");
                    JoyGame.fetchRealNameStatus(GetCurrentActivity(), RealNameCallBack);
                }
            });
        }
    }

    //查询实名制状态
    public void AskRealName()
    {
        //交给主线程去执行
        GetCurrentActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                SendLog("UI主线程去执行 : AskRealName");
                JoyGame.fetchRealNameStatus(GetCurrentActivity(), AskRealNameCallBack);
            }
        });
    }

    //开启 实名制 回调
    private IRealNameCallbackAdapter RealNameCallBack = new IRealNameCallbackAdapter()
    {
        //获取实名状态出错
        @Override
        public void fetchRealNameStatusError(String s) {
            Log.d(Tag,"fetchRealNameStatusError:"+ s);
            isRealName = false;
            RealNameCallBack();
            JoyGame.showRealNamePage(GetCurrentActivity(),"",RealNameCallBack);
        }
        //当前登录的用户还没有实名认证
        @Override
        public void notRealName(String s) {
            Log.d(Tag,"notRealName:"+ s);
            isRealName = false;
            RealNameCallBack();
            JoyGame.showRealNamePage(GetCurrentActivity(),"",RealNameCallBack);
        }

        //当前登录用户已经实名 adult：1->未成年，0->已成年
        @Override
        public void realName(String userCode, int adult) {
            isRealName= true;
            Log.d(Tag,"realName: "+ adult);
            if(adult == 1)
            {
                isAdult = false;
            }
            else if(adult == 0)
            {
                isAdult = true;
            }
            else
            {
                Log.d(Tag,"realName adult = " + adult);
            }
            RealNameCallBack();
        }
    };

    //查询 实名制状态 回调
    private IRealNameCallbackAdapter AskRealNameCallBack = new IRealNameCallbackAdapter()
    {
        //获取实名状态出错
        @Override
        public void fetchRealNameStatusError(String s) {
            Log.d(Tag,"fetchRealNameStatusError:"+ s);
            isRealName = false;
            RealNameCallBack();
        }
        //当前登录的用户还没有实名认证
        @Override
        public void notRealName(String s) {
            Log.d(Tag,"notRealName:"+ s);
            isRealName = false;
            RealNameCallBack();
        }

        //当前登录用户已经实名 adult：1->未成年，0->已成年
        @Override
        public void realName(String userCode, int adult) {
            isRealName= true;
            Log.d(Tag,"realName: "+ adult);
            if(adult == 1)
            {
                isAdult = false;
            }
            else if(adult == 0)
            {
                isAdult = true;
            }
            else
            {
                Log.d(Tag,"realName adult = " + adult);
            }
            RealNameCallBack();
        }
    };

    //退出
    public void OkJoyEit()
    {
        if(!initSuccess)
        {
            Log.d(Tag,"OkJoyEit fail: initSuccess == false");
            return;
        }

        JoyGame.exit(GetCurrentActivity(), new ExitListener() {

            @Override
            public void fail(String msg) {
                Log.d(Tag,"OkJoyEit fail: "+ msg);
            }

            @Override
            public void ExitSuccess(String msg) {
                Log.d(Tag,"OkJoyEit success: "+ msg);
                if ("exit".equals(msg)) {
                    //账号退出
                    GetCurrentActivity().finish();//销毁Activity
                    android.os.Process.killProcess(android.os.Process.myPid());//杀进程
                    System.exit(0);//退出
                }
            }
        });
    }

    //玩家信息上报
    private void OkJoyPlayerInfo()
    {
        ExtraDataInfo extraDataInfo = new ExtraDataInfo();
        extraDataInfo.setScene_Id(ExtraDataInfo.ENTERSERVER);
        extraDataInfo.setRoleId(userCode);     // 角色id，没有可传登录返回的userCode（必填）
        extraDataInfo.setRoleName(userCode);   // 角色名，不可为空值（必填）
        extraDataInfo.setRoleTime(""+System.currentTimeMillis());   // 创建角色时间（必填）
        extraDataInfo.setProcessId("0");  // 新手任务进度
        extraDataInfo.setLevel("0");      // 角色等级，如没有填  “0”，不可为空值（必填）
        extraDataInfo.setServerId("0");   // 当前登录的游戏区服id，不可为空值（必填）
        extraDataInfo.setServerName("0"); // 当前游戏区服名称，不可为空值（必填）
        extraDataInfo.setBalance("0");     // 游戏币余额，如没有填  “0”，不可为空值（必填）
        extraDataInfo.setVip("0");    // 当前用户vip等级，如没有填  “0”，不可为空值（必填）
        extraDataInfo.setCurrency("0");   // 元宝余额，如没有填  “0”，不可为空值（必填）
        extraDataInfo.setPower("0");      // 战斗力，如没有填  “0”，不可为空值（必填）
        extraDataInfo.setUserCode(userCode);        //用户userCode，登录成功后获得（必填）
        JoyGame.setExtraData(GetCurrentActivity(), extraDataInfo);
    }



    public void onActivityResultOkJoy(int requestCode, int resultCode, Intent data)
    {
        Log.d(Tag,"onActivityResult" + requestCode +" resultCode" + resultCode);
        JoyGame.onActivityResult(GetCurrentActivity(),requestCode,resultCode,data);
    }

    //适配安卓6.0动态权限的生命周期方法
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        JoyGame.onRequestPermissionsResult(GetCurrentActivity(), requestCode, permissions, grantResults);
    }

    //region 初始化与登录
    @Override
    public void Init(JSONObject json) {
        initSuccess = false;
        try {
            appid = GetProperties().getProperty("AppId");
            appkey = GetProperties().getProperty("AppKey");

        } catch (IOException e) {
            e.printStackTrace();
        }

        //交给主线程去执行
        GetCurrentActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                SendLog("UI主线程去执行 " );
                InitOkJoy();
            }
        });
    }

    @Override
    public void Login(JSONObject json) {
        OkJoyLogin();
    }

    @Override
    public void LoginOut(JSONObject json) {
        OkJoyLogout();
    }

    @Override
    public void OnAppplicationQuit(JSONObject json) {
        OkJoyEit();
    }
    //endregion

    //region 支付
    @Override
    public void Pay(JSONObject json) {
        try {
            payInfo = PayInfo.FromJson(json);
            String goodsID  = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            String playerID = json.getString(SDKInterfaceDefine.ParameterName_UserID);

            SendLog(Tag +"StartPay goods" + goodsID);
            OkJoyPay(goodsID,playerID,playerID);

        } catch (JSONException e) {
            e.printStackTrace();
            SendError(Tag + "Pay" ,e );
            SendPayCallBack(false,"","Pay error");
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
    //endregion

    //region 广告
    @Override
    public void LoadAD(JSONObject json) {

    }

    @Override
    public void PlayAD(JSONObject json) {
        try {
            String adTag = json.getString(SDKInterfaceDefine.Tag);
            //根据tag，设置 id
            String ADID = GetADKeyByTag(adTag);
            PlayOkJoyAD(ADID);

        } catch (JSONException e) {
            e.printStackTrace();
            SendError(Tag + "PlayAD" ,e );
        }
    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return adLoadSuccess;
    }
    //endregion

    //region 实名制
    //当前实名制状态
    @Override
    public RealNameStatus GetRealNameType() {
        if(initSuccess == false)
        {
            return RealNameStatus.NotRealName;
        }

        if(userCode.equals(""))
        {
            return RealNameStatus.NotRealName;
        }

        if(isRealName)
        {
            return RealNameStatus.IsRealName;
        }
        else
        {
            return RealNameStatus.NotRealName;
        }
    }

    //是否是成年
    @Override
    public boolean IsAdult()
    {
        return isAdult;
    }

    @Override
    public void OnLogin(JSONObject json) {

    }

    @Override
    public void OnLogout() {

    }


    //获得当天在线时长
    @Override
    public int GetTodayOnlineTime() {
        return -1;
    }

    //开始实名制认证
    @Override
    public void StartRealNameAttestation() {
        ShowRealName();
    }

    //检测支付是否受限
    @Override
    public void CheckPayLimit(JSONObject json)
    {
        try {
            String payAmount  = json.getString(SDKInterfaceDefine.RealName_ParameterName_PayAmount);
            SDKCommunication.Send2C_PayLimitResult(OkJoyGame.this,false,Integer.parseInt(payAmount),Tag);
        } catch (JSONException e) {
            e.printStackTrace();
        }



    }
    //上报sdk 支付金额
    @Override
    public void LogPayAmount(JSONObject json)
    {

    }


    //endregion 实名制

    //region 上报
    //上报支付
    @Override
    public void LogPay(JSONObject json) {

    }

    //支付成功
    @Override
    public void LogPaySuccess(JSONObject json) {

    }
    //虚拟奖励
    @Override
    public void RewardVirtualCurrency(JSONObject json) {

    }

    //购买虚拟货币
    @Override
    public void PurchaseVirtualCurrency(JSONObject json) {

    }

    //使用物品
    @Override
    public void UseItem(JSONObject json) {

    }

    //事件
    @Override
    public void OnEvent(JSONObject json) {

    }
    //endregion

    //返回登陆结果
    private void LoginResult(boolean success,LoginMessageInfo loginInfo ,String errorString)
    {
        Log.i(Tag, "login result  " + success);
        try {
            String typeKey = "";
            if(success && loginInfo != null)
            {
                typeKey = loginInfo.getUserCode() + "|" + loginInfo.getLoginToken();

            }
            Log.i(Tag, "send typeKey to Unity :  " + typeKey);
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnLogin);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, typeKey);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.OKJOY.toString());
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorString);
            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("HuaWei4 onLoginSuccess", e);
        }
    }

    //返回登出结果
    private void LogoutResult(boolean success,String errorString)
    {
        Log.i(Tag, "logout result  " + success);
        try {

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnLogout);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.OKJOY.toString());
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorString);
            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("HuaWei4 onLoginSucc", e);
        }
    }



    //返回支付结果 （OkJoy sdk 的回调不准确,必然成功）
    void SendPayCallBack(boolean success,String token,String errorCode) {
        try {
            JSONObject jo = new JSONObject();
            String goodsID = "";
            if(payInfo != null)
            {
                goodsID = payInfo.goodsID;
            }

            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, goodsID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, token);
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.OKJOY.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, token);

            Log.d(Tag, "PayInfo is null" + (payInfo == null) + "jo is null" + (jo == null));

            if (payInfo == null) {
                payInfo = new PayInfo();
            }
            payInfo.ToJson(jo);

            SendLog(Tag + jo.toString());

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    //广告奖励回调
    void AdRewardCallBack(ADType l_ADType, ADResult l_ADResult)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_AD);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.AD_FunctionName_OnAD);
            jo.put(SDKInterfaceDefine.AD_ParameterName_ADType, l_ADType);
            jo.put(SDKInterfaceDefine.AD_ParameterName_ADResult,l_ADResult);
            jo.put(SDKInterfaceDefine.Tag,nowADTag);

            CallBack(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    //实名认证结果回调
    void RealNameCallBack()
    {
        SDKCommunication.Send2C_RealNameResult(OkJoyGame.this,GetRealNameType(),IsAdult());

//        try {
//            JSONObject jo = new JSONObject();
//            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_RealName);
//            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.RealName_FunctionName_RealNameCallBack);
//            jo.put(SDKInterfaceDefine.RealName_ParameterName_RealNameStatus, GetRealNameType());
//            jo.put(SDKInterfaceDefine.RealName_ParameterName_IsAdult,IsAdult());
//
//            CallBack(jo);
//        } catch (JSONException e) {
//            SendError("SendPayCallBack Error " + e, e);
//        }
    }

    //适配安卓6.0动态权限的生命周期方法
    @Override
    public void OnRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override
    public void OnActivityResult(int requestCode, int resultCode, Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);
        onActivityResultOkJoy(requestCode,resultCode,data);
    }

}
