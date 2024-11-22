package log;

import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.game.UMGameAgent;
import com.umeng.commonsdk.UMConfigure;
import org.json.JSONObject;
import java.util.HashMap;
import java.util.Iterator;

import sdkInterface.SDKBase;
import sdkInterface.ILog;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;

public class Umeng extends SDKBase implements ILog
{
    String AppKey;
    String Channel;
    String PushSecret;

    @Override
    public void Init(JSONObject json) {
        try {
            SendLog("Umeng Init " + json);
            AppKey = GetProperties().getProperty("AppKey","");
            PushSecret =  GetProperties().getProperty("PushSecret","");
            Channel  = SdkInterface.GetProperties(SDKInterfaceDefine.FileName_ChannelProperties,SDKInterfaceDefine.PropertiesKey_ChannelName,"Android");

            UMConfigure.init(GetCurrentActivity(),AppKey,Channel,UMConfigure.DEVICE_TYPE_PHONE,PushSecret);
        }
        catch (Exception e)
        {
            SendError("Umeng Init error:" + e.toString(),e);
        }
    }

    @Override
    public void LogLogin(JSONObject json) {

        try {
            SendLog("Umeng LogLogin " + json);

            String AccountId = json.getString(SDKInterfaceDefine.Log_ParameterName_AccountId);
            MobclickAgent.onProfileSignIn(AccountId);
        }
        catch (Exception e)
        {
            SendError("Umeng LogLogin Error:" + e,e);
        }
    }

    @Override
    public void LogLoginOut(JSONObject json) {
        MobclickAgent.onProfileSignOff();
    }

    @Override
    public void LogPay(JSONObject json) {

        try {

            SendLog("Umeng LogPay " + json);

            String orderID = json.getString(SDKInterfaceDefine.Pay_ParameterName_OrderID);
            String goodsID = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            double price = Double.parseDouble(json.getString(SDKInterfaceDefine.Pay_ParameterName_Price));
            String currency = json.getString(SDKInterfaceDefine.Pay_ParameterName_Currency);
            String payment = json.getString(SDKInterfaceDefine.Pay_ParameterName_Payment);
            int count =  Integer.parseInt( json.getString(SDKInterfaceDefine.Pay_ParameterName_Count));

            UMGameAgent.pay(price,count,PaymentToInt(payment));

            SdkInterface.SendLog("ReportThread finish report " + orderID);
        }
        catch (Exception e)
        {
            SendError("Umeng LogPay Error:" + e,e);
        }
    }

    int PaymentToInt(String payment)
    {
        switch (payment)
        {
            case "AliPay": return 2;
            case "WX": return 9;
            case "IAppPay": return 10;

            default: return 99;
        }
    }

    @Override
    public void LogPaySuccess(JSONObject json) {
        SendLog("Umeng LogPaySuccess " + json);
    }

    @Override
    public void RewardVirtualCurrency(JSONObject json) {

        try {

            SendLog("Umeng RewardVirtualCurrency " + json);

            double count = Double.parseDouble( json.getString(SDKInterfaceDefine.Pay_ParameterName_Count));
            String reason = json.getString(SDKInterfaceDefine.Log_ParameterName_RewardReason);

            UMGameAgent.bonus(reason, 1, count, 1);
        }
        catch (Exception e)
        {
            SendError("Umeng LogPay Error:" + e,e);
        }
    }

    @Override
    public void LogPurchaseVirtualCurrency(JSONObject json) {
        SendLog("Umeng LogPurchaseVirtualCurrency " + json);
    }

    @Override
    public void LogUseItem(JSONObject json) {
        try {

            SendLog("Umeng LogUseItem " + json);

            int num = Integer.parseInt( json.getString(SDKInterfaceDefine.Pay_ParameterName_Count));
            String goods = json.getString(SDKInterfaceDefine.Pay_ParameterName_GoodsID);
            UMGameAgent.use(goods, num , num);
        }
        catch (Exception e)
        {
            SendError("Umeng LogPay Error:" + e,e);
        }
    }

    @Override
    public void LogEvent(JSONObject json) {

        try {

            SendLog("Umeng LogEvent " + json);

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

            MobclickAgent.onEvent(GetCurrentActivity(),eventID,hashMap);
        } catch (Exception e) {
            SendError("TalkingData Log Error:" + e,e);
        }
    }

    @Override
    public void LogError(JSONObject json) {
        MobclickAgent.onEvent(GetCurrentActivity(),"Error",json.toString());
    }
}
