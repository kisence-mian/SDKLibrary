package log;

import com.tendcloud.tenddata.TDGAAccount;
import com.tendcloud.tenddata.TDGAItem;
import com.tendcloud.tenddata.TDGAVirtualCurrency;
import com.tendcloud.tenddata.TalkingDataGA;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Iterator;

import sdkInterface.ILog;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;

public class TalkingData extends SDKBase implements ILog
{
    String AppID ;
    String Channel;
    @Override
    public void Init(JSONObject json)
    {
        try {
            AppID = GetProperties().getProperty("AppID");
            Channel = SdkInterface.GetProperties(SDKInterfaceDefine.FileName_ChannelProperties,SDKInterfaceDefine.PropertiesKey_ChannelName,"Android");

            TalkingDataGA.init(GetCurrentActivity(), AppID, Channel);
        } catch (Exception e) {
            SendError("TalkingData Init Error:" + e,e);
        }
    }

    @Override
    public void Login(JSONObject json)
    {
        try {
            String AccountId = json.getString(SDKInterfaceDefine.Log_ParameterName_AccountId);
            TDGAAccount.setAccount(AccountId);
        } catch (Exception e)
        {
            SendError("TalkingData Login Error:" + e,e);
        }
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    @Override
    public void LogPay(JSONObject json) {

        try {
            String orderID = json.getString(SDKInterfaceDefine.Pay_ParameterName_OrderID);
            String goodsID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            double price = Double.parseDouble(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            String currency = json.getString(SDKInterfaceDefine.Pay_ParameterName_Currency);
            String payment = json.getString(SDKInterfaceDefine.Pay_ParameterName_Payment);
            int count =  Integer.parseInt( json.getString(SDKInterfaceDefine.Pay_ParameterName_Count));

            TDGAVirtualCurrency.onChargeRequest(orderID,goodsID,price,currency,count,payment);

            //直接认为充值成功
            TDGAVirtualCurrency.onChargeSuccess(orderID);

            //开一个线程上报支付成功
            ReportThread R1 = new ReportThread( orderID);
            R1.start();

            SdkInterface.SendLog("ReportThread finish report " + orderID);
        }
        catch (Exception e)
        {
            SendError("TalkingData LogPay Error:" + e,e);
        }
    }

    @Override
    public void LogPaySuccess(JSONObject json) {

        try {
            String orderID = json.getString(SDKInterfaceDefine.Pay_ParameterName_OrderID);
            TDGAVirtualCurrency.onChargeSuccess(orderID);
        }
        catch (Exception e)
        {
            SendError("TalkingData LogPay Error:" + e,e);
        }
    }

    @Override
    public void RewardVirtualCurrency(JSONObject json) {
        try {
            double count = Double.parseDouble( json.getString(SDKInterfaceDefine.Pay_ParameterName_Count));
            String reason = json.getString(SDKInterfaceDefine.Log_ParameterName_RewardReason);
            TDGAVirtualCurrency.onReward(count,reason);
        }
        catch (Exception e)
        {
            SendError("TalkingData LogPay Error:" + e,e);
        }
    }

    @Override
    public void PurchaseVirtualCurrency(JSONObject json) {
        try {
            double price = Double.parseDouble( json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            int num = Integer.parseInt( json.getString(SDKInterfaceDefine.Pay_ParameterName_Count));
            String goods = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            TDGAItem.onPurchase(goods,num,price);
        }
        catch (Exception e)
        {
            SendError("TalkingData LogPay Error:" + e,e);
        }
    }

    @Override
    public void UseItem(JSONObject json)
    {
        try {
            int num = Integer.parseInt( json.getString(SDKInterfaceDefine.Pay_ParameterName_Count));
            String goods = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            TDGAItem.onUse(goods,num);
        }
        catch (Exception e)
        {
            SendError("TalkingData LogPay Error:" + e,e);
        }
    }

    @Override
    public void OnEvent(JSONObject json) {
        try {
            HashMap<String,String> hashMap = new HashMap<String,String>();

            String eventID = json.getString(SDKInterfaceDefine.Log_ParameterName_EventID);

            if(json.has(SDKInterfaceDefine.Log_ParameterName_EventMap)) {
                String map = json.getString(SDKInterfaceDefine.Log_ParameterName_EventMap);
                JSONObject jsonMap = new JSONObject(map);

                Iterator iterator = jsonMap.keys();
                while (iterator.hasNext()) {
                    String key = (String) iterator.next();
                    String value = jsonMap.getString(key);
                    hashMap.put(key, value);
                }
            }

            TalkingDataGA.onEvent (eventID, hashMap);
        } catch (Exception e) {
            SendError("TalkingData Log Error:" + e,e);
        }
    }
}

class ReportThread implements Runnable {
    private Thread t;
    private String orderID;

    ReportThread( String orderID) {
        this.orderID = orderID;
    }

    public void run() {
        try {
            SdkInterface.SendLog("ReportThread begin report " + orderID);

            Thread.sleep(1000);
            TDGAVirtualCurrency.onChargeSuccess(orderID);

            SdkInterface.SendLog("ReportThread onChargeSuccess " + orderID);
        }
        catch (InterruptedException e)
        {
            SdkInterface.SendError("ReportThread Error " + e.toString(),e);
        }
    }

    public void start () {
        if (t == null) {
            t = new Thread (this, "ReportThread");
            t.start ();

            SdkInterface.SendLog("ReportThread start " + orderID);
        }
    }
}
