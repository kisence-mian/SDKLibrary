package sdkInterface;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.util.SparseArray;

import com.unity3d.player.UnityPlayer;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import sdkInterface.tool.ActResultRequest;

/**
 * Created by GaiKai on 2018/4/3.
 */

public class SdkInterface
{
    static final String CallBackFuntionName = "OnSDKCallBack";
    static boolean isInit = false;
    static boolean isLog = false;

    static Properties SdkManifest;
    static String CallBackObjectName;

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
            JSONObject json = new JSONObject(content);
            String functionName = json.getString(SDKInterfaceDefine.ModuleName);

            switch(functionName)
            {
                case SDKInterfaceDefine.ModuleName_Init:Init(json);break;
                case SDKInterfaceDefine.ModuleName_Login:Login(json);break;
                case SDKInterfaceDefine.ModuleName_Log:Log(json);break;
                case SDKInterfaceDefine.ModuleName_AD:AD(json);break;
                case SDKInterfaceDefine.ModuleName_Pay:Pay(json);break;
                case SDKInterfaceDefine.ModuleName_Other:Other(json);break;
                default:SendError("UnityRequestFunction : not support function name " + content,null);
            }

            InitActResultRequest();
        }
        catch (Exception e)
        {
            SendError("UnityRequestFunction Error  msg  -> " + content + " error: " + e.toString(),e);
        }
    }

    public static String GetProperties(String properties,String key,String defaultValue)
    {
        try {

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
            SendError("GetProperties Error " + e.toString() + " properties " + properties + " key " + key,e);
            return defaultValue;
        }
    }

    public static void SendMessage(String content)
    {
        if(isLog)
        {
            Log.d("Unity","SendMessage ->" + content + "<-");
        }

        UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, content);
    }

    public static void SendMessage(JSONObject json)
    {
        SendMessage(json.toString());
    }

    public static void SendError(String errorContent,Exception e)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Debug);
            jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.FunctionName_OnError);
            jo.put(SDKInterfaceDefine.ParameterName_Content, errorContent+ "\n" + GetCallStrack(e));

            UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, jo.toString() );
        }
        catch (Exception ex)
        {
            if(isLog)
            {
                Log.e("Unity", "SendError Exception ->" + ex.toString() + "\n" + GetCallStrack(ex) + "<-");
            }
        }

        if(isLog)
        {
            Log.e("Unity", "SendError ->" + errorContent + "\n" + GetCallStrack(e) + "<-");
        }
    }

    public static void SendLog(String LogContent)
    {
        if(isLog)
        {
            try
            {
                JSONObject jo = new JSONObject();
                jo.put(SDKInterfaceDefine.ModuleName, SDKInterfaceDefine.ModuleName_Debug);
                jo.put(SDKInterfaceDefine.FunctionName, SDKInterfaceDefine.FunctionName_OnLog);

                jo.put(SDKInterfaceDefine.ParameterName_Content, LogContent);

                UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, jo.toString());
            }
            catch (Exception e)
            {
                Log.e("Unity","SendLog Exception ->" + e.toString() + "<-");
            }

            Log.d("Unity","SendLog ->" + LogContent + "<-");
        }
    }

    //endregion

    //region Init
    static void Init(JSONObject json)
    {
        if(!isInit)
        {
            isInit = true;
            try
            {
                CallBackObjectName = json.getString(SDKInterfaceDefine.ListenerName);
                SdkManifest = PropertieTool.getProperties(GetContext(), "SdkManifest");
                isLog = GetIsLog();

                //加载当前环境下有的SDK放入SDK接口内
                InitLoginSDK(json);
                InitLog(json);
                InitPay(json);
                InitAD(json);
                InitOther(json);
            }
            catch (Exception e)
            {
                SendError("Init Exception: ->" + e.toString(),e);
            }
        }
    }

    static void InitActResultRequest()
    {
        class StartThread implements Runnable{
            public void run(){
                SendLog("Start InitActResultRequest Runnable");
                actResultRequest = new ActResultRequest( UnityPlayer.currentActivity);
                SendLog("Finish InitActResultRequest Runnable");
            }
        }
        UnityPlayer.currentActivity.runOnUiThread(new StartThread());
    }

    //endregion

    //region 登陆

    static ArrayList<SDKBase> loginSDKList;

    static void InitLoginSDK(JSONObject json) {
        loginSDKList = new ArrayList<>();

        String loginClassNameConfig = SdkManifest.getProperty("Login");
        String[] loginClassNameList = loginClassNameConfig.split("\\|");

        SendLog("Login Init ->" + loginClassNameConfig);
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
            if(login != null)
            {
                login.Login(json);
            }
            else
            {
                SendError("Not find Login Class -> " + json.toString(),null);
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
                pay.Pay(json);
            }
        }
        catch (Exception e)
        {
            SendError("Pay Error" + e.toString(),e);
        }
    }
    //endregion 支付

    //region 广告
    static ArrayList<SDKBase> adSDKList;
    static void InitAD(JSONObject json) {
        adSDKList = new ArrayList<>();

        String adClassNameConfig = SdkManifest.getProperty("AD");
        String[] adClassNameList = adClassNameConfig.split("\\|");

        SendLog("AD init ->" + adClassNameConfig);

        for (int i = 0; i < adClassNameList.length; i++) {
            //加载对应类，并放入loginSDKList

            if (adClassNameList[i] != null
                    && adClassNameList[i] != "") {
                try {
                    String className = adClassNameList[i];
                    SDKBase ins =  GetClass(className,json);

                    adSDKList.add(ins);
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
                ad.AD(json);
            }
            else
            {
                SendError("Not find AD Class -> " + json.toString(),null);
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
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
                    ins.Init(json);

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
            log.Log(json);
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

    static void Other(JSONObject json)
    {
        SendLog("SDKInterBase Other " + json.toString());
        try {
            String functionName = json.getString(SDKInterfaceDefine.FunctionName);
            for (int i = 0; i < otherSDKList.size(); i++) {
                IOther other = (IOther) otherSDKList.get(i);
                String[] fs = other.GetFunctionName();
                for (int j = 0; j < fs.length; j++)
                {
                    SendLog(functionName+"=> fs[] "  + j + " "+ fs[j] + " ->" + fs[j].equals(functionName));

                    if(fs[j].equals(functionName))
                    {
                        other.Other(json);
                    }
                }
            }
        } catch (Exception e)
        {
            SendError("Other Error:" + e.toString(),e);
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

                SendLog("GetSDK 找不到 SDKName ：" + SDKName );
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
            sdk.Init(json);
            allClass.put(className,sdk);

            return sdk;
        }
    }

    //endregion

    public static String GetCallStrack(Exception e) {

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
}
