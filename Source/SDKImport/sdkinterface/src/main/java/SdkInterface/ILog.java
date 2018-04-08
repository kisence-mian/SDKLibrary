package SdkInterface;

import org.json.JSONObject;

import java.util.Map;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface ILog extends ISDK
{
    void Log(JSONObject json);

    void Log(String eventID, Map<String, String> data);

    void LoginLog(String accountID, Map<String, String> data);

    void LogEventBegin(String accountID, Map<String, String> data);

    void LogEventEnd(String accountID, Map<String, String> data);
}
