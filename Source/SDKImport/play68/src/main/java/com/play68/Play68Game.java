package com.play68;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

import com.potatoplay.unitysdk.Admob.AdMobManager;
import com.potatoplay.unitysdk.Admob.IInterstitialAdCallback;
import com.potatoplay.unitysdk.Admob.IRewardedVideoAdCallback;
import com.potatoplay.unitysdk.Class.DataClass.UnityCallbackData;
import com.potatoplay.unitysdk.Class.DataClass.UserData;
import com.potatoplay.unitysdk.Interface.AdCallbackInterface;
import com.potatoplay.unitysdk.Interface.BillingCallbackInterface;
import com.potatoplay.unitysdk.Interface.LoginCallbackInterface;
import com.potatoplay.unitysdk.Lib.Util;
import com.potatoplay.unitysdk.MainActivity;
import com.potatoplay.unitysdk.Manager.GooglePlayLoginManager;
import com.potatoplay.unitysdk.Manager.Play68SdkManager;
import com.unity3d.player.UnityPlayer;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import sdkInterface.IOther;
import sdkInterface.SDKBase;

public class Play68Game extends SDKBase implements IOther {

    final String TAG ="===Play68Game===";

    public static Play68Game instance;
    //region 初始化与登录
    @Override
    public void Init(JSONObject json) {
        Log.d(TAG,"Init");
        instance = this;
    }

    private String mUnityObjectName;
    private Play68SdkManager mPlay68SdkManager;

    @Override
    public void OnCreate() {
        Play68SdkManager.AUTO_LOAD_REWARDED = false;
        Util.ENABLE_LOG = Util.isApkInDebug(GetCurrentActivity());
        this.initInterface();
    }


    private void initInterface() {
        this.mPlay68SdkManager = new Play68SdkManager(GetCurrentActivity());
        this.mPlay68SdkManager.setAdCallbackInterface(new AdCallbackInterface() {
            public void onCallback(int code, String unionId) {
                Util.log("Ad Callback Code: " + code);
                UnityCallbackData callbackData = mPlay68SdkManager.getCallbackDataMap(unionId);
                if (callbackData != null) {
                    JSONObject jsonObject = new JSONObject();

                    try {
                        jsonObject.put("code", code);
                        jsonObject.put("payload", callbackData.getPayload());
                        jsonObject.put("unionId", unionId);
                    } catch (JSONException var6) {
                        var6.printStackTrace();
                    }

                    UnitySendMessage(callbackData.getUnityFuncName(), jsonObject.toString());
                    mPlay68SdkManager.removeCallbackDataMap(unionId);
                }

            }
        });
        this.mPlay68SdkManager.setLoginCallbackInterface(new LoginCallbackInterface() {
            public void onCallback(int code, String unionId, UserData userInfo) {
                UnityCallbackData callbackData = mPlay68SdkManager.getCallbackDataMap(unionId);
                if (callbackData != null) {
                    JSONObject jsonObject = new JSONObject();
                    if (userInfo == null) {
                        userInfo = new UserData("", "", "", GooglePlayLoginManager.LOGIN_TYPE);
                    }

                    if (userInfo.getType().equals(GooglePlayLoginManager.LOGIN_TYPE)) {
                        try {
                            jsonObject.put("code", code);
                            jsonObject.put("payload", callbackData.getPayload());
                            jsonObject.put("unionId", unionId);
                            jsonObject.put("id", userInfo.getId());
                            jsonObject.put("name", userInfo.getName());
                            jsonObject.put("avatar", userInfo.getAvatar());
                        } catch (JSONException var7) {
                            var7.printStackTrace();
                        }
                    }

                    UnitySendMessage(callbackData.getUnityFuncName(), jsonObject.toString());
                    mPlay68SdkManager.removeCallbackDataMap(unionId);
                }
            }
        });
        this.mPlay68SdkManager.setBillingCallbackInterface(new BillingCallbackInterface() {
            public void onCallback(int code, String unionId, JSONObject data) {
                UnityCallbackData callbackData = mPlay68SdkManager.getCallbackDataMap(unionId);
                if (callbackData != null) {
                    JSONObject jsonObject = new JSONObject();

                    try {
                        jsonObject.put("code", code);
                        jsonObject.put("payload", callbackData.getPayload());
                        jsonObject.put("data", data);
                        jsonObject.put("unionId", unionId);
                    } catch (JSONException var7) {
                        var7.printStackTrace();
                    }

                    UnitySendMessage(callbackData.getUnityFuncName(), jsonObject.toString());
                    mPlay68SdkManager.removeCallbackDataMap(unionId);
                }
            }

            public void onCallbackList(int code, String unionId, JSONArray data) {
                UnityCallbackData callbackData = mPlay68SdkManager.getCallbackDataMap(unionId);
                if (callbackData != null) {
                    JSONObject jsonObject = new JSONObject();

                    try {
                        jsonObject.put("code", code);
                        jsonObject.put("payload", callbackData.getPayload());
                        jsonObject.put("data", data);
                        jsonObject.put("unionId", unionId);
                    } catch (JSONException var7) {
                        var7.printStackTrace();
                    }

                    UnitySendMessage(callbackData.getUnityFuncName(), jsonObject.toString());
                    mPlay68SdkManager.removeCallbackDataMap(unionId);
                }
            }
        });
    }

