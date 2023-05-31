package com.ADopenMediation;

import android.content.Context;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;

import com.openmediation.sdk.InitCallback;
import com.openmediation.sdk.InitConfiguration;
import com.openmediation.sdk.OmAds;
import com.openmediation.sdk.utils.error.Error;
import com.openmediation.sdk.utils.model.Scene;
import com.openmediation.sdk.video.RewardedVideoAd;
import com.openmediation.sdk.video.RewardedVideoListener;

import org.json.JSONException;
import org.json.JSONObject;

import sdkInterface.IAD;
import sdkInterface.SDKBase;
import sdkInterface.SDKInterfaceDefine;
import sdkInterface.SdkInterface;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;

public class OpenMediationSDK extends SDKBase implements IAD {
    String app_key="";
    @Override
    public void OnCreate() {
        super.OnCreate();
        SendLog("OpenMediationSDK OnCreate");
        try {
            OmAds.setUserId(GetDeviceID());
            app_key=GetProperties().getProperty("APP_KEY");
            InitConfiguration configuration=new InitConfiguration.Builder()
                    .appKey(app_key)
                    .logEnable(false)
                    .build();
            OmAds.init(configuration, new InitCallback() {
                @Override
                public void onSuccess() {
                    SendLog("OpenMediationSDK Init Success");
                }

                @Override
                public void onError(Error result) {
                    SendError("OpenMediationSDK Init Error:"+result.getErrorMessage());
                }
            });
            SetADListener();
        }catch (Exception e){
            SendError("OpenMediationSDK Error:"+e.toString(),e);
        }
    }

    Boolean hasReward=false;
    //设置奖励回调监听
    private void SetADListener(){
        RewardedVideoAd.setAdListener(new RewardedVideoListener() {
            @Override
            public void onRewardedVideoAvailabilityChanged(boolean available) {
                if(available){
                    SendLog("OpenMediationSDK:有可用的激励广告");
                }
            }

            @Override
            public void onRewardedVideoAdShowed(Scene scene) {
                SendLog("OpenMediationSDK:用户点开了激励广告");
            }

            @Override
            public void onRewardedVideoAdShowFailed(Scene scene, Error error) {
                SendLog("OpenMediationSDK:播放激励广告失败>"+error.getErrorMessage());
            }

            @Override
            public void onRewardedVideoAdClicked(Scene scene) {
                SendLog("OpenMediationSDK:用户点击了激励广告");
            }

            @Override
            public void onRewardedVideoAdClosed(Scene scene) {
                SendLog("OpenMediationSDK:用户关闭了激励广告");
            }

            @Override
            public void onRewardedVideoAdStarted(Scene scene) {
                hasReward=false;
                SendLog("OpenMediationSDK:开始播放激励广告");
            }

            @Override
            public void onRewardedVideoAdEnded(Scene scene) {
                SendLog("OpenMediationSDK:激励广告播放完成");
                if(hasReward){
                    CallBackADReward(ADType.Reward, ADResult.Show_Finished,adTag);
                }
            }

            @Override
            public void onRewardedVideoAdRewarded(Scene scene) {
                hasReward=true;
                SendLog("OpenMediationSDK:用户播放完激励广告");
            }
        });
    }

    String adTag=null;
    @Override
    public void PlayAD(JSONObject json) {
        SendLog("OpenMediationSDK:收到播放广告指令");
        try{
            if(RewardedVideoAd.isReady()){
                RewardedVideoAd.showAd();
                adTag=json.getString(SDKInterfaceDefine.Tag);
            }
        }catch (JSONException e){

        }
    }

    @Override
    public void LoadAD(JSONObject json) {

    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        SendLog("OpenMediationSDK:收到广告判断指令");
        return RewardedVideoAd.isReady();
    }

    //获取用户设备号
    private String GetDeviceID(){
        String id= Secure.getString(SdkInterface.GetContext().getContentResolver(),Secure.ANDROID_ID);
        if(id.equals("9774d56d682e549c")){
            id=((TelephonyManager)SdkInterface.GetContext().getSystemService(Context.TELEPHONY_SERVICE)).getDeviceId();
        }
        if(id.isEmpty()){
            id="1";
        }
        SendLog("UserDeviceID:"+id);
        return id;
    }

    @Override
    public void OnResume() {
        super.OnResume();
        OmAds.onResume(GetCurrentActivity());
    }

    @Override
    public void OnPause() {
        super.OnPause();
        OmAds.onPause(GetCurrentActivity());
    }
}
