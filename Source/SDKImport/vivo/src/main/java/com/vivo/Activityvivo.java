package com.vivo;

import android.widget.Toast;

import com.vivo.bean.OrderBean;
import com.vivo.bean.RoleInfoBean;
import com.vivo.unionsdk.open.OrderResultInfo;
import com.vivo.unionsdk.open.QueryOrderCallback;
import com.vivo.unionsdk.open.VivoAccountCallback;
import com.vivo.unionsdk.open.VivoConstants;
import com.vivo.unionsdk.open.VivoExitCallback;
import com.vivo.unionsdk.open.VivoPayCallback;
import com.vivo.unionsdk.open.VivoPayInfo;
import com.vivo.unionsdk.open.VivoUnionSDK;

import org.json.JSONException;
import org.json.JSONObject;

import sdkInterface.define.LoginPlatform;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.IPay;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class Activityvivo extends SDKBase implements ILogin,IPay {

    public static String AppID = "";
    public static String CpID = "";
    public static String AppKey = "";
    public static String OpenID = ""; //登陆后获得

    PayInfo payInfo;

    String CpOrderID ="";
    private String cpPayOrderNumber;
    private String cpOrderAmount;

    @Override
    public void Init(JSONObject json)
    {
        super.Init(json);

        try
        {
            SendLog("vivo Init Start"  );
            AppID = GetProperties().getProperty("AppID");
            CpID  = GetProperties().getProperty("CpID");
            AppKey = GetProperties().getProperty("AppKey");
            //交给主线程去执行
            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("vivo Init Start AppID >" + AppID + "<  " );
                    SendLog("vivo Init Start CpID >" + CpID + "< " );
                    SendLog("vivo Init Start AppKey >" + AppKey + "< " );
                    InitSDK();
                    SendLog("vivo Init End AppID >" + AppID + "< success " );
                }
            });

            SendLog("vivo Init End"  );

        } catch (Exception e) {
            SendError("vivo Init Error " + e.toString(),e);
        }
    }

    @Override
    public void Login(JSONObject json) {

        SendLog("vivo Login"  );
        VivoUnionSDK.login(GetCurrentActivity());
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    @Override
    public void Pay(JSONObject json) {

        payInfo = PayInfo.FromJson(json);

        VivoPayInfo vivoPayInfo = VivoSign.createPayInfo(OpenID, getOrderBean(),AppID,AppKey);

        VivoUnionSDK.payV2(GetCurrentActivity(),vivoPayInfo,new VivoPayCallback(){
            @Override
            public void onVivoPayResult(int i, OrderResultInfo orderResultInfo)
            {
                SendLog( "onVivoPayResult: " + orderResultInfo.getTransNo());
                SendLog( "CpOrderNumber: " + cpPayOrderNumber);

                if (i == VivoConstants.PAYMENT_RESULT_CODE_SUCCESS) {
                    Toast.makeText(GetCurrentActivity(), "支付成功", Toast.LENGTH_SHORT).show();
                    //!!!! 一定要加，否则无法通过上架审核 !!!
                    //商品发放成功以后，通知vivo侧
                    VivoUnionHelper.sendCompleteOrderNotification(orderResultInfo);
                    SendPayCallBack(true,orderResultInfo.getTransNo(),"");
                } else if (i == VivoConstants.PAYMENT_RESULT_CODE_CANCEL) {
                    Toast.makeText(GetCurrentActivity(), "取消支付", Toast.LENGTH_SHORT).show();
                    SendPayCallBack(false,orderResultInfo.getTransNo(),"");
                } else if (i == VivoConstants.PAYMENT_RESULT_CODE_UNKNOWN) {
                    Toast.makeText(GetCurrentActivity(), "未知状态，请查询订单", Toast.LENGTH_SHORT).show();
                    VivoUnionHelper.queryOrderResult(cpPayOrderNumber, orderResultInfo.getTransNo(), cpOrderAmount, new QueryOrderCallback() {
                        @Override
                        public void onResult(int i, OrderResultInfo orderResultInfo) {
                            switch (i) {
                                case OrderResultInfo.STATUS_PAY_SUCCESS://查询到订单支付成功
                                    //TODO 游戏方补单

                                    //!!!! 一定要加，否则无法通过上架审核 !!!
                                    //商品发放成功以后，通知vivo侧
                                    VivoUnionHelper.sendCompleteOrderNotification(orderResultInfo);

                                    SendPayCallBack(true,orderResultInfo.getTransNo(),"");
                                    break;
                                case OrderResultInfo.STATUS_PAY_UNTREATED://查询接口传参错误
                                    SendPayCallBack(false,orderResultInfo.getTransNo(),"");
                                    break;
                            }
                        }
                    });
                } else {
                    Toast.makeText(GetCurrentActivity(), "支付失败", Toast.LENGTH_SHORT).show();
                    SendPayCallBack(false,orderResultInfo.getTransNo(),"");
                }
            }
        });
    }

    public OrderBean getOrderBean() {

        String name = "";
        String vivoSignature = "";
        String orderID ="";
        String url = "";

        String[] info = payInfo.tag.split("\\|");
        String[] info2 = payInfo.orderID.split("\\|");

        String amount = info[0]; //后端控制价格
        vivoSignature = info[1];
        url = info[2];

        CpOrderID = info2[0];
        orderID = info2[1]; //由订单推送接口返回，字段为accessKey

        name =  payInfo.goodsName;

        SendLog("setVivoSignature " + vivoSignature);
        SendLog("setTransNo " + orderID);
        SendLog("setUid " + OpenID);
        SendLog("setAppId " + AppID);
        SendLog("setProductName " + name);
        SendLog("setProductPrice " + amount);

        //todo 需修改 商户透传参数 可以通过vivo服务器发给游戏服务器
        String extInfo = payInfo.userID+"|" + payInfo.goodsID;
        //todo 需修改
        String productName = payInfo.goodsID;
        //todo 需修改
        String productDesc = payInfo.goodsID;
        return new OrderBean(CpOrderID, extInfo, url, amount, productName, productDesc, getRoleInfoBean());
    }

    public RoleInfoBean getRoleInfoBean() {
        String balance = "未知";
        String vip = "未知";
        String level = "未知";
        String party = "工会";
        String roleId = payInfo.userID;
        String roleName = "玩家";
        String serverName = "获取不到区服";
        return new RoleInfoBean(balance, vip, level, party, roleId, roleName, serverName);
    }

    @Override
    public boolean IsPrePay() {
        return false;
    }

    @Override
    public boolean IsReSendPay() {
        return false;
    }

    private void InitSDK()
    {
        VivoUnionSDK.initSdk(GetCurrentActivity(),AppID,false);

        VivoUnionSDK.registerAccountCallback(GetCurrentActivity(), new VivoAccountCallback() {
            @Override
            public void onVivoAccountLogin(String userName, String openId, String authToken) {
                OpenID = openId;
                SendLog("vivo onVivoAccountLogin userName >" + userName + " openId" + openId +" authToken " + authToken);
                //登陆成功，openid参数为用户唯一标识
                LoginCallBack(openId,authToken,true);
            }

            @Override
            public void onVivoAccountLogout(int i) {
                SendLog("vivo onVivoAccountLogout i >" + i );
                //登录退出
                LoginCallBack("","",false);
            }

            @Override
            public void onVivoAccountLoginCancel() {
                SendLog("vivo onVivoAccountLoginCancel i >" );
                //登录取消
                LoginCallBack("","",false);
            }
        });
    }

    void LoginCallBack(String openId,String authToken,boolean success)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,authToken);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, LoginPlatform.VIVO.toString());

            CallBack(jo);
        }
        catch (Exception e)
        {
            SendError("LoginCallBack Error " + e.toString(),e);
        }
    }

    void SendPayCallBack(boolean success,String transNo,String errorCode)
    {
        try {
            String receipt = CpOrderID +"|" + transNo;

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,transNo);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.VIVO.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, receipt);

            payInfo.ToJson(jo);

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }

    @Override
    public void OnAppplicationQuit(JSONObject json) {

        VivoUnionSDK.exit(GetCurrentActivity(), new VivoExitCallback() {
            @Override
            public void onExitCancel() {
                //取消退出
            }

            @Override
            public void onExitConfirm() {
                //确认退出
                GetCurrentActivity().finish();
            }
        });

    }
}
