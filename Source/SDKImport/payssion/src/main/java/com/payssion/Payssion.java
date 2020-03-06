package com.payssion;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;

import com.payssion.android.sdk.PayssionActivity;
import com.payssion.android.sdk.PayssionBaseActivity;
import com.payssion.android.sdk.PayssionConfig;
import com.payssion.android.sdk.model.PayRequest;
import com.payssion.android.sdk.model.PayResponse;
import org.json.JSONException;
import org.json.JSONObject;
import java.io.IOException;
import androidx.annotation.Nullable;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;

public class Payssion extends SDKBase implements IPay {

    public static String LogTag = "PayssionPay=====";
    public static int c_resultCode =4017;

    public String apiKey = "";
    public String pmId = "gash_tw|aptg_tw|fetnet_tw|tm_tw|cht839_tw|chtland_tw|chthinet_tw|eswebatm_tw";
    // public String pmId = "payssion_test";
    public String currencyKey = "CNY"; //默认货币类型
    PayInfo payInfo = new PayInfo();

    @Override
    public void Init(JSONObject json) {
        {
            SendLog("PayssionPay Init Start");
            try {
                currencyKey = GetProperties().getProperty("CurrencyKey");
                pmId = GetProperties().getProperty("PmId");
                apiKey = GetProperties().getProperty("ApiKey");
                SendLog("payssion Init resulet: currencyKey" + currencyKey +"  pmId"+ pmId + " apiKey" + apiKey );

                PayssionBaseActivity pba = new PayssionBaseActivity();
                SendLog("PayssionBaseActivity " + pba);

            } catch (IOException e) {
                SendError("Payssion init error " + e ,e);
            }
        }
    }

    @Override
    public void Pay(JSONObject jsonObject) {
        SendLog("PayssionPay Ready Start ");
        String description ="";
        String payerName ="player";
        String payerEmail = "example@mail.com";
        Double amount = 0d;
        String currency =currencyKey;
        String orderId ="PayssionPayTest";
        try {
            orderId = jsonObject.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            description = jsonObject.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsName);
            amount =   Double.valueOf(jsonObject.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            payerName = jsonObject.getString(SDKInterfaceDefine.ParameterName_UserID);
            pmId = jsonObject.getString(SDKInterfaceDefine.Tag);
            payInfo = PayInfo.FromJson(jsonObject);
        } catch (JSONException e) {
            SendError("Pay error " + e,e);
            return;
        }
        StartPayssionPay(description,payerName,payerEmail,amount,currency,orderId);
    }

    //调用sdk ，开始支付
    public void StartPayssionPay( String description ,
                                  String payerName ,
                                  String payerEmail ,
                                  Double amount ,
                                  String currency ,
                                  String orderId )
    {

        SendLog("Start PayssionPay :currency" +currency+"  amount" + amount + "orderId " + orderId + "pmId" + pmId + " payerName" +payerName);

        Boolean isNotSandBox = !apiKey.contains("sandbox");

        Intent intent = new Intent(GetCurrentActivity(), PayssionActivity.class);

        PayRequest payRequest =  new PayRequest()
                .setLiveMode(isNotSandBox) //测试环境传false.正式环境传true.默认正式环境
                .setAPIKey(apiKey) //请注意区分测试环境和正式环境的APIKey
                .setAmount(amount)
                .setCurrency(currency)
                .setDescription(description)
                .setOrderId(orderId) //您的订单Id
                .setPayerEmail(payerEmail)
                .setPayerName(payerName);

        if(pmId.contains("|") )
        {
            //多支付方式
            PayssionConfig.setPM( pmId);
        }
        else
        {
            //单一支付方式
            payRequest.setPMId(pmId);
        }

        intent.putExtra(PayssionActivity.ACTION_REQUEST,
                payRequest);
        GetCurrentActivity().startActivityForResult(intent, c_resultCode);
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
    public void GetGoodsInfo(JSONObject jsonObject) {

    }

    @Override
    public void ClearPurchase(JSONObject jsonObject) {

    }

    //监听结果
    @Override
    public void OnActivityResult(int requestCode, int resultCode,@Nullable Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);
        SendLog("PayssionPay onActivityResult" + requestCode + "=resultCode=" + resultCode);
        // Result returned from launching the Intent from GoogleSignInClient.getSignInIntent(...);
        if (requestCode == c_resultCode) {

            // The Task returned from this call is always completed, no need to attach
            // a listener.
            SendLog("PayssionPay result==" + resultCode);

            switch (resultCode) {
                case PayssionActivity.RESULT_OK:
                    if (null != data) {
                        PayResponse response = (PayResponse)data.getSerializableExtra(PayssionActivity.RESULT_DATA);
                        if (null != response) {
                            String transId = response.getTransactionId(); //获取Payssion交易Id
                            String orderId = response.getOrderId(); //获取您的订单Id
                            SendLog("PayssionPay result==success=== transId" + transId + "=orderId=="+orderId );
                            SendPayCallBack(true,response,"0");
                            //you will have to query the payment state with the transId or orderId from your server
                            //as we will notify you server whenever there is a payment state change
                        } else {
                            //should never go here
                            SendLog("PayssionPay result== error: response == null"  );
                            SendPayCallBack(false,response," response == null");
                        }
                    }
                    else
                    {
                        SendLog("PayssionPay result==data is null");
                        SendPayCallBack(false,null," PayssionPay result data is null");
                    }
                    break;
                case PayssionActivity.RESULT_CANCELED:
                    SendLog("PayssionPay result== pay cancel"  );
                    SendPayCallBack(false,null,"Pay cancel");
                    //the transation has been cancelled, for example, the users doesn't pay but get back
                    break;
                case PayssionActivity.RESULT_ERROR:
                    SendLog("PayssionPay result== pay error"  );
                    SendPayCallBack(false,null,""+PayssionActivity.RESULT_ERROR);
                    //there is some error
                    if (null != data) {
                        String err_des = data.getStringExtra(PayssionActivity.RESULT_DESCRIPTION);
                        SendLog( "RESULT_ERROR" + err_des);
                    }
                    break;
            }

        }
    }

    //支付结构回调C#
    void SendPayCallBack(boolean success, PayResponse response, String errorCode)
    {
        String packageName ="";
        String sku=payInfo.goodsID;
        if(sku ==null)
        {
            sku = "";
        }
        String orderID="";
        if(success && response != null)
        {
            orderID = response.getOrderId();
        }
        SendLog("GooglePay  SendPayCallBack ===="  +success + "==sku==" +sku + "==errorCode==" + errorCode);

        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,sku);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,"");
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.Payssion.toString());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt,"");

            jo.put(SDKInterfaceDefine.Pay_ParameterName_Currency,"");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsName,"");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Price,"0");
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsType,"NORMAL");
            payInfo.ToJson(jo);

            SendLog(" SendPayCallBack  =============" + jo);
            sdkInterface.SdkInterface.SendMessage(jo);
        }
        catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }
}
