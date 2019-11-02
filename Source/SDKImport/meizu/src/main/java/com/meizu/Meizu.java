package com.meizu;

import android.os.Bundle;

import com.meizu.gamesdk.model.callback.MzLoginListener;
import com.meizu.gamesdk.model.callback.MzPayListener;
import com.meizu.gamesdk.model.model.LoginResultCode;
import com.meizu.gamesdk.model.model.MzAccountInfo;
import com.meizu.gamesdk.model.model.MzBuyInfo;
import com.meizu.gamesdk.model.model.PayResultCode;
import com.meizu.gamesdk.online.core.MzGameCenterPlatform;

import org.json.JSONObject;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class Meizu extends SDKBase implements ILogin, IPay {
    PayInfo payInfo;

    String appid;
    String appkey;

    String mUid;
    @Override
    public void OnCreate() {

        try {
            SendLog("Meizu oncreate");

            appid = GetProperties().getProperty("appid");
            appkey = GetProperties().getProperty("appkey");

            MzGameCenterPlatform.init(GetCurrentActivity(), appid, appkey);
            SendLog("Meizu oncreate finsih");
        } catch (Exception e) {
            SendError("Meizu init error " + e, e);
        }
    }

    @Override
    public void Login(JSONObject json) {
        MzGameCenterPlatform.login(GetCurrentActivity(), new MzLoginListener() {
            @Override
            public void onLoginResult(int code, MzAccountInfo accountInfo, String errorMsg) {
                // TODO 登录结果回调。注意，该回调跑在应用主线程，不能在这里做耗时操作
                switch (code) {
                    case LoginResultCode.LOGIN_SUCCESS:
                        // TODO 登录成功，拿到uid 和 session到自己的服务器去校验session合法性
                        mUid = accountInfo.getUid();
                        SendLog("登录成功！\r\n 用户名：" + accountInfo.getName() + "\r\n Uid：" +
                                accountInfo.getUid() + "\r\n session：" + accountInfo.getSession());

                        LoginCallBack(true, mUid);
                        break;
                    case LoginResultCode.LOGIN_ERROR_CANCEL:
                        // TODO 用户取消登陆操作
                        LoginCallBack(false, "");
                        break;
                    default:
                        // TODO 登陆失败，包含错误码和错误消息。
                        // TODO 注意，错误消息(errorMsg)需要由游戏展示给用户，提示失败原因
                        SendLog("登录失败 : " + errorMsg + " , code = " + code);
                        LoginCallBack(false, "");
                        break;
                }
            }
        });
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    @Override
    public void Pay(JSONObject json) {
        try {
            payInfo = PayInfo.FromJson(json);

            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {

                    String[] info = payInfo.tag.split("\\|");

                    String orderId = payInfo.orderID;                                      //  cp_order_id (不能为空)
                    String sign = info[2];                                         //  sign (不能为空)
                    String signType = "md5";                                     //  sign_type (不能为空)
                    int buyCount = 1;                                          //   buy_amount
                    String cpUserInfo = payInfo.userID+"|"+payInfo.goodsID;    //   user_info
                    String amount = info[0];// total_price
                    String productId = payInfo.goodsID;                                    //   product_id
                    String productSubject = payInfo.goodsID;                                //   product_subject
                    String productBody = payInfo.goodsID;                                 //   product_body
                    String productUnit = payInfo.goodsID;                                 //   product_unit
                    String app_id = appid;                                       //   app_id (不能为空)
                    String uid = mUid;                                         // uid (不能为空)flyme账号用户ID
                    String perPrice = info[0];                                      //   product_per_price
                    long createTime = Long.parseLong(info[1]);                              //  create_time
                    int payType = 0;                                         //pay_type：0-定额；1-不定

                    Bundle buyBundle = new MzBuyInfo().setBuyCount(buyCount).setCpUserInfo(cpUserInfo)
                            .setOrderAmount(amount).setOrderId(orderId).setPerPrice(perPrice)
                            .setProductBody(productBody).setProductId(productId)
                            .setProductSubject(productSubject).setProductUnit(productUnit)
                            .setSign(sign).setSignType(signType).setCreateTime(createTime)
                            .setAppid(app_id).setUserUid(uid).setPayType(payType).toBundle();

                    MzGameCenterPlatform.payOnline(GetCurrentActivity(), buyBundle, new MzPayListener() {
                        @Override
                        public void onPayResult(int code, Bundle info, String errorMsg) {
                            // TODO 支付结果回调，该回调跑在应用主线程。注意，该回调跑在应用主线程，不能在这里做耗时操作
                            switch (code) {
                                case PayResultCode.PAY_SUCCESS:    // TODO 如果成功，接下去需要到自己的服务器查询订单结果
                                    MzBuyInfo payInfo = MzBuyInfo.fromBundle(info);
                                    SendLog("支付成功 : " + payInfo.getOrderId());
                                    PayCallBack(true,"");
                                    break;
                                case PayResultCode.PAY_ERROR_CANCEL:    // TODO 用户主动取消支付操作，不需要提示用户失败
                                    PayCallBack(false,"");
                                    break;
                                default:
                                    // TODO 支付失败，包含错误码和错误消息。
                                    // TODO 注意，错误消息(errorMsg)需要由游戏展示给用户，提示失败原因
                                    SendLog("支付失败 : " + errorMsg + " , code = " + code);
                                    PayCallBack(false,"");
                                    break;
                            }
                        }
                    });
                }
            });
        } catch (Exception e) {
            SendError("Meizu pay error " + e, e);
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

    void LoginCallBack(boolean success, String userID) {
        SdkInterface.SendLog("UCSDK onLoginSucc:" + userID);
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, userID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, true);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.Huluxia.toString());

            CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            SendError("UCSDK onLoginSucc", e);
        }
    }

    void PayCallBack(Boolean success, String orderID) {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, orderID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, orderID);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.Huluxia.toString());

            payInfo.ToJson(jo);
            SdkInterface.SendMessage(jo);
        } catch (Exception e) {
            SendError("UCSDK onCreateOrderSucc Exception " + e, e);
        }
    }
}
