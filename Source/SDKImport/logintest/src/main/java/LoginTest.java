import org.json.JSONObject;

import SdkInterface.LoginBase;

public class LoginTest extends LoginBase
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
    }
}