    private void UnitySendMessage(String unityFuncName, String dataString) {
        Util.log("UnitySendMessage: " + unityFuncName + " " + dataString);
        if (!TextUtils.isEmpty(unityFuncName)) {
            String unityObjectName = this.mUnityObjectName;
            String splitChar = ":";
            if (unityFuncName.contains(splitChar)) {
                String[] nameArr = unityFuncName.split(splitChar);
                if (nameArr.length == 2) {
                    unityObjectName = nameArr[0];
                    unityFuncName = nameArr[1];
                }
            }

            UnityPlayer.UnitySendMessage(unityObjectName, unityFuncName, dataString);
        }
    }

    private void UnityAdError(String unityFuncName, String payload) {
        JSONObject jsonObject = new JSONObject();

        try {
            jsonObject.put("code", AdMobManager.ERROR_AD_CB_NAME_EMPTY);
            jsonObject.put("payload", payload);
            jsonObject.put("unionId", "");
        } catch (JSONException var5) {
            var5.printStackTrace();
        }

        this.UnitySendMessage(unityFuncName, jsonObject.toString());
    }

    @Override
    public void OnActivityResult(int requestCode, int resultCode, Intent data) {
        super.OnActivityResult(requestCode, resultCode, data);
        this.mPlay68SdkManager.onActivityResult(requestCode, resultCode, data);
    }

    public void setUnityObjectName(String objectName) {
        Util.log("setUnityObjectName: " + objectName);
        this.mUnityObjectName = objectName;
    }

    public void setAdNumMax(String number) {
        Util.log("setAdNumMax: " + number);
        int num = Integer.parseInt(number);
        if (num > 0) {
            this.mPlay68SdkManager.setAdMaxNum(num);
        }

    }

    public void googlePlayLogin(String unityFuncName, String payload) {
        Util.log("googlePlayLogin: " + unityFuncName + " " + payload);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.googlePlayLogin(cbName);
    }

    public void getInterstitialAd(String unityFuncName, String payload, String gmsAdId) {
        Util.log("getInterstitialAd " + unityFuncName + " " + payload + " " + gmsAdId);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.getInterstitialAdAsyncV3(cbName, gmsAdId);
    }

    public void showInterstitialAd(String unityFuncName, String payload, String cbName) {
        Util.log("showInterstitialAd " + unityFuncName + " " + payload + " " + cbName);
        if (TextUtils.isEmpty(cbName)) {
            this.UnityAdError(unityFuncName, payload);
        } else {
            this.mPlay68SdkManager.putCallbackDataMap(cbName, unityFuncName, payload);
            this.mPlay68SdkManager.showAsyncV3(cbName, IInterstitialAdCallback.name);
        }
    }

    public void getRewardedAd(String unityFuncName, String payload, String gmsAdId) {
        Util.log("getRewardedAd " + unityFuncName + " " + payload + " " + gmsAdId);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        if (Play68SdkManager.AUTO_LOAD_REWARDED) {
            this.mPlay68SdkManager.getRewardedVideoAsyncV4(cbName);
        } else {
            this.mPlay68SdkManager.getRewardedVideoAsyncV3(cbName, gmsAdId);
        }

    }

