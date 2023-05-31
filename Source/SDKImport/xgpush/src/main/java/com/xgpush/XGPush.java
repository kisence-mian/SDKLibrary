package com.xgpush;

import android.util.Log;

import com.tencent.android.tpush.XGIOperateCallback;
import com.tencent.android.tpush.XGPushManager;

import org.json.JSONObject;

import sdkInterface.SDKBase;
import sdkInterface.IOther;

public class XGPush extends SDKBase implements IOther {

    @Override
    public void Init(JSONObject json) {
        try {
            SendLog("XGPush Init  ");

            XGPushManager.registerPush(GetCurrentActivity(), new XGIOperateCallback() {
                @Override
                public void onSuccess(Object data, int flag) {
                    //token在设备卸载重装的时候有可能会变
                    SendLog("注册成功，设备token为：" + data);
                }

                @Override
                public void onFail(Object data, int errCode, String msg) {
                    SendLog( "注册失败，错误码：" + errCode + ",错误信息：" + msg);
                }
            });
        }
        catch (Exception e)
        {
            SendError("XGPush Init Error " + e,e);
        }
    }

    @Override
    public void Other(JSONObject json) {

    }

    @Override
    public String[] GetFunctionName() {
        return new String[0];
    }
}
