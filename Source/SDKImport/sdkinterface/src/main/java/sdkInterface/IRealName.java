package sdkInterface;
import org.json.JSONObject;

import sdkInterface.define.RealNameStatus;

/**
 * Created by LiuXiangHui on 2020/3/24.
 */

public interface IRealName
{
    RealNameStatus GetRealNameType(); //获取当前实名制状态

    boolean IsAdult();//是否是成年人

    void StartRealNameAttestation(); //开始实名认证

    int GetTodayOnlineTime();//获取今日在线时长  -1表示获取不到

    boolean CheckPayLimit(JSONObject json);//检测是否支付受限制

    void LogPayAmount(JSONObject json);//上报支付金额
}
