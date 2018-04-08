package SdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface ILogin extends ISDK
{
    void Login(JSONObject json);
}
