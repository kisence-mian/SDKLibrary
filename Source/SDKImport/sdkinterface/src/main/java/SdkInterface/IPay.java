package SdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface IPay extends ISDK
{
    void Pay(JSONObject json);
}
