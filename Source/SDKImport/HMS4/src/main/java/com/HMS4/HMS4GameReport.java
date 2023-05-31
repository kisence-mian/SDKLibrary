package com.HMS4;

import android.app.Activity;

import android.util.Log;

import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.jos.games.EventsClient;
import com.huawei.hms.jos.games.Games;

import com.huawei.hms.jos.games.playerstats.GamePlayerStatistics;
import com.huawei.hms.jos.games.playerstats.GamePlayerStatisticsClient;

import com.huawei.hms.support.hwid.result.AuthHuaweiId;

public class HMS4GameReport {
    public static int HMSRequestCode_Report = 8659;
    public static String ReportKey_Login = "";//上报ID—— 登录
    public static String ReportKey_Pay ="";//上报ID —— 支付
    public String TAG = "=====HMS4Report===";

    static HMS4GameReport hms4Report;
    Activity currentActivity;
    EventsClient client;

    public  static HMS4GameReport GetInstance()
    {
        if(hms4Report == null)
        {
            hms4Report = new HMS4GameReport();
        }
        return  hms4Report;
    }

    public  void InitReport(Activity activity)
    {
        currentActivity = activity;
        Log.d(TAG, "InitReport: Start");
        client = Games.getEventsClient(activity, HMS4Game.huaweiAccount);
    }


    //上报
    public void Report(String eventId,int growAmount)
    {
        Log.d(TAG, "Report: " + eventId + "=="+ (client == null));
        if(client == null)
        {
            return;
        }
        client.grow(eventId, growAmount);
    }

    //获取玩家信息
    public void GetPlayerInfo()
    {
        AuthHuaweiId mAuthHuaweiId = HMS4Game.huaweiAccount;
        GamePlayerStatisticsClient playerStatsClient = Games.getGamePlayerStatsClient(currentActivity, mAuthHuaweiId);

        if(playerStatsClient == null)
        {
            Log.i(TAG,"playerStatsClient is null");
            return;
        }

        final boolean ISREALTIME = true; //是否是即时是

        Task<GamePlayerStatistics> task = playerStatsClient.getGamePlayerStatistics(ISREALTIME);
        task.addOnSuccessListener(new OnSuccessListener<GamePlayerStatistics>() {
            @Override
            public void onSuccess(GamePlayerStatistics gamePlayerStatistics) {
                if (gamePlayerStatistics == null) {
                    Log.i(TAG,"playerStatsAnnotatedData is null, inner error");
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("IsRealTime:" + ISREALTIME);
                sb.append("\n---AverageSessionLength: " + gamePlayerStatistics.getAverageOnLineMinutes() + "\n---");
                sb.append("DaysSinceLastPlayed: " + gamePlayerStatistics.getDaysFromLastGame() + "\n---");
                sb.append("NumberOfPurchases: " + gamePlayerStatistics.getPaymentTimes() + "\n---");
                sb.append("NumberOfSessions: " + gamePlayerStatistics.getOnlineTimes() + "\n---");
                sb.append("TotalPurchasesAmountRange: " + gamePlayerStatistics.getTotalPurchasesAmountRange());
                Log.i(TAG,sb.toString());
            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(Exception e) {
                if (e instanceof ApiException) {
                    String result = "rtnCode:" + ((ApiException) e).getStatusCode();
                    Log.i(TAG,result);
                }
            }
        });

    }

}
