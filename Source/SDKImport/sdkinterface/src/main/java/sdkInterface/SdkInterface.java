package sdkInterface;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import com.unity3d.player.UnityPlayer;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import sdkInterface.define.RealNameStatus;
import sdkInterface.tool.ActResultRequest;
import sdkInterface.tool.PropertieTool;

/**
 * Created by GaiKai on 2018/4/3.
 */

public class SdkInterface
{
    static Boolean isCallBack = false;
    static final String CallBackObjectName = "CallBackObject";
    static final String CallBackFuntionName = "OnSDKCallBack";
    static boolean isInit = false;
    static boolean isLog = true;
    static boolean isMultiDex = false;

    static Properties SdkManifest;

    //用于接收onActivityResult回调
    public static ActResultRequest actResultRequest;

    //用于一些不兼容的情况
    public static int sRequestCode = 0x11;
    private static SparseArray<ActResultRequest.Callback> sCallbacks = new SparseArray<>();

    //region 外部交互
    public static void UnityRequestFunction(String content)
    {
        try
        {
            isCallBack = true;
            SendLog("SDKInterface UnityRequestFunction receive ->"  + content + "<-");

            JSONObject json = new JSONObject(content);
            String moduleName = json.getString(SDKInterfaceDefine.ModuleName);

            switch(moduleName)
            {
                case SDKInterfaceDefine.ModuleName_Init:Init(json);break;
                case SDKInterfaceDefine.ModuleName_Login:Login(json);break;
                case SDKInterfaceDefine.ModuleName_Log:Log(json);break;
                case SDKInterfaceDefine.ModuleName_AD:AD(json);break;
                case SDKInterfaceDefine.ModuleName_Pay:Pay(json);break;
//                case SDKInterfaceDefine.ModuleName_Share:Share(json);break;
                case SDKInterfaceDefine.ModuleName_Other:Other(json);break;
                case SDKInterfaceDefine.ModuleName_RealName:RealName(json);break;
                default:SendError("UnityRequestFunction : not support function name ->" + content + "<-",null);
            }
        }
        catch (Exception e)
        {
            SendError("UnityRequestFunction Error  msg  -> " + content + "<- error: " + e.toString(),e);
        }
    }

    //region 外部交互 (int 返回类型)
    public static int UnityRequestFunctionInt(String content)
    {
        try
        {
            SendLog("SDKInterface UnityRequestFunctionInt receive ->"  + content + "<-");

            JSONObject json = new JSONObject(content);
            String moduleName = json.getString(SDKInterfaceDefine.ModuleName);

            switch(moduleName)
            {
                case SDKInterfaceDefine.ModuleName_RealName:
                    return 0;
                default:
                    SendError("UnityRequestFunctionInt : not support function name ->" + content + "<-",null);
                    return 0;
            }
        }
        catch (Exception e)
        {
            SendError("UnityRequestFunctionInt Error  msg  -> " + content + "<- error: " + e.toString(),e);
            return 0;
        }
    }

    //region 外部交互 (string 返回类型)
    public static String UnityRequestFunctionString(String content)
    {
        try
        {
            SendLog("SDKInterface UnityRequestFunctionString receive ->"  + content + "<-");

            JSONObject json = new JSONObject(content);
            String moduleName = json.getString(SDKInterfaceDefine.ModuleName);

            switch(moduleName)
            {
                case SDKInterfaceDefine.ModuleName_Other:
                    return "";
                case SDKInterfaceDefine.ModuleName_RealName:
                    return RealNameString(json);
                default:
                    SendError("UnityRequestFunctionString : not support function name ->" + content + "<-",null);
                    return "0";
            }
        }
        catch (Exception e)
        {
            SendError("UnityRequestFunctionString Error  msg  -> " + content + "<- error: " + e.toString(),e);
            return "0";
        }
    }

    //region 外部交互 (bool 返回类型)
    public static boolean UnityRequestFunctionBool(String content)
    {
        try
        {
            SendLog("SDKInterface UnityRequestFunctionBool receive ->"  + content + "<-");

            JSONObject json = new JSONObject(content);
            String functionName = json.getString(SDKInterfaceDefine.ModuleName);

            switch(functionName)
            {
                case SDKInterfaceDefine.ModuleName_RealName: return RealNameBool(json);
                default:SendError("UnityRequestFunctionString : not support function name ->" + content + "<-",null);return false;
            }

        }
        catch (Exception e)
        {
            SendError("UnityRequestFunctionString Error  msg  -> " + content + "<- error: " + e.toString(),e);
            return false;
        }
    }

