package sdkInterface;

import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import sdkInterface.define.RealNameStatus;

public class SDKCommunication {

    //回调C#层： 支付受限的结果
    static public void Send2C_PayLimitResult(SDKBase sdkBase,boolean isLimit,int payAmount,String Tag)
    {
        Log.i(Tag, "OnPayResult isLimit  " + isLimit);
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_RealName);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.RealName_FunctionName_PayLimitCallBack);
            jo.put(SDKInterfaceDefine.RealName_ParameterName_IsPayLimit,isLimit);
            jo.put(SDKInterfaceDefine.RealName_ParameterName_PayAmount,payAmount);
            sdkBase.CallBack(jo);
        } catch (Exception e) {
            e.printStackTrace();
            sdkBase.SendError(Tag, e);
        }
    }

    //回调C#层: 实名制结果
    public static void Send2C_RealNameResult(SDKBase sdkBase, RealNameStatus realNameStatus, boolean isAdult)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_RealName);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.RealName_FunctionName_RealNameCallBack);
            jo.put(SDKInterfaceDefine.RealName_ParameterName_RealNameStatus, realNameStatus);
            jo.put(SDKInterfaceDefine.RealName_ParameterName_IsAdult,isAdult);

            sdkBase.CallBack(jo);
        } catch (JSONException e) {
            sdkBase.SendError("SendPayCallBack Error " + e, e);
        }
    }

    //回调C#层:  实名系统通知 退出登录
    public static  void Send2C_RealNameLogout(SDKBase sdkBase)
    {
        try {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_RealName);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.RealName_FunctionName_RealNameLogout);

            sdkBase.CallBack(jo);
        } catch (JSONException e) {
            sdkBase.SendError("Send2C_RealNameLogout Error " + e, e);
        }
    }


}
