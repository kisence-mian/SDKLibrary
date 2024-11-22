package com.baidu;

import android.widget.Toast;

import com.duoku.platform.single.DKPlatform;
import com.duoku.platform.single.DKPlatformSettings;
import com.duoku.platform.single.DkErrorCode;
import com.duoku.platform.single.DkProtocolKeys;
import com.duoku.platform.single.callback.IDKSDKCallBack;
import com.duoku.platform.single.item.GamePropsInfo;

import org.json.JSONException;
import org.json.JSONObject;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class BaiDu extends SDKBase implements ILogin, IPay
{
    PayInfo payInfo;
    boolean landScape;

    IDKSDKCallBack loginlistener = new IDKSDKCallBack()
    {
        @Override
        public void onResponse(String paramString)
        {
            SendLog("IDKSDKCallBack  paramString " + paramString);
            try {
                JSONObject jsonObject = new JSONObject(paramString);      // 返回的操作状态码
                 int mFunctionCode = jsonObject.getInt(DkProtocolKeys.FUNCTION_CODE);
                String bduid = jsonObject.optString(DkProtocolKeys.BD_UID);
                String bdtoken = jsonObject.optString(DkProtocolKeys.BD_TOKEN);
                String bdoauthid = jsonObject.optString(DkProtocolKeys.BD_OAUTHID);

                SendLog("IDKSDKCallBack  bduid " + bduid + " bdtoken " + bdtoken + " bdoauthid " + bdoauthid);
                      //登陆成功
                     if(mFunctionCode == DkErrorCode.DK_ACCOUNT_LOGIN_SUCCESS){
                         LoginCallBack(true,bduid);
                      //登陆失败
                      }else if(mFunctionCode == DkErrorCode.DK_ACCOUNT_LOGIN_FAIL){
                         LoginCallBack(false,"");
                      //快速注册成功
                     }else if(mFunctionCode == DkErrorCode.DK_ACCOUNT_QUICK_REG_SUCCESS){
                         LoginCallBack(true,""+ jsonObject);
                 }
            }
            catch (Exception e)
            {
                SendError("loginlistener onResponse error ",e);
                e.printStackTrace();
            }
        }
    };

    //支付回调函数
    IDKSDKCallBack RechargeCallback = new IDKSDKCallBack()
     {
         @Override
         public void onResponse(String paramString)
         { // TODO Auto-generated method stub
              SendLog("GamePropsActivity paramString "+ paramString);
             try {
                 JSONObject jsonObject = new JSONObject(paramString);    // 支付状态码
                 int mStatusCode =  jsonObject.getInt(DkProtocolKeys.FUNCTION_STATUS_CODE);
                 if(mStatusCode == DkErrorCode.BDG_RECHARGE_SUCCESS){ // 返回支付成功的状态码，开发者可以在此处理相应的逻辑      // 订单ID
                     String mOrderId = null;      // 订单状态
                     String mOrderStatus = null;   // 道具ID
                     String mOrderProductId = null;   // 道具价格
                     String mOrderPrice = null;   // 支付通道
                     String mOrderPayChannel = null;
                     String mOrderPriceOriginal = null;//道具的原始价格
                     if(jsonObject.has(DkProtocolKeys.BD_ORDER_ID)){
                         mOrderId = jsonObject.getString(DkProtocolKeys.BD_ORDER_ID);

                     }   if(jsonObject.has(DkProtocolKeys.BD_ORDER_STATUS)){
                         mOrderStatus =  jsonObject.getString(DkProtocolKeys.BD_ORDER_STATUS);
                     }
                     if(jsonObject.has(DkProtocolKeys.BD_ORDER_PRODUCT_ID)){
                         mOrderProductId =  jsonObject.getString(DkProtocolKeys.BD_ORDER_PRODUCT_ID);
                     }
                     if(jsonObject.has(DkProtocolKeys.BD_ORDER_PRICE)){
                         //用户实际支付的价格
                         mOrderPrice =  jsonObject.getString(DkProtocolKeys.BD_ORDER_PRICE);
                     }
                     if(jsonObject.has(DkProtocolKeys.BD_ORDER_PAY_CHANNEL)){
                         mOrderPayChannel =  jsonObject.getString(DkProtocolKeys.BD_ORDER_PAY_CHANNEL);
                     }
                     if(jsonObject.has(DkProtocolKeys.BD_ORDER_PAY_ORIGINAL))
                     {
                         //道具的原始价格，只有有打折信息该字段才有值
                         mOrderPriceOriginal = jsonObject.getString(DkProtocolKeys.BD_ORDER_PAY_ORIGINAL);
                     }
                     int mNum = 0;
                     if( "".equals(mOrderPriceOriginal)||null==mOrderPriceOriginal){
                         mNum = Integer.valueOf(mOrderPrice) * 10;
                     }else{
                         mNum = Integer.valueOf(mOrderPriceOriginal) * 10;
                     }
                     String propsType = "1";
                     Toast.makeText(GetCurrentActivity(),  "道具购买成功!\n金额:"+mOrderPrice+"元",  Toast.LENGTH_LONG).show();
                 }else if(mStatusCode == DkErrorCode.BDG_RECHARGE_USRERDATA_ERROR){
                     Toast.makeText(GetCurrentActivity(), "用户透传数据不合法",  Toast.LENGTH_LONG).show();

                     SendPayCallBack(false,"",mStatusCode+"");
                 }else if(mStatusCode == DkErrorCode.BDG_RECHARGE_ACTIVITY_CLOSED){
                     // 返回玩家手动关闭支付中心的状态码，开发者可以在此处理相应的逻辑
                     Toast.makeText(GetCurrentActivity(), "玩家关闭支付中心",  Toast.LENGTH_LONG).show();
                     SendPayCallBack(false,"",mStatusCode+"");
                 }else if(mStatusCode == DkErrorCode.BDG_RECHARGE_FAIL){
                     // 返回支付失败的状态码，开发者可以在此处理相应的逻辑
                     Toast.makeText(GetCurrentActivity(), "购买失败", Toast.LENGTH_LONG).show();
                     SendPayCallBack(false,"",mStatusCode+"");
                 } else if(mStatusCode == DkErrorCode.BDG_RECHARGE_EXCEPTION){
                     //返回支付出现异常的状态码，开发者可以在此处理相应的逻辑
                     Toast.makeText(GetCurrentActivity(), "购买出现异常",  Toast.LENGTH_LONG).show();
                     SendPayCallBack(false,"",mStatusCode+"");
                 } else if(mStatusCode == DkErrorCode.BDG_RECHARGE_CANCEL){
                     //返回取消支付的状态码，开发者可以在此处理相应的逻辑
                     Toast.makeText(GetCurrentActivity(), "玩家取消支付",  Toast.LENGTH_LONG).show();
                     SendPayCallBack(false,"",mStatusCode+"");
                 } else {
                     Toast.makeText(GetCurrentActivity(), "未知情况", Toast.LENGTH_LONG).show();
                     SendPayCallBack(false,"",mStatusCode+"");
                 }
             }
             catch (Exception e)
             {
                 e.printStackTrace();
             }
         }
     };

    @Override
    public void Init(JSONObject json) {
        super.Init(json);
        try
        {
            SendLog("Baidu Init ");

            landScape = Boolean.parseBoolean( GetProperties().getProperty("landScape"));

            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("Baidu Init Start " );

                    //回调函数
                    IDKSDKCallBack initcompletelistener = new IDKSDKCallBack(){
                        @Override
                        public void onResponse(String paramString) {
                            SendLog("GameMainActivity "+ paramString);
                            try {
                                JSONObject jsonObject = new JSONObject(paramString);
                                // 返回的操作状态码
                                int mFunctionCode = jsonObject.getInt(DkProtocolKeys.FUNCTION_CODE);

                                //初始化完成
                                if(mFunctionCode == DkErrorCode.BDG_CROSSRECOMMEND_INIT_FINSIH){
                                    // 返回的百度uid，供cp绑定使用
                                    String bduid = jsonObject.getString(DkProtocolKeys.BD_UID);
                                    String bdtoken = jsonObject.getString(DkProtocolKeys.BD_TOKEN);
                                    String bdoauthid = jsonObject.getString(DkProtocolKeys.BD_OAUTHID);
                                    Toast.makeText(GetCurrentActivity(), "初始化成功", Toast.LENGTH_SHORT).show();
                                    initLogin();
                                    initAds(); //调用品宣接口
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    };
                    //初始化函数
                    DKPlatform.getInstance().init(GetCurrentActivity(), landScape, DKPlatformSettings.SdkMode.SDK_PAY,initcompletelistener);
                    SendLog("Baidu Init finsih  " );
                }
            });
        }catch (Exception e)
        {
            SendError("BaiDu Init Error" + e,e);
        }
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("BaiDu LogLogin " + json);
        try
        {
            DKPlatform.getInstance().invokeBDLogin(GetCurrentActivity(), loginlistener );
        }
        catch (Exception e)
        {
            SendError("Baidu error LogLogin " + e,e);
        }
    }

    @Override
    public void OnAppplicationQuit(JSONObject json) {
        super.OnAppplicationQuit(json);

        SendLog("BaiDu OnAppplicationQuit " + json);
        SendLog("BaiDu OnAppplicationQuit GetCurrentActivity() " + GetCurrentActivity().getLocalClassName());

        GetCurrentActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {

                SendLog("BaiDu OnAppplicationQuit run" );

                DKPlatform.getInstance().bdgameExit(GetCurrentActivity(), new IDKSDKCallBack() {
                    @Override
                    public void onResponse(String paramString) {

                        SendLog("BaiDu OnAppplicationQuit callback  " + paramString);

                        Toast.makeText(GetCurrentActivity(), "退出游戏", Toast.LENGTH_LONG).show();
                        GetCurrentActivity().finish();
                        android.os.Process.killProcess(android.os.Process.myPid());
                    }
                });
            }});
    }

    @Override
    public void LoginOut(JSONObject json) {

        SendLog("BaiDu LogLoginOut " + json);

        GetCurrentActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {

                DKPlatform.getInstance().bdgameExit(GetCurrentActivity(), new IDKSDKCallBack() {
                    @Override
                    public void onResponse(String paramString) {


                        Toast.makeText(GetCurrentActivity(), "退出游戏", Toast.LENGTH_LONG).show();
                        GetCurrentActivity().finish();
                        android.os.Process.killProcess(android.os.Process.myPid());
                    }
                });
            }});
    }

    @Override
    public void Pay(JSONObject json)
    {
        SendLog("BaiDu Pay " + json);

        try {
            payInfo = PayInfo.FromJson(json);

            //百度游戏计费数据
            GamePropsInfo propsSecond =  new GamePropsInfo(payInfo.tag, payInfo.price+"", payInfo.goodsName,payInfo.userID+"|"+payInfo.goodsID);

            // 支付接口
            DKPlatform.getInstance().invokePayCenterActivity(GetCurrentActivity(),  propsSecond,null,null,RechargeCallback);
        }
        catch (Exception e)
        {
            SendError("baidu Pay Error" + e,e);
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

    @Override
    public void GetGoodsInfo(JSONObject json) {

    }

    @Override
    public void ClearPurchase(JSONObject json) {

    }

    @Override
    public void OnResume() {
        DKPlatform.getInstance().resumeBaiduMobileStatistic(GetCurrentActivity());
    }

    @Override
    public void OnPause() {

       DKPlatform.getInstance().pauseBaiduMobileStatistic(GetCurrentActivity());
//        DKPlatform.getInstance().bdgamePause(GetCurrentActivity(), new IDKSDKCallBack()
//        {
//            @Override
//            public void onResponse(String paramString) {
//                SendLog("bggamePause success"); }
//            });
    }

   // @Override
    public void OnDestory() {
//        DKPlatform.getInstance().bdgameExit(GetCurrentActivity(), new IDKSDKCallBack() {
//            @Override
//            public void onResponse(String paramString)
//            {
//                Toast.makeText(GetCurrentActivity(), "退出游戏", Toast.LENGTH_LONG).show();
//                GetCurrentActivity().finish();
//                android.os.Process.killProcess(android.os.Process.myPid());
//            }
//    });
    }


    //登陆初始化,接入百度账号功能的需要调用此接口
    private void initLogin(){

        SendLog(" initLogin");
        //回调函数
        loginlistener = new IDKSDKCallBack(){
            @Override
            public void onResponse(String paramString) {
                try {
                    SendLog(" initLogin loginlistener callback  " + paramString);

                    JSONObject jsonObject = new JSONObject(paramString);
                    // 返回的操作状态码
                    int mFunctionCode = jsonObject.getInt(DkProtocolKeys.FUNCTION_CODE);
                    // 返回的百度uid，供cp绑定使用
                    String bduid = jsonObject.optString(DkProtocolKeys.BD_UID);
                    String bdtoken = jsonObject.optString(DkProtocolKeys.BD_TOKEN);
                    String bdoauthid = jsonObject.optString(DkProtocolKeys.BD_OAUTHID);
//					Log.e("xxxx", "functionCode=" + mFunctionCode);
                    //登陆成功
                    if(mFunctionCode == DkErrorCode.DK_ACCOUNT_LOGIN_SUCCESS){
                        //隐藏登陆按钮，显示修改密码和切换账号按钮
                        Toast.makeText(GetCurrentActivity(), "登录成功", Toast.LENGTH_LONG).show();
                        SendLog("BaiDu 登陆成功  " + paramString);
                        LoginCallBack(true,bduid);
                    }else if(mFunctionCode == DkErrorCode.DK_ACCOUNT_LOGIN_FAIL){
                        //登陆失败
                        //显示登陆按钮，隐藏修改密码和切换账号按钮
                        SendLog("BaiDu 登陆失败  " + paramString);
                        LoginCallBack(false,bduid);
                        //快速注册成功
                    }else if(mFunctionCode == DkErrorCode.DK_ACCOUNT_QUICK_REG_SUCCESS){
                        //快速试玩登陆成功，都需要隐藏
                        SendLog("BaiDu 快速试玩登陆成功  " + paramString);
                        LoginCallBack(true,bduid);
                    }else {
                        SendLog("BaiDu 其他情况  " + paramString);
                        LoginCallBack(false,bduid);
                    }
                } catch (Exception e) {
                    SendError("loginlistener onResponse error " + e,e);
                    LoginCallBack(false,"");
                }
            }
        };
        DKPlatform.getInstance().invokeBDInit(GetCurrentActivity(), loginlistener);
        SendLog(" initLogin finish ");
    }

    /**
     * 品宣接口调用
     */
    private void initAds(){

        SendLog("BaiDu 品宣接口调用");
        DKPlatform.getInstance().bdgameInit(GetCurrentActivity(), new IDKSDKCallBack() {
            @Override
            public void onResponse(String paramString) {
                SendLog("GameMainActivity bggameInit success"+"paramString:"+paramString);
            }
        });
    }

    void LoginCallBack(Boolean success,String userID)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,userID );
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.Baidu.toString());

            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("BaiDu onLoginSucc",e);
        }
    }

    void SendPayCallBack(boolean success,String transNo,String errorCode)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,transNo);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.Baidu.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,transNo);

            payInfo.ToJson(jo);
            sdkInterface.SdkInterface.SendMessage(jo);
        }
        catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }

    @Override
    public void OnCreate() {

        SendLog("BaiDu OnCreate");
        DKPlatform.getInstance().invokeBDInitApplication(GetCurrentActivity().getApplication());
        SendLog("BaiDu OnCreate finish");
    }
}
