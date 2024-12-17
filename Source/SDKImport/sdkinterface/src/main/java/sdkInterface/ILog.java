package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface ILog
{
    void LogLogin(JSONObject json);

    void LogLoginOut(JSONObject json);

    void LogPay(JSONObject json);

    void LogAD(JSONObject json);

    void LogPaySuccess(JSONObject json);

    void RewardVirtualCurrency(JSONObject json);

    void LogPurchaseVirtualCurrency(JSONObject json);

    void LogUseItem(JSONObject json);

    void LogEvent(JSONObject json);

    void LogError(JSONObject json);
}
