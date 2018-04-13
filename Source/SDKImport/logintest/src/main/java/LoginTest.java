import org.json.JSONObject;

import SdkInterface.ILogin;
import SdkInterface.SDKBase;

public class LoginTest extends SDKBase implements ILogin
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
