package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface IAD
{
    void AD(JSONObject json);

    void LoadAD(String adType,String tag );

    void PlayAD(String adType,String tag );

    void CloseAD(String adType,String tag );

    Boolean IsLoaded(String adType,String tag );
}
