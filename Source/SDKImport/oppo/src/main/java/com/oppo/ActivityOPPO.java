package com.oppo;

import android.widget.Toast;

import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.callback.SinglePayCallback;
import com.nearme.game.sdk.common.model.biz.PayInfo;
import com.nearme.platform.opensdk.pay.PayResponse;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Random;

import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SdkInterface;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.define.StoreName;

public class ActivityOPPO extends SDKBase implements IPay {

    private static String AppKey = "";
    static PayInfo payInfo;
    @Override
    public void Init(JSONObject json) {

        try {
            AppKey = GetProperties().getProperty("AppKey");
            InitSDK();
            SdkInterface.SendLog("OPPO Init: AppKey " + AppKey + " AppSecret " + "");
        } catch (Exception e)
        {
            SdkInterface.SendError("OPPO Init Error" + e.toString(),e);
        }
    }


    @Override
    public void Pay(JSONObject json) {

        try {
            float price = Float.parseFloat(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            String name =  json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsName);
            String goodID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            // cp支付参数
            int amount = (int)(price * 100); // 支付金额，单位分
            payInfo = new PayInfo(System.currentTimeMillis()
                    + new Random().nextInt(1000) + "", "自定义字段", amount);
            payInfo.setProductDesc(name);//商品描述
            payInfo.setProductName(goodID);
            // 支付结果服务器回调地址，不通过服务端回调发货的游戏可以不用填写~
            //payInfo.setCallbackUrl("http://gamecenter.wanyol.com:8080/gamecenter/callback_test_url");

            GameCenterSDK.getInstance().doSinglePay(GetCurrentActivity(), payInfo,
                new SinglePayCallback() {

                    @Override
                    public void onSuccess(String resultMsg) {
                        // add OPPO 支付成功处理逻辑~
                        Toast.makeText(GetCurrentActivity(), "支付成功",
                                Toast.LENGTH_SHORT).show();
                        SendPayCallBack(true,payInfo);
                    }

                    @Override
                    public void onFailure(String resultMsg, int resultCode) {
                        // add OPPO 支付失败处理逻辑~
                        if (PayResponse.CODE_CANCEL != resultCode) {
                            Toast.makeText(GetCurrentActivity(), "支付失败",
                                    Toast.LENGTH_SHORT).show();
                        } else {
                            // 取消支付处理
                            Toast.makeText(GetCurrentActivity(), "支付取消",
                                    Toast.LENGTH_SHORT).show();
                        }
                        SendPayCallBack(false,payInfo);
                    }
                    @Override
                    public void onCallCarrierPay(PayInfo payInfo, boolean bySelectSMSPay) {
                        // TODO Auto-generated method stub
                        Toast.makeText(GetCurrentActivity(), "运营商支付",
                                Toast.LENGTH_SHORT).show();
                        SendPayCallBack(true,payInfo);
                    }
                });
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void InitSDK()
    {
        GameCenterSDK.init(AppKey,GetCurrentActivity());
    }

    void SendPayCallBack(boolean success,PayInfo info)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);

            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID,info.getProductName());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Price,info.getAmount());
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess,success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID,info.getOrder());
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, StoreName.OPPO.toString());

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e)
        {
            SendError("SendPayCallBack Error " + e,e);
        }
    }


}
