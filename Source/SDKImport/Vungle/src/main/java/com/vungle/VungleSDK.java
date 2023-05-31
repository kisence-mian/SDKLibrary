package com.vungle;
//import SDKinterface.SDKBase;

import org.json.JSONObject;

import java.io.IOException;

import sdkInterface.IAD;
import sdkInterface.SDKBase;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;

import com.vungle.warren.Vungle;
//import com.vungle.warren.AdConfig;              // Custom ad configurations
import com.vungle.warren.InitCallback;          // Initialization callback
import com.vungle.warren.LoadAdCallback;        // Load ad callback
import com.vungle.warren.PlayAdCallback;        // Play ad callback
//import com.vungle.warren.VungleNativeAd;        // MREC ad
//import com.vungle.warren.Banners;               // Banner ad
//import com.vungle.warren.VungleBanner;          // Banner ad
//import com.vungle.warren.Vungle.Consent;        // GDPR consent
//import com.vungle.warren.VungleSettings;         // Minimum disk space
import com.vungle.warren.error.VungleException;  // onError message

public class VungleSDK extends SDKBase implements IAD
{
//    String tag = "";
    String AppId = "";
    String AdId = "";

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        try {

            SendLog("VungleSDK Start Init");

            AppId = GetProperties().getProperty("AppID");
            AdId = GetProperties().getProperty("AdID");

            Vungle.init(AppId, GetCurrentActivity().getApplicationContext(), new InitCallback() {
                @Override
                public void onSuccess() {
                    // SDK has successfully initialized
                    SendLog("Vungle Init Success");
                }

                @Override
                public void onError(VungleException exception) {
                    // SDK has failed to initialize

                    SendError("Vungle Init Error " + exception.toString(),exception);
                }

                @Override
                public void onAutoCacheAdAvailable(String placementId) {
                    // Ad has become available to play for a cache optimized placement
                    SendLog("Vungle Init onAutoCacheAdAvailable " + placementId);
                }
            });


        } catch (IOException e) {
            SendError("VungleSDK Init Error " + e.toString(),e);
        }
    }

    @Override
    public void LoadAD(JSONObject json) {
        // Load Ad Implementation
        if (Vungle.isInitialized()) {
            Vungle.loadAd(AdId, new LoadAdCallback() {
                @Override
                public void onAdLoad(String placementReferenceId) {

                    CallBackADReward(ADType.Reward, ADResult.Load_Success,"");
                }

                @Override
                public void onError(String placementReferenceId, VungleException exception)
                {
                    SendError("Vungle Load AD Error " + placementReferenceId +" "+ exception.toString(),exception);
                    CallBackADReward(ADType.Reward, ADResult.Load_Failure,placementReferenceId + " " + exception.toString());
                }
            });
        }
    }

    @Override
    public void PlayAD(JSONObject json) {


        if (Vungle.canPlayAd(AdId)) {
            Vungle.playAd(AdId, null, new PlayAdCallback() {
                @Override
                public void creativeId(String s) {
                    SendLog("Vungle PlayAD creativeId " + s);
                }

                @Override
                public void onAdStart(String placementReferenceId)
                {
                    SendLog("Vungle PlayAD onAdStart " + placementReferenceId);
                    CallBackADReward(ADType.Reward,ADResult.Show_Start,"");
                }
                @Override
                public void onAdEnd(String placementReferenceId, boolean completed, boolean isCTAClicked)
                {
                    SendLog("Vungle PlayAD onAdEnd " + placementReferenceId +" "+ completed + " " + isCTAClicked);

                    CallBackADReward(ADType.Reward,ADResult.Show_Finished,"");
                }

                @Override
                public void onAdEnd(String s) {
                    SendLog("Vungle PlayAD onAdEnd " + s);
                    CallBackADReward(ADType.Reward,ADResult.Show_Finished,"");
                }

                @Override
                public void onAdClick(String s) {
                    SendLog("Vungle PlayAD onAdClick " + s);
                    CallBackADReward(ADType.Reward,ADResult.Show_Click,"");
                }

                @Override
                public void onAdRewarded(String s) {
                    SendLog("Vungle PlayAD onAdRewarded " + s);

                    CallBackADReward(ADType.Reward,ADResult.Show_Finished,"");
                }

                @Override
                public void onAdLeftApplication(String s) {
                    SendLog("Vungle PlayAD onAdLeftApplication " + s);
                }

                @Override public void onError(String placementReferenceId, VungleException exception)
                {
                    SendError("Vungle PlayAD onError " + exception,exception);
                    CallBackADReward(ADType.Reward,ADResult.Show_Failed,"");
                }

                @Override
                public void onAdViewed(String s) {
                    SendLog("Vungle PlayAD onAdViewed " + s);
                }
            });
        }
    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return Vungle.isInitialized();
    }
}
