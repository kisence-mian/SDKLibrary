package sdkInterface;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;

import com.unity3d.player.UnityPlayer;

import org.json.JSONException;
import org.json.JSONObject;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;
import sdkInterface.define.LoginPlatform;
import sdkInterface.define.StoreName;
import sdkInterface.module.PayInfo;
import sdkInterface.tool.ActResultRequest;
import sdkInterface.tool.Base64Util;
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

    public void onAttachedToWindow() {};

    public void onBackPressed() {};

    public void onConfigurationChanged(Configuration newConfig) {};

    public void onSaveInstanceState(Bundle outState) {};

    protected void onRestoreInstanceState(Bundle savedInstanceState) {};

    public void onWindowFocusChanged(boolean hasFocus) {};

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

    public void SendError(String content) {
        SdkInterface.SendError(content);
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
        SendLog("login result  " + success + " accountID " + accountID);
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

    protected void CallBackLoginOut(String loginPlatform, boolean success,String accountID  ,String errorString)
    {
        SendLog("loginOut  " + accountID);
        try {

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnLogout);
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


            SendLog(" CallBackADReward " + jo.toString());

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

    //查询商品信息回调
    protected void CallBackGoodsInfo(String goodsID,String price) {
        SendLog("CallBackGoodsInfo goodsID >" + goodsID + "< >" + price + "<");

        try {
            JSONObject jo = new JSONObject();
            //查询成功
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Pay);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.Pay_FunctionName_GetGoodsInfo);
            jo.put(SDKInterfaceDefine.Pay_ParameterName_GoodsID, goodsID); //转化为游戏配置的key
            jo.put(SDKInterfaceDefine.Pay_ParameterName_LocalizedPriceString, price);
            sdkInterface.SdkInterface.SendMessage(jo);

        } catch (JSONException e) {
            SendError("SendPayCallBack Error " + e, e);
        }
    }

    protected HashMap<String, String> GenerateHashMapBySqlitContent(String content, String splitChar)
    {
        HashMap<String, String> hash = new HashMap<String, String>();

        try {
            String[] keySplit = content.split("\\|");
            for (int i = 0; (i) < keySplit.length; i++) {
                if (!keySplit[i].isEmpty()) {
                    String[] key_value = keySplit[i].split(splitChar);
                    if (!hash.containsKey(key_value[0])) {
                        hash.put(key_value[0], key_value[1]);
                    }
                }
            }
        } catch (Exception e) {
            SendError("GenerateHashMapBySqlitContent error " + e,e);
        }

        return hash;
    }

    protected  String GeneratePayCustomContent(PayInfo payInfo)
    {
            JSONObject json = payInfo.GenJSONObject();
            String content = json.toString();
            byte[] bytes = content.getBytes();
            String encode = Base64Util.encode(bytes);

            String result =  encode.replace("+","-")
                    .replace("/","_")
                    .replace("=","");

            return result;

    }

}
