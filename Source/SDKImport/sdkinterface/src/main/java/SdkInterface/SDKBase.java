package sdkInterface;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.unity3d.player.UnityPlayer;

import org.json.JSONException;
import org.json.JSONObject;
import java.io.IOException;
import java.util.Properties;

import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;
import sdkInterface.tool.ActResultRequest;
import sdkInterface.tool.PropertieTool;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class SDKBase {
    public String SDKName = "";

    public void Init(JSONObject json) {

    }

    public void OnApplicationCreate() { }

    public void AttachBaseContext(Context base) { }

    public void OnCreate() { }

    public void OnStart() { }

    public void OnRestart() { }

    public void OnResume() { }

    public void OnPause() { }

    public void OnStop() { }

    public boolean OnAppplicationQuit() { return false; }

    public void OnRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults){}

    public void OnNewIntent(Intent intent) { }

    public void HandleIntent(Intent intent) { }

    public void OnDestroy() { }

    public void OnActivityResult(int requestCode, int resultCode, Intent data){}

    public void CallBack(String content) {
        SdkInterface.SendMessage(content);
    }
    public void CallBack(JSONObject jo) {
        SdkInterface.SendMessage(jo);
    }

    public void SendLog(String content) {
        SdkInterface.SendLog(content);
    }

    public void SendError(String content, Exception e) {
        SdkInterface.SendError(content, e);
    }

    public Properties GetProperties() throws IOException {
        return PropertieTool.getProperties(SdkInterface.GetContext(),SDKName);
    }
    public Activity GetCurrentActivity()
    {
        return UnityPlayer.currentActivity;
    }

    public void StartForResult(Intent intent, ActResultRequest.Callback callback)
    {
        try
        {
            SdkInterface.actResultRequest.startForResult(intent,callback);
        }catch (Exception e)
        {
            SendError("StartForResult" + e.toString(),e);
        }
    }

    protected void CallBackLoginResult(String loginPlatform, boolean success,String accountID  ,String errorString)
    {
        SendLog("login result  " + success);
        try {

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnLogin);
            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId, accountID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Login_ParameterName_loginPlatform, loginPlatform);
            jo.put(SDKInterfaceDefine.ParameterName_Error,errorString);
            CallBack(jo);

        } catch (Exception e) {
            e.printStackTrace();
            SendError("LoginResult onLogin Error", e);
        }
    }

    protected void CallBackADReward(ADType ADType, ADResult ADResult,String tag)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_AD);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.AD_FunctionName_OnAD);
            jo.put(SDKInterfaceDefine.AD_ParameterName_ADType, ADType);
            jo.put(SDKInterfaceDefine.AD_ParameterName_ADResult,ADResult);
            jo.put(SDKInterfaceDefine.Tag,tag);

            CallBack(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    //返回支付结果
    protected void CallBackPayResult(PayInfo payInfo,String  storeName,boolean success,String token,String errorCode) {
        try {
            JSONObject jo = new JSONObject();
            String goodsID = "";
            if(payInfo != null)
            {
                goodsID = payInfo.goodsID;
            }

            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, goodsID);
            jo.put(SDKInterfaceDefine.ParameterName_IsSuccess, success);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_OrderID, token);
            jo.put(SDKInterfaceDefine.ParameterName_Error, errorCode);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Payment, storeName);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_Receipt, token);

            SendLog( "PayInfo is null" + (payInfo == null) + "jo is null" + (jo == null));

            if (payInfo == null) {
                payInfo = new PayInfo();
            }
            payInfo.ToJson(jo);

            SendLog( jo.toString());

            sdkInterface.SdkInterface.SendMessage(jo);
        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }
}
