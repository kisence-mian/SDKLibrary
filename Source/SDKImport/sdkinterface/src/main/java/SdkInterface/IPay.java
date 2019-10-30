package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface IPay
{
    void Pay(JSONObject json) ;

    boolean IsPrePay();

    boolean IsReSendPay();
}