    public void showRewardedAd(String unityFuncName, String payload, String cbName) {
        Util.log("showRewardedAd " + unityFuncName + " " + payload + " " + cbName);
        if (TextUtils.isEmpty(cbName)) {
            this.UnityAdError(unityFuncName, payload);
        } else {
            this.mPlay68SdkManager.putCallbackDataMap(cbName, unityFuncName, payload);
            if (Play68SdkManager.AUTO_LOAD_REWARDED) {
                this.mPlay68SdkManager.showAsyncV4(cbName, IRewardedVideoAdCallback.name);
            } else {
                this.mPlay68SdkManager.showAsyncV3(cbName, IRewardedVideoAdCallback.name);
            }

        }
    }

    public void getBannerAd(String unityFuncName, String payload, String gmsAdId) {
        Util.log("getBannerAd " + unityFuncName + " " + payload + " " + gmsAdId);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.getBannerAsyncV3(cbName, gmsAdId);
    }

    public void showBannerAd(String unityFuncName, String payload, String cbName, String position) {
        Util.log("showBannerAd " + unityFuncName + " " + payload + " " + cbName + " " + position);
        if (TextUtils.isEmpty(cbName)) {
            this.UnityAdError(unityFuncName, payload);
        } else {
            this.mPlay68SdkManager.putCallbackDataMap(cbName, unityFuncName, payload);
            this.mPlay68SdkManager.showBannerAsyncV3(cbName, position);
        }
    }

    public void hideBannerAd(String unityFuncName, String payload, String cbName) {
        Util.log("hideBannerAd " + unityFuncName + " " + payload + " " + cbName);
        if (TextUtils.isEmpty(cbName)) {
            this.UnityAdError(unityFuncName, payload);
        } else {
            this.mPlay68SdkManager.putCallbackDataMap(cbName, unityFuncName, payload);
            this.mPlay68SdkManager.hideBannerAsyncV3(cbName);
        }
    }

    public void closeBannerAd(String unityFuncName, String payload, String cbName) {
        Util.log("showRewardedAd " + unityFuncName + " " + payload + " " + cbName);
        if (TextUtils.isEmpty(cbName)) {
            this.UnityAdError(unityFuncName, payload);
        } else {
            this.mPlay68SdkManager.putCallbackDataMap(cbName, unityFuncName, payload);
            this.mPlay68SdkManager.closeBannerAsyncV3(cbName);
        }
    }

    public void onReady(String unityFuncName, String payload) {
        Util.log("onReady " + unityFuncName + " " + payload);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.onReady(cbName);
    }

    public void getCatalogAsync(String unityFuncName, String payload, String skuNames) {
        Util.log("getCatalogAsync " + unityFuncName + " " + payload + " " + skuNames);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.getCatalogAsync(skuNames, cbName);
    }

    public void purchaseAsync(String unityFuncName, String payload, String skuId) {
        Util.log("purchaseAsync " + unityFuncName + " " + payload + " " + skuId);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.purchaseAsync(skuId, payload, cbName);
    }

    public void getPurchasesAsync(String unityFuncName, String payload) {
        Util.log("getPurchasesAsync " + unityFuncName + " " + payload);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.getPurchasesAsync(cbName);
    }

    public void consumePurchaseAsync(String unityFuncName, String payload, String purchaseToken) {
        Util.log("consumePurchaseAsync " + unityFuncName + " " + payload + " " + purchaseToken);
        String cbName = this.mPlay68SdkManager.putCallbackDataMap((String)null, unityFuncName, payload);
        this.mPlay68SdkManager.consumePurchaseAsync(cbName, purchaseToken);
    }

    public void loadTestSuite(String testDeviceId) {
        Util.log("loadTestSuite " + testDeviceId);
        this.mPlay68SdkManager.loadTestSuite(testDeviceId);
    }

    public void logEvent(String eventName) {
        Util.log("logEvent " + eventName);
        this.mPlay68SdkManager.logEvent(eventName, (String)null, (String)null);
    }

    public String getLocale() {
        return this.mPlay68SdkManager.getLocale();
    }

    public String getCountryCode() {
        return this.mPlay68SdkManager.getCountryCode();
    }

    @Override
    public void OnDestroy() {
        if (this.mPlay68SdkManager != null) {
            this.mPlay68SdkManager.onDestroy();
        }
        super.OnDestroy();
    }

    @Override
    public void Other(JSONObject json) {

    }

    @Override
    public String[] GetFunctionName() {
        return new String[0];
    }
}
