package com.bugly;

import com.tencent.bugly.crashreport.CrashReport;

import org.json.JSONObject;

import java.io.IOException;

import sdkInterface.ILog;
import sdkInterface.SDKBase;
import sdkInterface.SdkInterface;

public class BuglyBase extends SDKBase implements ILog {

    String appID ="";
    @Override
    public  void Init(JSONObject json)
    {
        SendLog("BuglyBase Init start" );
        try {
            appID = GetProperties().getProperty("AppId");
            SendLog("BuglyBase Init" +appID );
            CrashReport.initCrashReport(GetCurrentActivity().getApplicationContext(), appID, SdkInterface.IsDebug());
//            if(SdkInterface.IsDebug())
//            {
//                CrashReport.testJavaCrash(); //主动触发一个崩溃，用于测试上报
//            }
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    @Override
    public void Login(JSONObject json) {

    }

    @Override
    public void LoginOut(JSONObject json) {

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
    public void PurchaseVirtualCurrency(JSONObject json) {

    }

    @Override
    public void UseItem(JSONObject json) {

    }

    @Override
    public void OnEvent(JSONObject json) {

    }
}
