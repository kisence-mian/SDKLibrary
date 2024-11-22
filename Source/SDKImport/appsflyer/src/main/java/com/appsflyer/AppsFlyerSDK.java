package com.appsflyer;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import sdkInterface.ILog;
import sdkInterface.SDKBase;
import sdkInterface.IOther;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.application.MainApplication;

public class AppsFlyerSDK extends SDKBase implements IOther, ILog {

    String AF_DEV_KEY = "xxx";

    @Override
    public void OnApplicationCreate() {
        super.OnApplicationCreate();
        try {
            AF_DEV_KEY = GetProperties().getProperty("AF_DEV_KEY","");

            SendLog("AppsFlyerSDK OnApplicationCreate AF_DEV_KEY " + AF_DEV_KEY);
            AppsFlyerConversionListener conversionListener = new AppsFlyerConversionListener() {

                @Override
                public void onConversionDataSuccess(Map<String, Object> conversionData) {

                    for (String attrName : conversionData.keySet()) {
                        SendLog( "attribute: " + attrName + " = " + conversionData.get(attrName));
                    }
                }

                @Override
                public void onConversionDataFail(String errorMessage) {
                    SendLog( "error getting conversion data: " + errorMessage);
                }

                @Override
                public void onAppOpenAttribution(Map<String, String> conversionData) {

                    for (String attrName : conversionData.keySet()) {
                        SendLog(  "attribute: " + attrName + " = " + conversionData.get(attrName));
                    }
                }

                @Override
                public void onAttributionFailure(String errorMessage) {
                    SendLog(  "error onAttributionFailure : " + errorMessage);
                }
            };

            AppsFlyerLib.getInstance().init(AF_DEV_KEY, conversionListener, MainApplication.instance.getApplicationContext());

        } catch (Exception e) {
            SendError("AppsFlyerSDK Error " + e.toString(),e);
        }
    }

    @Override
    public void OnStart() {
        AppsFlyerLib.getInstance().start(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        AppsFlyerLib.getInstance().onPause(GetCurrentActivity());
    }

    @Override
    public void Other(JSONObject json) {

    }

    @Override
    public String[] GetFunctionName() {
        return new String[0];
    }

    @Override
    public void LogLogin(JSONObject json) {

    }

    @Override
    public void LogLoginOut(JSONObject json) {

    }

    @Override
    public void LogPay(JSONObject json) {
        SendLog("AppsFlyer LogPay " + json.toString());
    }

    @Override
    public void LogPaySuccess(JSONObject json) {

    }

    @Override
    public void RewardVirtualCurrency(JSONObject json) {

    }

    @Override
    public void PurchaseVirtualCurrency(JSONObject json) {

    }

    @Override
    public void UseItem(JSONObject json) {

    }

    @Override
    public void OnEvent(JSONObject json) {
        Map<String, Object> hashMap = new HashMap<String, Object>();

        try {
            String eventID = json.getString(SDKInterfaceDefine.Log_ParameterName_EventID);
            if (json.has(SDKInterfaceDefine.Log_ParameterName_EventMap)) {
                String map = json.getString(SDKInterfaceDefine.Log_ParameterName_EventMap);
                JSONObject jsonMap = new JSONObject(map);

                Iterator iterator = jsonMap.keys();
                while (iterator.hasNext()) {
                    String key = (String) iterator.next();
                    String value = jsonMap.getString(key);
                    hashMap.put(key, value);
                }
            }

            AppsFlyerLib.getInstance().logEvent(GetCurrentActivity(), eventID, hashMap);

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void LogError(JSONObject json) {

    }
}
