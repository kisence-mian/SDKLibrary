package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface ILogin
{
    void Login(JSONObject json);

    void LoginOut(JSONObject json);

    void OpenGemeCenter(JSONObject json);
}
