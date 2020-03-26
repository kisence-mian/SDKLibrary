package com.huawei;

import android.widget.Toast;

import com.huawei.android.hms.agent.HMSAgent;
import com.huawei.android.hms.agent.common.handler.CheckUpdateHandler;
import com.huawei.android.hms.agent.common.handler.ConnectHandler;
import com.huawei.android.hms.agent.game.handler.LoginHandler;
import com.huawei.android.hms.agent.pay.PaySignUtil;
import com.huawei.android.hms.agent.pay.handler.GetOrderHandler;
import com.huawei.android.hms.agent.pay.handler.PayHandler;
import com.huawei.hms.support.api.entity.game.GameUserData;
import com.huawei.hms.support.api.entity.pay.OrderRequest;
import com.huawei.hms.support.api.entity.pay.PayReq;
import com.huawei.hms.support.api.entity.pay.PayStatusCodes;
import com.huawei.hms.support.api.pay.OrderResult;
import com.huawei.hms.support.api.pay.PayResultInfo;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Date;

import sdkInterface.ILogin;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILog;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class HuaWeiSDK extends SDKBase implements ILogin, IPay {

    String AppID;
    String CpID;
    String publicKey;
//    String privKey;
    String merchantName;
    String callBackURl;

    PayInfo payInfo = new PayInfo();

    @Override
    public void Init(JSONObject json)
    {
        try
        {
            AppID = GetProperties().getProperty("AppID");
            CpID = GetProperties().getProperty("cpID");
            publicKey = GetProperties().getProperty("publicKey");
            merchantName = GetProperties().getProperty("merchantName");
            callBackURl =  GetProperties().getProperty("callBackUrl");

            HMSAgent.init(GetCurrentActivity().getApplication(),GetCurrentActivity());

            //连接华为移动服务
            HMSAgent.connect(GetCurrentActivity(), new ConnectHandler() {
                @Override
                public void onConnect(int rst) {
                    SendLog ("HMS connect end:" + rst);
                }
            });

            //检查应用是否需要更新
            HMSAgent.checkUpdate(GetCurrentActivity(), new CheckUpdateHandler() {
                @Override
                public void onResult(int rst) {
                    SendLog("check app update end:" + rst);
                }
            });

            //显示浮标
            HMSAgent.Game.showFloatWindow(GetCurrentActivity());
        }
        catch(Exception e)
        {
            SendError("HuaWeiSDK Init Exception" + e.toString(),e);
        }
    }

  //  @Override
    public void OnDestory() {
        HMSAgent.destroy();
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("game login: begin");
        HMSAgent.Game.login(new LoginHandler() {
            @Override
            public void onResult(int retCode, GameUserData userData) {
                if (retCode == HMSAgent.AgentResultCode.HMSAGENT_SUCCESS && userData != null) {
                    SendLog("game login: onResult: retCode=" + retCode + "  user=" + userData.getDisplayName() + "|" + userData.getPlayerId() + "|" + userData.getIsAuth() + "|" + userData.getPlayerLevel());
                    // 当登录成功时，此方法会回调2次
                    // 第1次：只回调playerId，userData.getIsAuth()为0，在要求快速登录时可以用此playerId登录
                    // 第2次：回调所有信息，userData.getIsAuth()为1，此时需要对登录结果进行验签
                    if (userData.getIsAuth() == 1) {

                        SendLog("HuaWeiSDK onResult getGameAuthSign:" + userData.getGameAuthSign() + " getPlayerId:" + userData.getPlayerId() + " getDisplayName:" + userData.getDisplayName());
//                        // 如果需要对登录结果进行验签，建议发送请求到开发者服务器进行。
//                        // 下面的示例代码为在客户端验签的示例代码，实际验签建议放在应用的服务端。
//                        GameLoginSignUtil.checkLoginSign(AppID, CpID, privKey, publicKey, userData, new ICheckLoginSignHandler() {
//                            @Override
//                            public void onCheckResult(String code, String resultDesc, boolean isCheckSuccess) {
//                                SendLog("game login check sign: onResult: retCode=" + code + "  resultDesc=" + resultDesc + "  isCheckSuccess=" + isCheckSuccess);
//                            }
//                        });
                        //返回登陆成功
                        try {

                            String typeKey = userData.getPlayerId()+"|"+userData.getPlayerLevel()+"|"+userData.getGameAuthSign() +"|" + userData.getTs();
                            JSONObject jo = new JSONObject();
                            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,typeKey );
                            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,true);
                            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei.toString());

                            CallBack(jo);
                        } catch (Exception e) {
                            e.printStackTrace();
                            SendError("HuaWei onLoginSucc",e);
                        }
                    }
                } else {
                    SendLog("game login: onResult: retCode=" + retCode);

                    //返回登陆失败
                    try {
                        JSONObject jo = new JSONObject();
                        jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
                        jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,"" );
                        jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,false);
                        jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.HuaWei.toString());

                        CallBack(jo);
                    } catch (Exception e) {
                        e.printStackTrace();
                        SendError("UCSDK onLoginSucc",e);
                    }
                }
            }

            @Override
            public void onChange() {
                //主子帐号登录发生变化时，需要重新登录
                SendLog("game login: login changed!");
                Login(null);
            }
        }, 1);
    }

    @Override
    public void LoginOut(JSONObject json)
    {

    }
    @Override
    public void GetGoodsInfo(JSONObject json)
    {
    }

    @Override
    public void ClearPurchase(JSONObject json) {

    }

    @Override
    public void Pay(JSONObject json)
    {
        try
        {
            SendLog("PMS pay: begin");
            payInfo = PayInfo.FromJson(json);

            PayReq payReq = createPayReq(payInfo);
            HMSAgent.Pay.pay(payReq, new PayHandler() {
                @Override
                public void onResult(int retCode, PayResultInfo payInfo) {

                    SendLog("pay: onResult: " + retCode);
                    if (retCode == HMSAgent.AgentResultCode.HMSAGENT_SUCCESS && payInfo != null) {
                        // 校验签名
                        boolean checkRst = PaySignUtil.checkSign(payInfo, publicKey);
                        SendLog("pay: onResult: pay success and checksign=" + checkRst);
                        if (checkRst) {
                            // 支付成功并且验签成功，发放商品。
                            //成功不进行回调，等待服务器消息
//                            SendPayCallBack(true, payInfo.getOrderID(),retCode+"");
                        } else {
                            // 签名失败，需要查询订单状态。
                            SendPayCallBack(false, payInfo.getOrderID(),retCode+"");
                            GetOrderDetail(payInfo.getOrderID());
                        }
                    } else if (retCode == HMSAgent.AgentResultCode.ON_ACTIVITY_RESULT_ERROR
                            || retCode == PayStatusCodes.PAY_STATE_TIME_OUT
                            || retCode == PayStatusCodes.PAY_STATE_NET_ERROR) {
                        // 需要查询订单状态。
                        SendPayCallBack(false, "",retCode+"");
                    } else {
                        SendLog("pay: onResult: pay fail=" + retCode);
                        // 其他错误码意义参照支付api参考
                        SendPayCallBack(false, "",retCode+"");
                    }
                }
            });
        }
        catch (Exception e)
        {
            SendError("HuaWei Pay Exception " + e,e);
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

    void GetOrderDetail(String orderID)
    {
        OrderRequest or = new OrderRequest();

        or.merchantId = "merchantName";
        or.requestId = orderID;
        or.keyType = "1";
        or.time = new Date().getTime()+"";

        SendLog("GetOrderDetail: merchantId=" + or.merchantId);
        SendLog("GetOrderDetail: requestId=" + or.requestId);
        SendLog("GetOrderDetail: keyType=" + or.keyType);
        SendLog("GetOrderDetail: time=" + or.time);

        HMSAgent.Pay.getOrderDetail(or, new GetOrderHandler() {
            @Override
            public void onResult(int retCode, OrderResult checkPayResult) {
                SendLog("HuaWei checkPay onResult :  retCode=" + retCode);
                if (checkPayResult != null && checkPayResult.getReturnCode() == retCode) {

                    if (retCode == HMSAgent.AgentResultCode.HMSAGENT_SUCCESS) {

                        //对查询结果验签
                        boolean checkRst = PaySignUtil.checkSign(checkPayResult, publicKey);
                        if (checkRst) {
                            //验签成功
                            SendLog("HuaWei GetOrderDetail 验签成功 retCode " + retCode);
                        } else {
                            //验签失败
                            SendLog("HuaWei GetOrderDetail 验签失败 retCode " + retCode);
                        }
                    }
                }
            }
        });
    }

    PayReq createPayReq(PayInfo payInfo)
    {
        PayReq payReq = new PayReq();
        String[] info = payInfo.tag.split("\\|");

        payReq.productName = payInfo.goodsID;
        payReq.productDesc = payInfo.goodsID;
        payReq.applicationID = AppID;
        payReq.requestId = payInfo.orderID;
        payReq.merchantId = CpID;
        payReq.serviceCatalog = "X6";
        payReq.merchantName = merchantName;
        payReq.sdkChannel = 3;
        payReq.url = info[0];
        payReq.sign = info[1];
        payReq.amount = info[2];
        payReq.urlVer = "2";

        payReq.extReserved = payInfo.userID;

        SendLog("payReq: productName=" + payReq.productName);
        SendLog("payReq: productDesc=" + payReq.productDesc);
        SendLog("payReq: applicationID=" + payReq.applicationID);
        SendLog("payReq: requestId=" + payReq.requestId);
        SendLog("payReq: amount=" + payReq.amount);
        SendLog("payReq: merchantId=" + payReq.merchantId);
        SendLog("payReq: serviceCatalog=" + payReq.serviceCatalog);
        SendLog("payReq: merchantName=" + payReq.merchantName);
        SendLog("payReq: sdkChannel=" + payReq.sdkChannel);
        SendLog("payReq: urlVer=" + payReq.urlVer);
        SendLog("payReq: sign=" + payReq.sign);
        SendLog("payReq: url=" + payReq.url);
        SendLog("payReq: extReserved=" + payReq.extReserved);
        SendLog("payReq: country=" + payReq.country);
        SendLog("payReq: currency=" + payReq.currency);
        SendLog("payReq: expireTime=" + payReq.expireTime);
        SendLog("payReq: partnerIDs=" + payReq.partnerIDs);

        return payReq;
    }

    void SendPayCallBack(boolean success,String transNo,String errorCode)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,transNo);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.HuaWei.toString());
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
    public void OnResume() {
        super.OnPause();
        HMSAgent.Game.showFloatWindow(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        super.OnPause();
        HMSAgent.Game.hideFloatWindow(GetCurrentActivity());
    }
}