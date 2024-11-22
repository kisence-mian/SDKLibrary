import android.util.Log;

import com.dataeye.DCAccount;
import com.dataeye.DCAgent;
import com.dataeye.DCEvent;
import com.dataeye.DCReportMode;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Map;

import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SDKBase;
import sdkInterface.ILog;
import sdkInterface.SdkInterface;

/**
 * Created by GaiKai on 2018/4/10.
 */

public class DataEye extends SDKBase implements ILog
{
    @Override
    public void Init(JSONObject json)
    {
        SDKName = "DataEye";
        Log.d("Unity","DataEye Init "+ json.toString());
        try {

            DCAgent.setReportMode(DCReportMode.DC_AFTER_LOGIN);
            DCAgent.initConfig(SdkInterface.GetContext()
                    ,GetProperties().getProperty("AppID")
                    ,GetProperties().getProperty("ChannelID"));

        } catch (Exception e) {
            SendError("DataEye IOException",e);
        }
    }

//    @Override
//    public void Log(JSONObject json) {
//        try {
//            String logFunction = json.getString(SDKInterfaceDefine.FunctionName);
//
//            switch (logFunction) {
//                    case SDKInterfaceDefine.Log_FunctionName_Login:
//                        LogLogin(json);
//                        break;
//                    case SDKInterfaceDefine.Log_FunctionName_LoginOut:
//                        LogLoginOut(json);
//                        break;
//                    case SDKInterfaceDefine.Log_FunctionName_Event:
//                        LogEvent(json);
//                    break;
//                default:
//                    SendError("Dont support Log_FunctionName " + logFunction, null);
//            }
//
//        } catch (JSONException e) {
//            SendError("Log Exception " + e.toString(),e);
//        }
//    }

    @Override
    public void LogLogin(JSONObject json)
    {
        Log.d("Unity","DataEye LogLogin " + json.toString());
        try {
            String accountId = json.getString(SDKInterfaceDefine.FunctionName);
            DCAccount.login(accountId);

        } catch (Exception e) {
           SendError("DataEye LogLogin " + e.toString(),e);
        }
    }

    @Override
    public void LogLoginOut(JSONObject json) {
        Log.d("Unity","DataEye LogLoginOut "+ json.toString());
        DCAccount.logout();
    }

    @Override
    public void LogPay(JSONObject json) {

    }

    @Override
    public void LogPaySuccess(JSONObject json) {

    }

    @Override
    public void RewardVirtualCurrency(JSONObject json) {

    }

    @Override
    public void LogPurchaseVirtualCurrency(JSONObject json) {

    }

    @Override
    public void LogUseItem(JSONObject json) {

    }

    @Override
    public void LogEvent(JSONObject json)
    {
        Log.d("Unity","DataEye LogEvent "+ json.toString());

        try {
            String eventID = json.getString(SDKInterfaceDefine.Log_ParameterName_EventID);

            if(json.has(SDKInterfaceDefine.Log_ParameterName_EventLabel))
            {
                String eventLabel = json.getString(SDKInterfaceDefine.Log_ParameterName_EventLabel);
                DCEvent.onEvent(eventID,eventLabel);
            }

            if(json.has(SDKInterfaceDefine.Log_ParameterName_EventMap))
            {
                Map map  = jsonToMap(json.getJSONObject(SDKInterfaceDefine.Log_ParameterName_EventMap));
                DCEvent.onEvent(eventID,map);
            }
        } catch (JSONException e) {
            SendError("DataEye LogEvent " + e.toString(),e);
        }

    }

    @Override
    public void LogError(JSONObject json) {

    }

    public static Map<Object, Object> jsonToMap(JSONObject json) {
        Map<Object, Object> map = (Map)json;
        return map;
    }
}
