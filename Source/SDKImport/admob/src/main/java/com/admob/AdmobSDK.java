package com.admob;

import android.app.Activity;
import android.os.Bundle;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;

import org.json.JSONObject;

import java.io.IOException;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import sdkInterface.SDKBase;
import sdkInterface.IAD;


public class AdmobSDK extends SDKBase implements IAD {

    private RewardedAd rewardedAd;

    String rewardVideoAdId = "";

    @Override
    public void OnCreate() {
        super.OnCreate();

        SendLog("AdmobSDK OnCreate ");

        try {
            rewardVideoAdId = GetProperties().getProperty("rewardVideoAdId");
            MobileAds.initialize(GetCurrentActivity(), new OnInitializationCompleteListener() {
                @Override
                public void onInitializationComplete(@NonNull InitializationStatus initializationStatus) {
                    SendLog("AdmobSDK onInitializationComplete " + initializationStatus);
                    InitComplete();
                }
            });
        } catch (Exception e) {
            SendError("Admob error " + e.toString(), e);
        }
    }

    void InitComplete() {
        rewardedAd = new RewardedAd() {
            @Override
            public void setServerSideVerificationOptions(@Nullable ServerSideVerificationOptions serverSideVerificationOptions) {
                SendLog("ADMob setServerSideVerificationOptions");
            }

            @Override
            public void setOnAdMetadataChangedListener(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener) {
                SendLog("ADMob setOnAdMetadataChangedListener");
            }

            @Nullable
            @Override
            public OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
                SendLog("ADMob getOnAdMetadataChangedListener");
                return null;
            }

            @NonNull
            @Override
            public Bundle getAdMetadata() {
                SendLog("ADMob getAdMetadata");
                return null;
            }

            @Override
            public void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener) {
                SendLog("ADMob show ");
            }

            @NonNull
            @Override
            public RewardItem getRewardItem() {
                SendLog("ADMob getRewardItem");
                return null;
            }

            @NonNull
            @Override
            public ResponseInfo getResponseInfo() {
                SendLog("ADMob setFullScreenContentCallback");
                return null;
            }

            @Override
            public void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
                SendLog("ADMob setFullScreenContentCallback");
            }

            @Nullable
            @Override
            public OnPaidEventListener getOnPaidEventListener() {
                SendLog("ADMob setFullScreenContentCallback");
                return null;
            }

            @Override
            public void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback) {
                SendLog("ADMob setFullScreenContentCallback");
            }

            @Nullable
            @Override
            public FullScreenContentCallback getFullScreenContentCallback() {

                SendLog("ADMob FullScreenContentCallback");
                return null;
            }

            @NonNull
            @Override
            public String getAdUnitId() {
                SendLog("ADMob getAdUnitId " + rewardVideoAdId);
                return rewardVideoAdId;
            }

            @Override
            public void setImmersiveMode(boolean b) {
                SendLog("ADMob setImmersiveMode");
            }
        };

    }

    @Override
    public void LoadAD(JSONObject json) {

    }

    @Override
    public void PlayAD(JSONObject json) {
        rewardedAd.show(GetCurrentActivity(), new OnUserEarnedRewardListener() {
            @Override
            public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
                SendLog("Admob PlayAD onUserEarnedReward " + rewardItem);
            }
        });
    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return true;
    }
}
