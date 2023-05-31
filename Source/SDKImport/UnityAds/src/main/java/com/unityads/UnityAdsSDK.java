package com.unityads;

import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;

import org.json.JSONObject;

import java.io.IOException;

import sdkInterface.IAD;
import sdkInterface.SDKBase;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;

public class UnityAdsSDK extends SDKBase implements IAD {

    String UnityGameID;
    String AdUnitId;
    Boolean testMode = true;

    Boolean isLoad = false;

    IUnityAdsLoadListener loadListener;
    IUnityAdsShowListener showListener;

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        try {
            UnityGameID = GetProperties().getProperty("UnityGameID");
            AdUnitId = GetProperties().getProperty("AdUnitId");
            testMode = Boolean.parseBoolean(GetProperties().getProperty("TestMode","false"));

            UnityAds.initialize(GetCurrentActivity().getApplicationContext(), UnityGameID, testMode, new IUnityAdsInitializationListener() {
                @Override
                public void onInitializationComplete() {
                    SendLog("UnityAdsSDK Init onInitializationComplete");

                    //开始加载广告
                    LoadAD(null);
                }

                @Override
                public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String s) {
                    SendLog("UnityAdsSDK Init onInitializationFailed " +unityAdsInitializationError + " " + s);
                }
            });

            loadListener = new IUnityAdsLoadListener() {
                @Override
                public void onUnityAdsAdLoaded(String s) {
                    isLoad = true;
                    SendLog("UnityAds onUnityAdsAdLoaded " + s);

                    UnityAds.show(GetCurrentActivity(), AdUnitId, showListener);
                }

                @Override
                public void onUnityAdsFailedToLoad(String s, UnityAds.UnityAdsLoadError unityAdsLoadError, String s1) {
                    isLoad = false;

                    SendLog("UnityAds onUnityAdsFailedToLoad " + s + " " + unityAdsLoadError + " " + s1);
                }
            };

            showListener = new IUnityAdsShowListener() {
                @Override
                public void onUnityAdsShowFailure(String s, UnityAds.UnityAdsShowError unityAdsShowError, String s1) {
                    SendLog("UnityAds onUnityAdsShowFailure " + s);
                    CallBackADReward(ADType.Reward, ADResult.Show_Failed,s);
                    isLoad = false;
                }

                @Override
                public void onUnityAdsShowStart(String s) {
                    SendLog("UnityAds onUnityAdsShowStart " + s);
                    CallBackADReward(ADType.Reward, ADResult.Show_Start,s);
                    isLoad = false;
                }

                @Override
                public void onUnityAdsShowClick(String s) {
                    SendLog("UnityAds onUnityAdsShowClick " + s);
                    CallBackADReward(ADType.Reward, ADResult.Show_Click,s);
                    isLoad = false;
                }

                @Override
                public void onUnityAdsShowComplete(String s, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
                    SendLog("UnityAds onUnityAdsShowComplete " + s);
                    CallBackADReward(ADType.Reward, ADResult.Show_Finished,s);
                    isLoad = false;
                }
            };



        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    //只加载不播放
    @Override
    public void LoadAD(JSONObject json) {

        SendLog("UnityAds LoadAD " + json);

        UnityAds.load(AdUnitId, new IUnityAdsLoadListener() {
            @Override
            public void onUnityAdsAdLoaded(String s) {
                isLoad = true;
                SendLog("UnityAds onUnityAdsAdLoaded " + s);
            }

            @Override
            public void onUnityAdsFailedToLoad(String s, UnityAds.UnityAdsLoadError unityAdsLoadError, String s1) {
                isLoad = false;

                SendLog("UnityAds onUnityAdsFailedToLoad " + s + " " + unityAdsLoadError + " " + s1);
            }
        });
    }

    @Override
    public void PlayAD(JSONObject json) {

        SendLog("UnityAds PlayAD " + json);
        if(isLoad)
        {
            UnityAds.show(GetCurrentActivity(), AdUnitId, showListener);
        }
        else
        {
            //加载完毕立即播放
            UnityAds.load(AdUnitId,loadListener);
        }
    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return isLoad;
    }

}
