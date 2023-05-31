package com.pangle;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.component.reward.e;

import org.json.JSONObject;

import java.io.IOException;

import sdkInterface.IAD;
import sdkInterface.SDKBase;
import sdkInterface.define.ADResult;
import sdkInterface.define.ADType;

public class PangleSDK extends SDKBase implements IAD {

    String App_ID;
    String AD_ID;

    TTAdNative mTTAdNative;
    AdSlot adSlot;

    Boolean isLoad = false;

    TTRewardVideoAd mttRewardVideoAd;

    TTRewardVideoAd.RewardAdInteractionListener Rewardlistener;

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        try {
            App_ID = GetProperties().getProperty("App_ID");
            AD_ID = GetProperties().getProperty("AD_ID");
            TTAdSdk.init(GetCurrentActivity(), buildConfig(), new TTAdSdk.InitCallback() {
                @Override
                public void success() {
                    //load pangle ads after this method is triggered.
                    SendLog("PangleSDK Init success " );

                    LoadAD(null);
                }

                @Override
                public void fail(int code, String msg) {
                    SendLog("PangleSDK Init fail code: " + code + " msg: " + msg);
                }
            });


            Rewardlistener = new TTRewardVideoAd.RewardAdInteractionListener() {
                @Override
                public void onAdVideoBarClick() {
                    SendLog("PangleSDK Load Ad onAdVideoBarClick" );
                    CallBackADReward(ADType.Reward, ADResult.Show_Click,"");
                }

                @Override
                public void onAdClose() {
                    SendLog("PangleSDK Load Ad onAdClose" );
                    CallBackADReward(ADType.Reward, ADResult.Show_Skipped,"");
                }

                @Override
                public void onVideoComplete() {
                    SendLog("PangleSDK Load Ad onVideoComplete" );
//                        CallBackADReward(ADType.Reward, ADResult.Show_Start,"");
                }

                @Override
                public void onVideoError() {
                    SendLog("PangleSDK Load Ad onVideoError" );
                    CallBackADReward(ADType.Reward, ADResult.Show_Failed,"");
                }

                @Override
                public void onRewardVerify(boolean rewardVerify, int rewardAmount, String rewardName, int errorCode, String errorMsg) {
                    SendLog("PangleSDK Load Ad onRewardVerify" );
                    CallBackADReward(ADType.Reward, ADResult.Show_Finished,"");
                }

                @Override
                public void onSkippedVideo() {
                    SendLog("PangleSDK Load Ad onSkippedVideo" );
                    CallBackADReward(ADType.Reward, ADResult.Show_Skipped,"");
                }

                @Override
                public void onAdShow() {
                    SendLog("PangleSDK Load Ad onAdShow" );
                    CallBackADReward(ADType.Reward, ADResult.Show_Start,"");
                }
            };


        } catch (Exception e) {
            SendError("PangleSDK Init Error " + e.toString(),e);
        }
    }

    private TTAdConfig buildConfig() {
        return new TTAdConfig.Builder()
                .appId(App_ID)
                .supportMultiProcess(false)
                .coppa(0) //CoppaValue: 0 adult, 1 child
                .build();
    }

    @Override
    public void LoadAD(JSONObject json) {

        mTTAdNative = TTAdSdk.getAdManager().createAdNative(GetCurrentActivity().getApplicationContext());
        adSlot = new AdSlot.Builder()
                .setCodeId(AD_ID)
                .build();

        mTTAdNative.loadRewardVideoAd(adSlot, new TTAdNative.RewardVideoAdListener() {
            @Override
            public void onError(int code, String message) {
                SendLog("PangleSDK Load Ad Error code: " + code + " msg: " + message);
                CallBackADReward(ADType.Reward, ADResult.Load_Failure,"");

                isLoad = false;
            }

            @Override
            public void onRewardVideoCached() {
                SendLog("PangleSDK Load Ad onRewardVideoCached" );
                CallBackADReward(ADType.Reward, ADResult.Load_Success,"");

                isLoad = true;
            }

            @Override
            public void onRewardVideoAdLoad(TTRewardVideoAd ttRewardVideoAd) {
                SendLog("PangleSDK Load Ad onRewardVideoAdLoad" );
                CallBackADReward(ADType.Reward, ADResult.Load_Success,"");

                isLoad = true;

                mttRewardVideoAd = ttRewardVideoAd;
                mttRewardVideoAd.setRewardAdInteractionListener(Rewardlistener);
            }
        });
    }

    @Override
    public void PlayAD(JSONObject json) {

        if (mttRewardVideoAd != null) {

            GetCurrentActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    SendLog("Pangle PlayAD UI主线程去执行 " );
                    mttRewardVideoAd.showRewardVideoAd(GetCurrentActivity());
                }
            });

        }
        else
        {
            mTTAdNative = TTAdSdk.getAdManager().createAdNative(GetCurrentActivity().getApplicationContext());
            adSlot = new AdSlot.Builder()
                    .setCodeId(AD_ID)
                    .build();

            mTTAdNative.loadRewardVideoAd(adSlot, new TTAdNative.RewardVideoAdListener() {
                @Override
                public void onError(int i, String s) {
                    SendLog("PangleSDK Load Ad Error code: " + i + " msg: " + s);
                    CallBackADReward(ADType.Reward, ADResult.Load_Failure,"");

                    isLoad = false;
                }

                @Override
                public void onRewardVideoAdLoad(TTRewardVideoAd ttRewardVideoAd) {

                    SendLog("PangleSDK Load Ad onRewardVideoAdLoad" );
                    CallBackADReward(ADType.Reward, ADResult.Load_Success,"");

                    isLoad = true;
                    mttRewardVideoAd = ttRewardVideoAd;
                    mttRewardVideoAd.setRewardAdInteractionListener(Rewardlistener);
                    //直接播放广告

                    GetCurrentActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            SendLog("Pangle PlayAD UI主线程去执行 " );
                            mttRewardVideoAd.showRewardVideoAd(GetCurrentActivity());
                        }
                    });
                }

                @Override
                public void onRewardVideoCached() {
                    SendLog("PangleSDK Load Ad onRewardVideoCached" );
                    CallBackADReward(ADType.Reward, ADResult.Load_Success,"");

                    isLoad = true;
                }
            });
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
