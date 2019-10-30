package com.oppo;

import android.widget.Toast;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.ApiCallback;
import com.nearme.game.sdk.callback.GameExitCallback;
import com.nearme.game.sdk.callback.SinglePayCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.game.sdk.common.util.AppUtil;
import com.nearme.platform.opensdk.pay.PayResponse;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Random;

import sdkInterface.ILogin;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SdkInterface;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;

public class ActivityOPPO extends SDKBase implements ILogin, IPay {

    private static String AppKey = "";
    static String payCallBack = "";

    static PayInfo payInfo;
    static sdkInterface.module.PayInfo SdkPayInfo;

    private static String token = ""; //登陆后获取
    private static String ssoid = ""; //登陆后获取

    @Override
    public void Init(JSONObject json) {

        try {
            AppKey = GetProperties().getProperty("AppKey");
            payCallBack = GetProperties().getProperty("payCallBack");

            InitSDK();
            SdkInterface.SendLog("OPPO Init: AppKey " + AppKey + " AppSecret " + "");
        } catch (Exception e) {
            SdkInterface.SendError("OPPO Init Error" + e.toString(), e);
        }
    }

    @Override
    public void Login(JSONObject json) {
        GameCenterSDK.getInstance().doLogin(GetCurrentActivity(), new ApiCallback() {

            @Override
            public void onSuccess(String resultMsg) {
                GetToken();
            }

            @Override
            public void onFailure(String resultMsg, int resultCode) {
                SendLog("OPPO 登陆失败");
                LoginCallBack("", "", false);
            }
        });
    }

    void GetToken() {
        GameCenterSDK.getInstance().doGetTokenAndSsoid(new ApiCallback() {
               @Override
               public void onSuccess(String resultMsg) {
                   try {
                       JSONObject json = new JSONObject(resultMsg);
                       token = json.getString("token");
                       ssoid = json.getString("ssoid");
                   } catch (JSONException e) {
                       e.printStackTrace();
                       SendError("VIVO GetToken Error ", e);
                   }
                   LoginCallBack(ssoid, token, true);

               }

               @Override
               public void onFailure(String s, int i) {
                   SendLog("OPPO GetToken Error " + i + "msg:" + s);
                   LoginCallBack(ssoid, token, false);
               }
           }
        );
    }

    void LoginCallBack(String ssoid, String token, boolean success) {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, ssoid + "|" + token);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.OPPO.toString());

            CallBack(jo);
        } catch (Exception e) {
            SendError("OPPO LoginCallBack Error " + e.toString(), e);
        }
    }

    @Override
    public void Pay(JSONObject json) {

        try {

            SdkPayInfo = sdkInterface.module.PayInfo.FromJson(json);

            float price = Float.parseFloat(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            String name = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsName);
            String goodID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            String customString = SdkPayInfo.userID;
            String ts = System.currentTimeMillis()+ new Random().nextInt(1000)+ "";

            // cp支付参数
            int amount = (int) (price * 100); // 支付金额，单位分

            //测试用
//            amount = 1;

            payInfo = new PayInfo(
                    ts,
                    customString,
                    amount);
            payInfo.setProductDesc(name);//商品描述
            payInfo.setProductName(goodID);
            // 支付结果服务器回调地址，不通过服务端回调发货的游戏可以不用填写~
            payInfo.setCallbackUrl(payCallBack);

            SendLog("setProductDesc " + name);
            SendLog("setProductName " + goodID);
            SendLog("amount " + amount);
            SendLog("customString " + customString);
            SendLog("ts " + ts);
            SendLog("payCallBack " + payCallBack);

            GameCenterSDK.getInstance().doSinglePay(GetCurrentActivity(), payInfo,
                    new SinglePayCallback() {

                        @Override
                        public void onSuccess(String resultMsg) {
                            // add OPPO 支付成功处理逻辑~
                            SendLog("OPPO 支付成功 " + resultMsg);
                            Toast.makeText(GetCurrentActivity(), "支付成功",
                                    Toast.LENGTH_SHORT).show();
//                            SendPayCallBack(true, payInfo);
                        }

                        @Override
                        public void onFailure(String resultMsg, int resultCode) {
                            // add OPPO 支付失败处理逻辑~
                            SendLog("OPPO 支付失败 " + resultMsg + " " + resultCode);
                            if (PayResponse.CODE_CANCEL != resultCode) {
                                Toast.makeText(GetCurrentActivity(), "支付失败",
                                        Toast.LENGTH_SHORT).show();
                            } else {
                                // 取消支付处理
                                Toast.makeText(GetCurrentActivity(), "支付取消",
                                        Toast.LENGTH_SHORT).show();
                            }
                            SendPayCallBack(false, payInfo);
                        }

                        @Override
                        public void onCallCarrierPay(PayInfo payInfo, boolean bySelectSMSPay) {

                            SendLog("OPPO 运营商支付 " + payInfo + " " + bySelectSMSPay);
                            Toast.makeText(GetCurrentActivity(), "运营商支付",
                                    Toast.LENGTH_SHORT).show();
                            SendPayCallBack(true, payInfo);
                        }
                    });
        } catch (JSONException e) {
            e.printStackTrace();
            SendError("OPPO Pay Error " + e, e);
            SendPayCallBack(false, payInfo);
        }
    }

    private void InitSDK() {
        GameCenterSDK.init(AppKey, GetCurrentActivity());
    }

    void SendPayCallBack(boolean success, PayInfo info) {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);

            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, info.getProductName());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Price, info.getAmount());
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, info.getOrder());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, info.getOrder());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.OPPO.toString());

            SdkPayInfo.ToJson(jo);

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("OPPO SendPayCallBack Error " + e, e);
        }
    }

//    @Override
//    public void OnDestory() {
//        GameCenterSDK.getInstance().onExit(GetCurrentActivity(), new GameExitCallback() { public void exitGame() { AppUtil.exitGameProcess(GetCurrentActivity()); } });
//    }

    @Override
    public void OnAppplicationQuit(JSONObject json) {
        super.OnAppplicationQuit(json);

        GameCenterSDK.getInstance().onExit(GetCurrentActivity(), new GameExitCallback()
        {
            public void exitGame()
            {
                AppUtil.exitGameProcess(GetCurrentActivity());
            }
        });
    }
}
