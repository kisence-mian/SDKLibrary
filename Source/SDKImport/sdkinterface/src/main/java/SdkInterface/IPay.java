package sdkInterface;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/3.
 */

public interface IPay
{
    void Pay(JSONObject json) ;

    boolean IsPrePay();

    boolean IsReSendPay();

    void GetGoodsInfo(JSONObject json) ; //查询商品信息

    void ClearPurchase(JSONObject json);//清除（已经发放过的商品）的记录

}