    public static String GetProperties(String key,String defaultValue)
    {
        try {
            //默认读取Channel文件
            return GetProperties(SDKInterfaceDefine.FileName_ChannelProperties,key,defaultValue);
        }
        catch (Exception e)
        {
            return defaultValue;
        }
    }

    public static String GetProperties(String properties,String key,String defaultValue)
    {
        try {
            //2024 1121 允许第三方重打包工具增加额外配置文件覆盖原始配置
            if(PropertieTool.PropertiesIsExist(GetContext(),SDKInterfaceDefine.FileName_ExtraProperties))
            {
                if( PropertieTool.getProperties(GetContext(), SDKInterfaceDefine.FileName_ExtraProperties).containsKey(key)) {
                    return PropertieTool.getProperties(GetContext(), SDKInterfaceDefine.FileName_ExtraProperties).getProperty(key);
                }
            }

            if( PropertieTool.getProperties(GetContext(), properties).containsKey(key))
            {
                return PropertieTool.getProperties(GetContext(), properties).getProperty(key);
            }
            else
            {
                return defaultValue;
            }
        }
        catch (Exception e)
        {
            return defaultValue;
        }
    }

    public static String GetSupportLoginPlatform()
    {
        String result = "";
        for (int i = 0; i < loginSDKList.size(); i++)
        {
            result += loginSDKList.get(i).SDKName;

            if(i != loginSDKList.size() -1 )
            {
                result +="|";
            }
        }
        return result;
    }

