package com.loongcheer;

import android.os.Bundle;

import com.loongcheer.interactivesdk.config.GameConfig;
import com.loongcheer.loginsdk.callback.LoginInterfaceJson;
import com.loongcheer.loginsdk.loginutils.EventUtils;
import com.loongcheer.loginsdk.loginutils.LoginUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Iterator;

import sdkInterface.IAD;
import sdkInterface.ILog;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.ILogin;
import sdkInterface.SDKInterfaceDefine;

public class LoogcheerSDK extends SDKBase implements  ILogin,IPay , IAD, ILog {

    @Override
    public void Init(JSONObject json) {

        GameConfig.setActivity(GetCurrentActivity());
    }

    @Override
    public void Pay(JSONObject json) {

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
    public void GetGoodsInfo(JSONObject json) {

    }

    @Override
    public void ClearPurchase(JSONObject json) {

    }

    @Override
    public void LoadAD(JSONObject json) {

    }

    @Override
    public void PlayAD(JSONObject json) {

    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return null;
    }

    @Override
    public void Login(JSONObject json) {
        LoginUtils.getInstance().loginUi(new LoginInterfaceJson() {
            @Override
            public void onError(String msg) {
                SendLog("Login onError msg");

                CallBackLoginResult("Loogcheer",false,"",msg);
            }

            @Override
            public void onfull(String json) {
                SendLog("Login onError msg" + json);

                CallBackLoginResult("Loogcheer",true,json,"");
            }
        });
    }

    @Override
    public void LoginOut(JSONObject json) {

    }

    @Override
    public void LogPay(JSONObject json) {

        Bundle params = new Bundle();
        String eventID = null;
        try {
            eventID = json.getString(SDKInterfaceDefine.Log_ParameterName_EventID);
            if(json.has(SDKInterfaceDefine.Log_ParameterName_EventMap)) {
                String map = json.getString(SDKInterfaceDefine.Log_ParameterName_EventMap);
                JSONObject jsonMap = new JSONObject(map);

                Iterator iterator = jsonMap.keys();
                while (iterator.hasNext()) {
                    String key = (String) iterator.next();
                    String value = jsonMap.getString(key);
                    params.putString(key, value);
                }
            }

            EventUtils.getInstance().firebaseEvent(eventID,params);
        } catch (JSONException e) {
            e.printStackTrace();
        }
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
        Bundle params = new Bundle();
        String eventID = null;
        try {
            eventID = json.getString(SDKInterfaceDefine.Log_ParameterName_EventID);
            if(json.has(SDKInterfaceDefine.Log_ParameterName_EventMap)) {
                String map = json.getString(SDKInterfaceDefine.Log_ParameterName_EventMap);
                JSONObject jsonMap = new JSONObject(map);

                Iterator iterator = jsonMap.keys();
                while (iterator.hasNext()) {
                    String key = (String) iterator.next();
                    String value = jsonMap.getString(key);
                    params.putString(key, value);
                }
            }

            EventUtils.getInstance().firebaseEvent(eventID,params);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
