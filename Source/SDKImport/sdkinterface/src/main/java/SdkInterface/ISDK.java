package SdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/4.
 */

public interface ISDK
{
    String GetSDKName();
    void Init(JSONObject json);
}
