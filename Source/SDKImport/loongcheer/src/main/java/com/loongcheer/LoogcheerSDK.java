package com.loongcheer;

import com.loongcheer.admobsdk.admobInit.AdmobInit;
import com.loongcheer.admobsdk.admobUtils.AdmobUtils;
import com.loongcheer.admobsdk.callBack.AdRewardedCallBack;
import com.loongcheer.interactivesdk.config.GameConfig;

import org.json.JSONObject;
import sdkInterface.IAD;
import sdkInterface.IPay;
import sdkInterface.SDKBase;
import sdkInterface.SdkInterface;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;
import sdkInterface.tool.JavaUtils;

public class LoogcheerSDK extends SDKBase implements  IPay , IAD {

    String rewardVideoAdId;

    String ironSource_app_Key;
    String ironSource_placementname;

    String Pangle_app_id;
    String Pangle_app_name;

    @Override
    public void Init(JSONObject json) {
        SendLog("LoogcheerSDK Init");

        try {
            JavaUtils.VerifyClass("com.google.android.gms.common.internal.zzp");


            rewardVideoAdId = GetProperties().getProperty("rewardVideoAdId");

            ironSource_app_Key = GetProperties().getProperty("ironSource_app_key");
            ironSource_placementname = GetProperties().getProperty("ironSource_placementname");

            Pangle_app_id = GetProperties().getProperty("Pangle_app_id");
            Pangle_app_name = GetProperties().getProperty("Pangle_app_name");

            SendLog("rewardVideoAdId " + rewardVideoAdId);

            SendLog("ironSource_app_key " + ironSource_app_Key);
            SendLog("ironSource_placementname " + ironSource_placementname);

            SendLog("Pangle_app_id " + Pangle_app_id);
            SendLog("Pangle_app_name " + Pangle_app_name);

            GameConfig.setDebug(SdkInterface.IsDebug());

            GameConfig.setActivity(GetCurrentActivity());
            //Admob
            AdmobInit.getInstance().admobInit().rewardVideoAdId(rewardVideoAdId);

            // IronSource
            AdmobInit.getInstance().isInit(ironSource_app_Key);
            AdmobInit.getInstance().isRewardVideoAdId(ironSource_placementname);

            //穿山甲
            AdmobInit.getInstance().TTadInit(Pangle_app_id,Pangle_app_name,GetCurrentActivity().getApplication());

            AdmobInit.getInstance().setParallel(2);



        } catch (Exception e) {
            SendError("LoogcheerSDK Init error " + e,e );
        }
    }

    @Override
    public void OnResume() {
        AdmobInit.getInstance().onResume(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        AdmobInit.getInstance().onPause(GetCurrentActivity());
    }

    @Override
    public void Pay(JSONObject json) {

    }

    @Override
    public boolean IsPrePay() {
        return false;
    }

    @Override
    public boolean IsReSendPay() {
        return false;
    }

    @Override
    public void GetGoodsInfo(JSONObject json) {

    }

    @Override
    public void ClearPurchase(JSONObject json) {

    }

    @Override
    public void LoadAD(JSONObject json) {

    }

    @Override
    public void PlayAD(JSONObject json) {
        AdmobUtils.showRewardedVideoAd("", new AdRewardedCallBack() {
            @Override
            public void onAdError(String error) {
                SendLog("PlayAD .onAdError");
                CallBackADReward(ADType.Reward, ADResult.Show_Failed,error);
            }

            @Override
            public void onClose() {

                SendLog("PlayAD.onClose");
                CallBackADReward(ADType.Reward, ADResult.Show_Skipped,"");
            }

            @Override
            public void onShow() {
                SendLog("PlayAD.onShow");
                CallBackADReward(ADType.Reward, ADResult.Show_Start,"");
            }

            @Override
            public void onReward() {

                SendLog("PlayAD.onReward");

                CallBackADReward(ADType.Reward, ADResult.Show_Finished,"");
            }
            @Override
            public void onShowError(String s) {
                SendLog("PlayAD.onShowAdError " + s);
                CallBackADReward(ADType.Reward, ADResult.Show_Failed,s);
            }
        });
    }

    @Override
    public void CloseAD(JSONObject json) {
    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return AdmobUtils.queryCashRewardVideoA(rewardVideoAdId);
    }

}