    public static void SendMessage(String content)
    {
        if(isLog)
        {
            Log.d("Unity","SendMessage ->" + content + "<-");
        }

        if(isCallBack)
        {
            UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, content);
        }
    }

    public static void SendMessage(JSONObject json)
    {
        SendMessage(json.toString());
    }

    public static void SendError(String errorContent,Exception e)
    {
        SendError(errorContent+ "\n" + GetCallStrack(e));
    }

    public static void SendError(String errorContent)
    {
        try
        {
            if(isLog)
            {
                Log.e("Unity", "SendError ->" + errorContent + "<-");
            }

            if(isCallBack)
            {
                JSONObject jo = new JSONObject();
                jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Debug);
                jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.FunctionName_OnError);
                jo.put(SDKInterfaceDefine.ParameterName_Content, errorContent);

                UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, jo.toString() );
            }

        }
        catch (Exception ex)
        {
            if(isLog)
            {
                Log.e("Unity", "SendError Exception ->" + ex.toString() + "\n" + GetCallStrack(ex) + "<-");
            }
        }
    }

    public static boolean IsDebug()
    {
        return isLog;
    }
    public static boolean IsMultiDex()
    {
        return isMultiDex;
    }

    public static void SendLog(String LogContent)
    {
        if(isLog)
        {
            Log.d("Unity","SendLog ->" + LogContent + "<-");

            try
             {
                  if(isCallBack) {
                    JSONObject jo = new JSONObject();
                    jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Debug);
                    jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.FunctionName_OnLog);
                    jo.put(SDKInterfaceDefine.ParameterName_Content, LogContent);

                    UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, jo.toString());
                }
            }
            catch (Exception e)
            {
                Log.e("Unity","SendLog Exception ->" + e.toString() + "<-");
            }
        }
    }

    //endregion

    //region Init
    static void Init(JSONObject json)
    {
        Init();
        InitActResultRequest();

        SendLog("SDKManager Init " );
        try
        {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                try {
                    entry.getValue().Init(json);
                }
                catch (Exception e)
                {
                    SendError(entry.getKey() + "Init Error:" + e.toString(),e);
                }
            }
        }
        catch (Exception e)
        {
            SendError("Init Exception: ->" + e.toString(),e);
        }
    }

    static void InitActResultRequest()
    {
        class StartThread implements Runnable{
            public void run(){
                actResultRequest = new ActResultRequest( UnityPlayer.currentActivity);
            }
        }
        UnityPlayer.currentActivity.runOnUiThread(new StartThread());
    }

    //endregion

    //region 登陆

    static ArrayList<SDKBase> loginSDKList;

    static void InitLoginSDK(JSONObject json) {
        loginSDKList = new ArrayList<>();

        String loginClassNameConfig = SdkManifest.getProperty("Log");
        String[] loginClassNameList = loginClassNameConfig.split("\\|");

        SendLog("LogLogin Init ->" + loginClassNameConfig);
        //加载对应类，并放入loginSDKList
        for (int i = 0; i < loginClassNameList.length; i++) {

            if (loginClassNameList[i] != null
                    && loginClassNameList[i] != "") {
                try {

                    String className = loginClassNameList[i];
                    SDKBase ins = GetClass(className,json);

                    loginSDKList.add(ins);
                } catch (Exception e) {
                    SendError(e.toString(), e);
                }
            }
        }
    }

    public static void Login(JSONObject json)
    {
        try
        {
            ILogin login = (ILogin)GetSDK(json,loginSDKList);
            String functionName = json.getString(SDKInterfaceDefine.FunctionName);

            if(login != null)
            {
                if(SDKInterfaceDefine.Login_FunctionName_Login.equals(functionName))
                {
                    login.Login(json);
                }
                else if(SDKInterfaceDefine.Login_FunctionName_LoginOut.equals(functionName))
                {
                    login.LoginOut(json);
                }
                else
                {
                    SendError("Not find functionName  ->" + functionName + "< >" + json.toString() + "<",null);
                }
            }
            else
            {
                SendError("Not find LogLogin Class -> " + json.toString(),null);
            }
        }
        catch (Exception e)
        {
            SendError(e.toString(),e);
        }
    }
    //endregion

    //region 支付
    static ArrayList<SDKBase> paySDKList;
    static void InitPay(JSONObject json)
    {
        paySDKList = new ArrayList<>();

        String payClassNameConfig = SdkManifest.getProperty("Pay");
        String[] payClassNameList = payClassNameConfig.split("\\|");

        SendLog("Pay Init ->" + payClassNameConfig);

        for (int i = 0; i < payClassNameList.length; i++) {

            if (payClassNameList[i] != null
                    && payClassNameList[i] != "") {
                //加载对应类，并放入loginSDKList
                try {
                    String className = payClassNameList[i];
                    SDKBase ins =  GetClass(className,json);

                    paySDKList.add(ins);
                } catch (Exception e) {
                    SendError(e.toString(), e);
                }
            }
        }
    }

    static void Pay(JSONObject json)
    {
        try {
            IPay pay =(IPay)GetSDK(json,paySDKList);
            if(pay != null)
            {
                String function = json.getString(SDKInterfaceDefine.FunctionName);

                switch (function)
                {
                    case SDKInterfaceDefine.Pay_FunctionName_GetGoodsInfo:
                        //商品信息全部请求
                        for (  int i =0;i<paySDKList.size();i++)
                        {
                            IPay tmp = (IPay)paySDKList.get(i);
                            tmp.GetGoodsInfo(json);
                        }

                        break;
                    case  SDKInterfaceDefine.Pay_FunctionName_ClearPurchase:
                        pay.ClearPurchase(json);
                        break;
                    case  SDKInterfaceDefine.FunctionName_OnPay:
                        pay.Pay(json);
                        break;
                    default:
                        SendLog("dont find pay function " + function + " json " + json);
                }
            }else
            {
                SendLog("dont find pay  json " + json);
            }
        }
        catch (Exception e)
        {
            SendError("Pay Error" + e.toString(),e);
        }
    }

    //与外部交互
    public static boolean GetPrePay(String SDKName)
    {
        SendLog("GetPrePay >" + SDKName + "<");

        for (int i = 0; i < paySDKList.size(); i++) {

            if(paySDKList.get(i).SDKName.equals(SDKName))
            {
                IPay pay = (IPay)paySDKList.get(i);
                return pay.IsPrePay();
            }
        }

        return  false;
    }

    public static boolean GetReSendPay(String SDKName)
    {
        SendLog("GetReSendPay >" + SDKName + "<");

        for (int i = 0; i < paySDKList.size(); i++) {

            if(paySDKList.get(i).SDKName.equals(SDKName))
            {
                IPay pay = (IPay)paySDKList.get(i);
                return pay.IsReSendPay();
            }
        }

        return  false;
    }

    //endregion 支付

    //region 广告
    static ArrayList<SDKBase> adSDKList;
    static void InitAD(JSONObject json) {
        adSDKList = new ArrayList<>();

        String adClassNameConfig = SdkManifest.getProperty("AD");
        String[] adClassNameList = adClassNameConfig.split("\\|");

        SendLog("AD init ->" + adClassNameConfig + " adClassNameList length is " + adClassNameList.length);

        for (int i = 0; i < adClassNameList.length; i++) {
            //加载对应类，并放入loginSDKList

            if (adClassNameList[i] != null
                    && adClassNameList[i] != "") {
                try {
                    String className = adClassNameList[i];
                    SDKBase ins =  GetClass(className,json);

                    adSDKList.add(ins);
//                    SendLog("Put AD SDKName >" + ins.SDKName + "< adSDKList size is " + adSDKList.size());
                } catch (Exception e) {
                    SendError(e.toString(), e);
                }
            }
        }
    }

    static void AD(JSONObject json) {
        try {
            IAD ad = (IAD) GetSDK(json, adSDKList);
            if (ad != null) {

                String functionName = json.getString(SDKInterfaceDefine.FunctionName);
                switch (functionName)
                {
                    case SDKInterfaceDefine.AD_FunctionName_PlayAD:
                        ad.PlayAD(json);break;
                    case SDKInterfaceDefine.AD_FunctionName_CloseAD:
                        ad.CloseAD(json);break;
                    case SDKInterfaceDefine.AD_FunctionName_LoadAD:
                        ad.LoadAD(json);
                    default:
                        SendError("Not find AD Function " + functionName,null);
                }
            }
            else
            {
                SendError("Not find AD Class -> " + json.toString(),null);
            }
        }
        catch (Exception e) {
            SendError("SDKInterface AD json:  " + json + " e:" + e ,e);
        }
    }

    public static boolean ADIsLoad(String content)
    {
        try {
            JSONObject json = new JSONObject(content);

            IAD ad = (IAD) GetSDK(json, adSDKList);
            if (ad != null) {
                return ad.IsLoaded(json);
            }
            else
            {
                SendError("Not find AD Class -> " + json.toString() + " adSDKList is " + adSDKList.size(),null);
            }
        }
        catch (Exception e) {
            SendError("SDKInterface ADIsLoad error: " + e ,e);
        }
        return false;
    }
    //endregion

    //region 事件上报
    static ArrayList<SDKBase> logList;
    static void InitLog(JSONObject json)
    {
        logList = new ArrayList<>();

        String logClassNameConfig = SdkManifest.getProperty("Log");
        String[] logClassNameList = logClassNameConfig.split("\\|");

        SendLog("Log Init ->" + logClassNameConfig);

        for (int i = 0 ; i < logClassNameList.length ; i++)
        {
            if (logClassNameList[i] != null
                    && logClassNameList[i] != "") {
                //加载对应类，并放入loginSDKList
                try {
                    String className = logClassNameList[i];
                    SDKBase ins =  GetClass(className,json);

                    logList.add(ins);
                } catch (Exception e) {
                    SendError(e.toString(), e);
                }
            }
        }
    }

    static void Log(JSONObject json)
    {
        for (int i = 0; i < logList.size(); i++) {
            ILog log = (ILog) logList.get(i);
            LogLogic(log,json);
        }
    }

    static void LogLogic(ILog log,JSONObject json)
    {
        try {
            String logFunction = json.getString(SDKInterfaceDefine.FunctionName);

            switch (logFunction) {
                case SDKInterfaceDefine.Log_FunctionName_Login:
                    log.LogLogin(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_LoginOut:
                    log.LogLoginOut(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_Event:
                    log.LogEvent(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_LogPay:
                    log.LogPay(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_LogError:
                    log.LogError(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_LogPaySuccess:
                    log.LogPaySuccess(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_RewardVirtualCurrency:
                    log.RewardVirtualCurrency(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_PurchaseVirtualCurrency:
                    log.LogPurchaseVirtualCurrency(json);
                    break;
                case SDKInterfaceDefine.Log_FunctionName_UseItem:
                    log.LogUseItem(json);
                    break;
                default:
                    SendError("Don't support Log_FunctionName " + logFunction, null);
            }

        } catch (JSONException e) {
            SendError("Log Exception " + e.toString(),e);
        }
    }

    //endregion

    // region 实名制
    static ArrayList<SDKBase> realNameSDKList;

    static void RealName(JSONObject json) {
        try {
            IRealName realName = (IRealName) GetSDK(json, realNameSDKList);
            if (realName != null) {

                String functionName = json.getString(SDKInterfaceDefine.FunctionName);
                switch (functionName)
                {
                    case SDKInterfaceDefine.RealName_FunctionName_StartRealNameAttestation:
                        realName.StartRealNameAttestation();break;
                    case SDKInterfaceDefine.RealName_FunctionName_LogPayAmount:
                        realName.LogPayAmount(json);break;
                    case SDKInterfaceDefine.RealName_FunctionName_CheckPayLimit:
                        realName.CheckPayLimit(json);break;
                    case SDKInterfaceDefine.RealName_FunctionName_OnLogin:
                        realName.OnLogin(json);break;
                    case SDKInterfaceDefine.RealName_FunctionName_OnLogout:
                        realName.OnLogout();
                        break;
                    default:
                        SendError("Not find RealName Function " + functionName,null);
                }
            }
            else
            {
                SendError("Not find RealName Class -> " + json.toString(),null);
            }
        }
        catch (Exception e) {
            SendError("SDKInterface RealName json:  " + json + " e:" + e ,e);
        }
    }

    static boolean RealNameBool(JSONObject json) {
        try {
            IRealName realName = (IRealName) GetSDK(json, realNameSDKList);
            if (realName != null) {

                String functionName = json.getString(SDKInterfaceDefine.FunctionName);
                switch (functionName)
                {
                    case SDKInterfaceDefine.RealName_FunctionName_IsAdult:
                        if(realName.GetRealNameType().equals(RealNameStatus.NotNeed))
                        {
                            //不需要实名认证，默认成年
                            return true;
                        }
                        else
                        {
                            return realName.IsAdult();
                        }
                    default:
                        SendError("Not find RealNameBool Function " + functionName,null);
                        return true;
                }
            }
            else
            {
                String functionName = json.getString(SDKInterfaceDefine.FunctionName);
                switch (functionName)
                {
                    case SDKInterfaceDefine.RealName_FunctionName_IsAdult:
                        SendLog("Not find RealNameBool Class+ RealName_FunctionName_IsAdult is true" );
                        return true;
                    case SDKInterfaceDefine.RealName_FunctionName_CheckPayLimit:
                        //没实现接口，默认无购买限制
                        SendLog("Not find RealNameBool Class+ RealName_FunctionName_CheckPayLimit is false" );
                        return false;
                }


                SendError("Not find RealNameBool Class -> " + json.toString(),null);
                return true;
            }
        }
        catch (Exception e) {
            SendError("SDKInterface RealNameBool json:  " + json + " e:" + e ,e);
            return true;
        }
    }

    static String RealNameString(JSONObject json) {
        try {
            IRealName realName = (IRealName) GetSDK(json, realNameSDKList);
            if (realName != null) {

                String functionName = json.getString(SDKInterfaceDefine.FunctionName);
                switch (functionName)
                {
                    case SDKInterfaceDefine.RealName_FunctionName_GetRealNameType:
                        return realName.GetRealNameType().toString();

                    default:
                        SendError("Not find RealNameString Function " + functionName,null);
                        return RealNameStatus.NotNeed.toString();
                }
            }
            else
            {
                SendError("Not find RealNameString Class -> " + json.toString(),null);
                return RealNameStatus.NotNeed.toString();
            }
        }
        catch (Exception e) {
            SendError("SDKInterface RealNameString json:  " + json + " e:" + e ,e);
            return RealNameStatus.NotNeed.toString();
        }
    }

    static int RealNameInt(JSONObject json) {
        try {
            IRealName realName = (IRealName) GetSDK(json, realNameSDKList);
            if (realName != null) {

                String functionName = json.getString(SDKInterfaceDefine.FunctionName);
                switch (functionName)
                {
                    case SDKInterfaceDefine.RealName_FunctionName_GetTodayOnlineTime:
                        return realName.GetTodayOnlineTime();

                    default:
                        SendError("Not find RealNameInt Function " + functionName,null);
                        return -1;
                }
            }
            else
            {
                SendError("Not find RealNameInt Class -> " + json.toString(),null);
                return -1;
            }
        }
        catch (Exception e) {
            SendError("SDKInterface RealNameInt json:  " + json + " e:" + e ,e);
            return -1;
        }
    }

    //endregion

    //region 分享
    static ArrayList<SDKBase> shareSDKList;

    static void InitShare(JSONObject json) {
        shareSDKList = new ArrayList<>();

        String shareClassNameConfig = SdkManifest.getProperty("Share");
        String[] shareClassNameList = shareClassNameConfig.split("\\|");

        SendLog("Share init ->" + shareClassNameConfig);

        for (int i = 0; i < shareClassNameList.length; i++) {
            //加载对应类，并放入loginSDKList

            if (shareClassNameList[i] != null
                    && shareClassNameList[i] != "") {
                try {
                    String className = shareClassNameList[i];
                    SDKBase ins =  GetClass(className,json);

                    shareSDKList.add(ins);
                } catch (Exception e) {
                    SendError(e.toString(), e);
                }
            }
        }
    }

    public static void Share(JSONObject json,String thumbImage,String image)
    {
        try {
            IShare share =(IShare)GetSDK(json,shareSDKList);
            if(share != null)
            {
                String function = json.getString(SDKInterfaceDefine.FunctionName);
                share.Share(json,thumbImage,image);
            }else
            {
                SendLog("dont find share json " + json);
            }
        }
        catch (Exception e)
        {
            SendError("Share Error" + e.toString(),e);
        }
    }

    public static String GetSupportSharePlatform()
    {
        String result = "";
        for (int i = 0; i < shareSDKList.size(); i++)
        {
            result += shareSDKList.get(i).SDKName;

            if(i != shareSDKList.size() -1 )
            {
                result +="|";
            }
        }
        return result;
    }

    //endregion

    //region 事件接口

    public static String GetCallStrack(Exception e) {

        if(e == null)
        {
            return "";
        }

        String content = "";

        StackTraceElement[] stackElements = e.getStackTrace();

        if (stackElements != null) {
            for (int i = 0; i < stackElements.length; i++) {
                content += "\t at " +  stackElements[i].getClassName() +"." + stackElements[i].getMethodName()
                        + "(" + stackElements[i].getFileName() + ":" + stackElements[i].getLineNumber()+ ")\n";
            }
        }
        return content;
    }

    public static void SetActivityCallBack(int requestCode,ActResultRequest.Callback callback)
    {
        // mRequestCode与callback需要一一对应
        sCallbacks.put(requestCode, callback);
    }

    public static void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        SendLog("SdkInterface onActivityResult requestCode " + requestCode + " resultCode: " + resultCode);

        ActResultRequest.Callback callback = sCallbacks.get(requestCode);
        sCallbacks.remove(requestCode);

        if (callback != null) {
            callback.onActivityResult(requestCode,resultCode, data);
        }

        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnActivityResult(requestCode,resultCode, data);
            }
        }
        catch (Exception e)
        {
            SendError("onActivityResult Error:" + e.toString(),e);
        }
    }

    public static void OnApplicationCreate()
    {
        SendLog("SDKInterface OnApplicationCreate " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnApplicationCreate();
            }
        }
        catch (Exception e)
        {
            SendError("OnApplicationCreate Error:" + e.toString(),e);
        }
    }

    public static void AttachBaseContext(Context base)
    {
        SendLog("SDKInterface AttachBaseContext " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().AttachBaseContext(base);
            }
        }
        catch (Exception e)
        {
            SendError("AttachBaseContext Error:" + e.toString(),e);
        }
    }

    //SDKinterface 有三种初始化路径
    //一个是从Application 过来 另一个是从Activity过来 最后是通过unity调用
    //通过isInit字段保证只初始化一次
    public  static void Init()
    {
        if(!isInit) {
            isInit = true;

            try {
                SendLog("SDKInterBase OnCreate ");

                InitSdkManifestProperty();

                //加载当前环境下有的SDK放入SDK接口内
                InitLoginSDK(null);
                InitLog(null);
                InitPay(null);
                InitAD(null);
                InitShare(null);
                InitOther(null);
                InitRealName(null);
            } catch (Exception e) {
                SendError("OnCreate Error " + e, e);
            }
        }
    }

    public static void OnCreate(Bundle bundle)
    {
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnCreate();
            }
        }
        catch (Exception e)
        {
            SendError("OnCreate Error:" + e.toString(),e);
        }
    }

    public static void OnStart()
    {
        SendLog("SDKInterBase OnStart " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnStart();
            }
        }
        catch (Exception e)
        {
            SendError("Other Error:" + e.toString(),e);
        }
    }

    public static void OnRestart()
    {
        SendLog("SDKInterBase OnStart " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnRestart();
            }
        }
        catch (Exception e)
        {
            SendError("Other Error:" + e.toString(),e);
        }
    }

    public static void OnDestroy()
    {
        SendLog("SDKInterBase OnDestroy " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnDestroy();
            }
        }
        catch (Exception e)
        {
            SendError("Other Error:" + e.toString(),e);
        }
    }

    public static void OnPause()
    {
        SendLog("SDKInterBase OnPause " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnPause();
            }
        }
        catch (Exception e)
        {
            SendError("OnPause Error:" + e.toString(),e);
        }
    }

    public static void OnStop()
    {
        SendLog("SDKInterBase OnStop " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnStop();
            }
        }
        catch (Exception e)
        {
            SendError("OnStop Error:" + e.toString(),e);
        }
    }

    public static void OnResume()
    {
        SendLog("SDKInterBase OnResume " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnResume();
            }
        }
        catch (Exception e)
        {
            SendError("OnResume Error:" + e.toString(),e);
        }
    }

    public static void OnRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults)
    {
        SendLog("SDKInterBase OnRequestPermissionsResult " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnRequestPermissionsResult(requestCode,permissions,grantResults);
            }
        }
        catch (Exception e)
        {
            SendError("OnRequestPermissionsResult Error:" + e.toString(),e);
        }
    }

    public static void OnNewIntent(Intent intent)
    {
        SendLog("SDKInterBase OnNewIntent " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().OnNewIntent(intent);
            }
        }
        catch (Exception e)
        {
            SendError("OnNewIntent Error:" + e.toString(),e);
        }
    }

    public static void onSaveInstanceState(Bundle outState)
    {
        SendLog("SDKInterBase onSaveInstanceState " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().onSaveInstanceState(outState);
            }
        }
        catch (Exception e)
        {
            SendError("onSaveInstanceState Error:" + e.toString(),e);
        }
    }

    public static void onRestoreInstanceState(Bundle savedInstanceState)
    {
        SendLog("SDKInterBase onRestoreInstanceState " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().onRestoreInstanceState(savedInstanceState);
            }
        }
        catch (Exception e)
        {
            SendError("onRestoreInstanceState Error:" + e.toString(),e);
        }
    }

    public static void onConfigurationChanged(Configuration newConfig)
    {
        SendLog("SDKInterBase onConfigurationChanged " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().onConfigurationChanged(newConfig);
            }
        }
        catch (Exception e)
        {
            SendError("onConfigurationChanged Error:" + e.toString(),e);
        }
    }

    public static void onAttachedToWindow()
    {
        SendLog("SDKInterBase onAttachedToWindow " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().onAttachedToWindow();
            }
        }
        catch (Exception e)
        {
            SendError("onAttachedToWindow Error:" + e.toString(),e);
        }
    }

    public static void onWindowFocusChanged(boolean hasFocus)
    {
        SendLog("SDKInterBase onWindowFocusChanged " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().onWindowFocusChanged(hasFocus);
            }
        }
        catch (Exception e)
        {
            SendError("onWindowFocusChanged Error:" + e.toString(),e);
        }
    }

    public static void onBackPressed()
    {
        SendLog("SDKInterBase onBackPressed " );
        try {
            for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
            {
                entry.getValue().onBackPressed();
            }
        }
        catch (Exception e)
        {
            SendError("onBackPressed Error:" + e.toString(),e);
        }
    }

    //endregion

    //region 其他接口

    static ArrayList<SDKBase> otherSDKList;
    static void InitOther(JSONObject json) {
        otherSDKList = new ArrayList<>();

        String otherClassNameConfig = SdkManifest.getProperty("Other");
        String[] otherClassNameList = otherClassNameConfig.split("\\|");

        SendLog("Other Init ->" + otherClassNameConfig);

        for (int i = 0; i < otherClassNameList.length; i++) {
            //加载对应类，并放入loginSDKList

            if (otherClassNameList[i] != null
                    && otherClassNameList[i] != "") {
                try {
                    String className = otherClassNameList[i];
                    SDKBase ins =  GetClass(className,json);

                    otherSDKList.add(ins);
                } catch (Exception e) {
                    SendError(e.toString(), e);
                }
            }
        }
    }

    static void InitRealName(JSONObject json)
    {
        realNameSDKList = new ArrayList<>();

        String realNameeClassNameConfig = SdkManifest.getProperty("RealName");
        String[] realNameClassNameList = realNameeClassNameConfig.split("\\|");

        SendLog("RealName Init ->" + realNameeClassNameConfig);

        for (int i = 0; i < realNameClassNameList.length; i++) {
            //加载对应类，并放入realNameSDKList

            if (realNameClassNameList[i] != null
                    && realNameClassNameList[i] != "") {
                try {
                    String className = realNameClassNameList[i];
                    SDKBase ins =  GetClass(className,json);

                    realNameSDKList.add(ins);
                } catch (Exception e) {
                    SendError(e.toString(), e);
                }
            }
        }
    }

    static void Other(JSONObject json)
    {
        SendLog("SDKInterBase Other " + json.toString());
        try {
            String functionName = json.getString(SDKInterfaceDefine.FunctionName);

            if(json.has(SDKInterfaceDefine.SDKName))
            {
                IOther other = (IOther)GetSDK(json,otherSDKList);
                other.Other(json);
            }
            else
            {
                for (int i = 0; i < otherSDKList.size(); i++) {
                    IOther other = (IOther) otherSDKList.get(i);
                    String[] fs = other.GetFunctionName();
                    for (int j = 0; j < fs.length; j++)
                    {
                        SendLog(functionName+"Other => j: "  + j + " fs[] "+ fs[j] + " eq  ->" + fs[j].equals(functionName));

                        if(fs[j].equals(functionName))
                        {
                            other.Other(json);
                        }
                    }
                }
            }
        } catch (Exception e)
        {
            SendError("Other Error:" + e.toString(),e);
        }
    }

    static boolean ApplictaionQuit()
    {
        boolean isQuit = false;
        for (Map.Entry<String, SDKBase> entry : allClass.entrySet())
        {
            if(!isQuit)
            {
                isQuit = entry.getValue().OnAppplicationQuit();
            }
        }

        return isQuit;
    }

    static boolean IsSDKExist(String sdkName)
    {
        for (SDKBase temp: allClass.values()) {
            if(temp.SDKName.equals(sdkName))
            {
                return true;
            }
        }
        return false;
    }

    public static void InitSdkManifestProperty(Context context)
    {
        if(SdkManifest == null)
        {
            try {
                SdkManifest = PropertieTool.getProperties(context, "SdkManifest");
                isLog = GetIsLog();
                isMultiDex = GetIsMultiDex();

            } catch (IOException e) {
                SendError("InitSdkManifestProperty error",e);
            }
        }
    }

    public static void InitSdkManifestProperty()
    {
        if(SdkManifest == null)
        {
            try {
                SdkManifest = PropertieTool.getProperties(GetContext(), "SdkManifest");
                isLog = GetIsLog();
                isMultiDex = GetIsMultiDex();
            } catch (IOException e) {
                SendError("InitSdkManifestProperty error",e);
            }
        }
    }

    static boolean GetIsLog()  {

        if(SdkManifest.containsKey(SDKInterfaceDefine.PropertiesKey_IsLog))
        {
            return Boolean.parseBoolean(SdkManifest.getProperty(SDKInterfaceDefine.PropertiesKey_IsLog));
        }
        else
        {
            return  false;
        }
    }

    static boolean GetIsMultiDex()  {

        if(SdkManifest.containsKey(SDKInterfaceDefine.PropertiesKey_IsMultiDex))
        {
            return Boolean.parseBoolean(SdkManifest.getProperty(SDKInterfaceDefine.PropertiesKey_IsMultiDex));
        }
        else
        {
            return  false;
        }
    }

    //endregion

    //region 通用工具

    static SDKBase GetSDK(JSONObject json,ArrayList<SDKBase> list) throws Exception {

        if(isInit)
        {
            if(json.has(SDKInterfaceDefine.SDKName))
            {
                String SDKName = json.getString(SDKInterfaceDefine.SDKName);
                for (int i = 0; i < list.size(); i++)
                {
                    if(list.get(i).SDKName != null && list.get(i).SDKName.equals(SDKName))
                    {
                        return list.get(i);
                    }
                }

                String sdkList = "";
                for (int i = 0; i < list.size(); i++)
                {
                    sdkList+=list.get(i).SDKName +"|";
                }

                SendLog("GetSDK 找不到 SDKName:  SDKName ->" + SDKName + "<  sdkList ->" + sdkList + "<");
                return null;
            }
            else if(json.has(SDKInterfaceDefine.SDKIndex))
            {
                int index = json.getInt(SDKInterfaceDefine.SDKIndex);
                return list.get(index);
            }
            else
            {
                return list.get(0);
            }
        }
        else
        {
            SendLog("SDKManager尚未初始化！" );
            return null;
        }
    }

    public static Context GetContext()
    {
        return UnityPlayer.currentActivity.getApplicationContext();
    }

    static HashMap<String,SDKBase> allClass = new HashMap<String,SDKBase>() ;

    public  static SDKBase GetClass(String className,JSONObject json) throws Exception
    {
        if(allClass.containsKey(className))
        {
            return allClass.get(className);
        }
        else
        {
            Class cla = Class.forName(className);
            SDKBase sdk = (SDKBase)cla.newInstance();
            sdk.SDKName = SdkManifest.getProperty(className,className);
            allClass.put(className,sdk);

            return sdk;
        }
    }

    //endregion
}
