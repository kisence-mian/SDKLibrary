package SdkInterface;

import android.content.Context;
import android.util.Log;

import com.unity3d.player.UnityPlayer;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Properties;

import dalvik.system.DexClassLoader;

/**
 * Created by GaiKai on 2018/4/3.
 */

public class SdkInterface
{
    static final String CallBackFuntionName = "OnSDKCallBack";

    static String CallBackObjectName;
    static Properties SdkManifest;

    static String assetsPath = "file:///android_asset";

    //region 外部交互
    public static void UnityRequestFunction(String content)
    {
        try
        {
            JSONObject json = new JSONObject(content);
            String functionName = json.getString(SDKInterfaceDefine.ParameterName_FunctionName);

            switch(functionName)
            {
                case SDKInterfaceDefine.FunctionName_Init:Init(json);break;
                case SDKInterfaceDefine.FunctionName_Login:Login(json);break;
                case SDKInterfaceDefine.FunctionName_Log:Log(json);break;
                case SDKInterfaceDefine.FunctionName_AD:AD(json);break;
                case SDKInterfaceDefine.FunctionName_Pay:Pay(json);break;
                default:SendError("UnityRequestFunction not support function name " + json.toString(),null);
            }
        }
        catch (Exception e)
        {
            SendError(e.toString(),e);
        }
    }

    static void SendMessage(String content)
    {
        Log.d("Unity","SendMessage ->" + content + "<-");
        UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, content);
    }

    static void SendError(String errorContent,Exception e)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ParameterName_FunctionName, SDKInterfaceDefine.ParameterName_Error);
            jo.put(SDKInterfaceDefine.ParameterName_Content, errorContent);

            UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, jo.toString());
        }
        catch (Exception ex)
        {
            Log.e("Unity","SendError Exception ->" + ex.toString() + "<-");
        }

        Log.d("Unity","SendError ->" + errorContent + "<-");
        if(e != null)
        {
            e.printStackTrace();
        }
    }

    static void SendLog(String LogContent)
    {
        try
        {
            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ParameterName_FunctionName, SDKInterfaceDefine.FunctionName_Log);
            jo.put(SDKInterfaceDefine.ParameterName_Content, LogContent);

            UnityPlayer.UnitySendMessage(CallBackObjectName, CallBackFuntionName, jo.toString());
        }
        catch (Exception e)
        {
            Log.e("Unity","SendLog Exception ->" + e.toString() + "<-");
        }

        Log.d("Unity","SendLog ->" + LogContent + "<-");
    }

    //endregion

    //region Init

    static void Init(JSONObject json)
    {
        try
        {
            CallBackObjectName = json.getString(SDKInterfaceDefine.ParameterName_ListenerName);
            SdkManifest = PropertieTool.getProperties(GetContext(), "SdkManifest");

            //加载当前环境下有的SDK放入SDK接口内
            InitLoginSDK(json);
            InitLog(json);
            InitPay(json);
            InitAD(json);
        }
        catch (Exception e)
        {
            SendError("Init Exception: ->" + e.toString(),e);
        }
    }

    //endregion

    //region 登陆

    static ArrayList<ISDK> loginSDKList;

    static void InitLoginSDK(JSONObject json)
    {
        loginSDKList = new ArrayList<ISDK>();

        String loginClassNameConfig = SdkManifest.getProperty("Login");
        String[] loginClassNameList = loginClassNameConfig.split("|");

        SendLog(loginClassNameConfig);

        //加载对应类，并放入loginSDKList
        for (int i = 0 ; i < loginClassNameList.length ; i++)
            try {
                String className = loginClassNameList[i];
                ClassLoader dcl = GetContext().getClassLoader();

                Class c = dcl.loadClass(className);
                ILogin ins = (ILogin) c.newInstance();
                ins.Init(json);

                loginSDKList.add(ins);
            } catch (Exception e) {
                SendError(e.toString(), e);
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
    static ArrayList<ISDK> paySDKList;
    static void InitPay(JSONObject json)
    {
        paySDKList = new ArrayList<ISDK>();

        String payClassNameConfig = SdkManifest.getProperty("AD");
        String[] payClassNameList = payClassNameConfig.split("|");

        SendLog(payClassNameConfig);

        for (int i = 0; i < payClassNameList.length; i++) {
            //加载对应类，并放入loginSDKList
            try {
                String className = payClassNameList[i];
                ClassLoader dcl = GetClassLoader();

                Class c = dcl.loadClass(className);
                IPay ins = (IPay) c.newInstance();
                ins.Init(json);

                paySDKList.add(ins);
            } catch (Exception e) {
                SendError(e.toString(), e);
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
            e.printStackTrace();
        }
    }
    //endregion 支付

    //region 广告
    static ArrayList<ISDK> adSDKList;
    static void InitAD(JSONObject json) {
        adSDKList = new ArrayList<ISDK>();

        String adClassNameConfig = SdkManifest.getProperty("AD");
        String[] adClassNameList = adClassNameConfig.split("|");

        SendLog(adClassNameConfig);

        for (int i = 0; i < adClassNameList.length; i++) {
            //加载对应类，并放入loginSDKList
            try {
                String className = adClassNameList[i];
                ClassLoader dcl = GetClassLoader();

                Class c = dcl.loadClass(className);
                IAD ins = (IAD) c.newInstance();
                ins.Init(json);

                adSDKList.add(ins);
            } catch (Exception e) {
                SendError(e.toString(), e);
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
    static ArrayList<ISDK> logList;
    static void InitLog(JSONObject json)
    {
        logList = new ArrayList<ISDK>();

        String logClassNameConfig = SdkManifest.getProperty("Log");
        String[] logClassNameList = logClassNameConfig.split("|");

        SendLog(logClassNameConfig);

        for (int i = 0 ; i < logClassNameList.length ; i++)
        {
            //加载对应类，并放入loginSDKList
            try
            {
                String className = logClassNameList[i];
                ClassLoader dcl = GetClassLoader();

                Class c = dcl.loadClass(className);
                ILog ins = (ILog) c.newInstance();
                ins.Init(json);

                logList.add(ins);
            }
            catch (Exception e)
            {
                SendError(e.toString(),e);
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

    //region 通用工具

    static ISDK GetSDK(JSONObject json,ArrayList<ISDK> list) throws Exception {
        if(json.has(SDKInterfaceDefine.ParameterName_SDKName))
        {
            String SDKName = json.getString(SDKInterfaceDefine.ParameterName_SDKName);
            for (int i = 0; i < list.size(); i++)
            {
                if(list.get(i).GetSDKName() == SDKName)
                {
                    return list.get(i);
                }
            }

            return null;
        }
        else if(json.has(SDKInterfaceDefine.ParameterName_SDKIndex))
        {
            int index = json.getInt(SDKInterfaceDefine.ParameterName_SDKIndex);
            return list.get(index);
        }
        else
        {
            return list.get(0);
        }
    }

    public static Context GetContext()
    {
        return UnityPlayer.currentActivity.getApplicationContext();
    }

    static DexClassLoader loader;

    public static DexClassLoader GetClassLoader()
    {
        String LoadPath = "file:///android_asset/";

        if(loader == null)
        {
            loader = new DexClassLoader(LoadPath,LoadPath,null,GetContext().getClassLoader());
        }

        return loader;
    }

    //endregion
}
