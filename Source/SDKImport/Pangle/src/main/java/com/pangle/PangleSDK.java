package com.pangle;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTCustomController;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.TTAdInteractionListener;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.bytedance.sdk.openadsdk.mediation.init.MediationPrivacyConfig;

import java.lang.ref.WeakReference;

import org.json.JSONObject;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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

    AdLoadListener ewardlistener;

    @Override
    public void Init(JSONObject json) {
        super.Init(json);

        try {
            try {
                App_ID = GetProperties().getProperty("App_ID");
                AD_ID = GetProperties().getProperty("AD_ID");

            } catch (IOException e) {
                throw new RuntimeException(e);
            }

            TTAdManager ttAdManager = TTAdSdk.getAdManager();
            //step2:(可选，强烈建议在合适的时机调用):申请部分权限
            ttAdManager.requestPermissionIfNecessary(GetCurrentActivity());
            //step3:创建TTAdNative对象,用于调用广告请求接口

            mTTAdNative = ttAdManager.createAdNative(GetCurrentActivity().getApplicationContext());

            adSlot = new AdSlot.Builder()
                    .setCodeId(AD_ID) // 广告代码位Id
                    .setAdLoadType(TTAdLoadType.LOAD) // 本次广告用途：TTAdLoadType.LOAD实时；TTAdLoadType.PRELOAD预请求
//                .setRewardAmount(123)
//                .setRewardName("金币")
                    .build();

            //自动加载广告
            LoadAD(null);

        } catch (Exception e) {
            SendError("PangleSDK Init Error " + e.toString(),e);
        }
    }

    private TTAdConfig buildConfig(Context context) {
        return new TTAdConfig.Builder()
                .appId(App_ID)//应用ID
                .useMediation(true)//开启聚合功能，默认false
                .supportMultiProcess(true)//开启多进程
                .build();
    }

    @Override
    public void LoadAD(JSONObject json) {

        //step6:注册广告加载生命周期监听，请求广告
        ewardlistener = new AdLoadListener(GetCurrentActivity());
        mTTAdNative.loadRewardVideoAd(adSlot,ewardlistener);
    }

    @Override
    public void PlayAD(JSONObject json) {

        if(ewardlistener != null)
        {
            ewardlistener.showAd();

            //重新加载广告
            LoadAD(null);
        }
        else
        {
            CallBackADReward(ADType.Reward,ADResult.Show_Failed,"");
            LoadAD(null);
        }
    }

    @Override
    public void CloseAD(JSONObject json) {

    }

    @Override
    public Boolean IsLoaded(JSONObject json) {
        return isLoad;
    }

    private class AdLoadListener implements TTAdNative.RewardVideoAdListener {

        private final Activity mActivity;

        private TTRewardVideoAd mAd;

        private TTAdInteractionListener mInteractionListener =  new TTAdInteractionListener() {

            @Override
            public void onAdEvent(int code, Map map) {
                if(map == null) {
                    return;
                }
                switch (code){

                    case TTAdConstant.AD_EVENT_AUTH_DOUYIN:
                        // 抖音授权成功状态回调, 媒体可以通过map获取抖音openuid用以判断是否下发奖励
                        String uid = (String) map.get("open_uid");
                        SendLog("PangleSDK 授权成功 --> uid：" + uid);
                        break;

                    case TTAdConstant.AD_EVENT_EXCHANGE_COUPON_FINISH:
                        // 优惠券兑换回调
                        String isSuccess = String.valueOf( map.get("isSuccess"));
                        SendLog("PangleSDK 兑换结果：" + isSuccess);
                        break;

                }
            }
        };
        public AdLoadListener(Activity activity) {
            mActivity = activity;
        }

        /**
         * 广告加载过程中出错
         */
        @Override
        public void onError(int code, String message) {
            SendLog("PangleSDK Callback --> onError: " + code + ", " + message);
            CallBackADReward(ADType.Reward,ADResult.Load_Failure,"");
        }

        /**
         * 广告基础信息加载完成，此方法是回调后是广告可调用展示的最早时机
         *
         * @param ad 广告对象 在一次广告生命周期中onRewardVideoAdLoad与onRewardVideoCached回调中的ad是同一个对象
         */
        @Override

        public void onRewardVideoAdLoad(TTRewardVideoAd ad) {
            SendLog("PangleSDK rewardVideoAd loaded 广告类型：" + getAdType(ad.getRewardVideoAdType()));
            CallBackADReward(ADType.Reward,ADResult.Load_Success,"");
            handleAd(ad);
        }

        @Override

        public void onRewardVideoCached() {
            // 已废弃 请使用 onRewardVideoCached(TTRewardVideoAd ad) 方法
        }

        /**
         * 广告基础信息与素材缓存完成，此时调用广告展示流畅，是展示广告的最理想时机
         *
         * @param ad 广告对象 在一次广告生命周期中onRewardVideoAdLoad与onRewardVideoCached回调中的ad是同一个对象
         */
        @Override

        public void onRewardVideoCached(TTRewardVideoAd ad) {
            SendLog("PangleSDK rewardVideoAd cached 广告类型：" + getAdType(ad.getRewardVideoAdType()));
            CallBackADReward(ADType.Reward,ADResult.Load_Success,"");
            handleAd(ad);
        }

        /**
         * 处理广告对象
         */

        public void handleAd(TTRewardVideoAd ad) {
            if (mAd != null) {
                return;
            }
            mAd = ad;
            //【必须】广告展示时的生命周期监听

            mAd.setRewardAdInteractionListener(new AdLifeListener(mActivity));

            //【可选】再看一个展示时的生命状态监听

//            PlayAgainAdLifeListener playAgainAdLifeListener = new PlayAgainAdLifeListener(mActivity);
//            mAd.setRewardPlayAgainInteractionListener(playAgainAdLifeListener);
//            //【可选】再看一个入口与奖励显示控制器
//
//            PlayAgainController playAgainController = new PlayAgainController();
//            playAgainController.setPlayAgainAdLifeListener(playAgainAdLifeListener);
//            mAd.setRewardPlayAgainController(playAgainController);
            //【可选】监听下载状态
//            mAd.setDownloadListener(new DownloadStatusListener());

            /**
             * 注册广告事件监听， 目前只有授权事件定义，后续会扩展
             */
            mAd.setAdInteractionListener(mInteractionListener);
        }

        /**
         * 触发展示广告
         */
        public void showAd() {
            if (mAd == null) {
                SendLog("PangleSDK 当前广告未加载好，请先点击加载广告");
                return;
            }

            mAd.showRewardVideoAd(mActivity);
            // 广告使用后应废弃
            mAd = null;
        }
    }

    /**
     * 【必须】广告生命状态监听器
     */

    private class AdLifeListener implements TTRewardVideoAd.RewardAdInteractionListener {

        private final WeakReference<Context> mContextRef;

        public AdLifeListener(Context context) {
            mContextRef = new WeakReference<>(context);
        }

        @Override

        public void onAdShow() {
            // 广告展示
            SendLog("PangleSDK rewardVideoAd show");
        }

        @Override

        public void onAdVideoBarClick() {
            // 广告中产生了点击行为
            SendLog("PangleSDK rewardVideoAd bar click");
        }

        @Override

        public void onAdClose() {
            // 广告整体关闭
            SendLog("PangleSDK rewardVideoAd close");
        }

        //视频播放完成回调
        @Override
        public void onVideoComplete() {
            // 广告素材播放完成，例如视频未跳过，完整的播放了
            SendLog("PangleSDK rewardVideoAd complete");

            CallBackADReward(ADType.Reward,ADResult.Show_Finished,"");
        }

        @Override
        public void onVideoError() {
            // 广告素材展示时出错
            SendLog("PangleSDK rewardVideoAd error");

            CallBackADReward(ADType.Reward,ADResult.Show_Failed,"");
        }

        @Override

        public void onRewardVerify(boolean rewardVerify, int rewardAmount, String rewardName, int errorCode, String errorMsg) {
            // 已废弃 请使用 onRewardArrived(boolean isRewardValid, int rewardType, Bundle extraInfo)
        }

        @Override

        public void onRewardArrived(boolean isRewardValid, int rewardType, Bundle extraInfo) {
            // 用户的观看行为满足了奖励条件
            SendLog("PangleSDK onRewardArrived Callback --> isRewardValid " +isRewardValid + " rewardType " + rewardType);

            CallBackADReward(ADType.Reward,ADResult.Show_Finished,"");
        }

        @Override
        public void onSkippedVideo() {
            // 用户在观看素材时点击了跳过
            SendLog("PangleSDK rewardVideoAd has onSkippedVideo");

            CallBackADReward(ADType.Reward,ADResult.Show_Skipped,"");
        }
    }

    private static String getAdType(int type) {
        switch (type) {

            case TTAdConstant.AD_TYPE_COMMON_VIDEO:
                return "普通激励视频，type=" + type;

            case TTAdConstant.AD_TYPE_PLAYABLE_VIDEO:
                return "Playable激励视频，type=" + type;

            case TTAdConstant.AD_TYPE_PLAYABLE:
                return "纯Playable，type=" + type;

            case TTAdConstant.AD_TYPE_LIVE:
                return "直播流，type=" + type;
        }

        return "未知类型+type=" + type;
    }


}
