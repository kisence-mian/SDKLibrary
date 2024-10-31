package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface IAD
{
//    void AD(JSONObject json);

    void LoadAD(JSONObject json);

    void PlayAD(JSONObject json);

    void CloseAD(JSONObject json);

    Boolean IsLoaded(JSONObject json) throws InterruptedException;
}
