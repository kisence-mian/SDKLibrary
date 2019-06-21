package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface ILog
{
    void Login(JSONObject json);

    void LoginOut(JSONObject json);

    void LogPay(JSONObject json);

    void LogPaySuccess(JSONObject json);

    void RewardVirtualCurrency(JSONObject json);

    void PurchaseVirtualCurrency(JSONObject json);

    void UseItem(JSONObject json);

    void OnEvent(JSONObject json);


}
