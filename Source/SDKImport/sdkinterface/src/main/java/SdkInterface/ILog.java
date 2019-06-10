package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface ILog
{
    void Log(JSONObject json);

    void Login(JSONObject json);

    void LoginOut(JSONObject json);

    void OnEvent(JSONObject json);

    //    public void Log(JSONObject json) {
//        try {
//            String logFunction = json.getString(SDKInterfaceDefine.Log_FunctionName);
//
//            switch (logFunction) {
//                    case SDKInterfaceDefine.Log_FunctionName_Login:
//                        Login(json);
//                        break;
//                    case SDKInterfaceDefine.Log_FunctionName_LoginOut:
//                        LoginOut(json);
//                        break;
//                    case SDKInterfaceDefine.Log_FunctionName_Event:
//                        OnEvent(json);
//                    break;
//                default:
//                    SendError("Dont support Log_FunctionName " + logFunction, null);
//            }
//
//        } catch (JSONException e) {
//            SendError("Log Exception " + e.toString(),e);
//        }
//    }
}
