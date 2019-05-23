import org.json.JSONException;
import org.json.JSONObject;

import SdkInterface.ILogin;
import SdkInterface.SDKBase;
import SdkInterface.SDKInterfaceDefine;
import SdkInterface.SdkInterface;

public class DeviceLogin extends SDKBase implements ILogin
{
    @Override
    public void Init(JSONObject json)
    {
        SDKName = "LoginTest";
        SendLog("Recivice Login Init");
    }

    @Override
    public void Login(JSONObject json)
    {
        SendLog("Recivice Login");

        try
        {
            String AccountId = "Device_" + json.getString(SDKInterfaceDefine.Login_ParameterName_Device);

            JSONObject jo = new JSONObject();
            jo.put(SDKInterfaceDefine.ModuleName,SDKInterfaceDefine.ModuleName_Login);
            jo.put(SDKInterfaceDefine.FunctionName,SDKInterfaceDefine.FunctionName_OnLogin);

            jo.put(SDKInterfaceDefine.Login_ParameterName_AccountId,AccountId);

            SdkInterface.SendMessage(jo.toString());

        }
        catch (JSONException e)
        {
            SendError(e.toString(),e);
        }
    }
}
