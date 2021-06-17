.class public Lcom/loongcheer/admobsdk/admobUtils/AdmobUtils;
.super Ljava/lang/Object;
.source "AdmobUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadInterstitialAd(Ljava/lang/String;)V
    .registers 1
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitialAd(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static loadRewardedVideoAd(Ljava/lang/String;)V
    .registers 1
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideoAd(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static queryCashInterstitialAd(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->queryCashInterstitialAd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static queryCashRewardVideoA(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ad_id"    # Ljava/lang/String;

    .line 68
    invoke-static {p0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->queryCashRewardVideoAd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static showBanner(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V
    .registers 3
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "y"    # F
    .param p2, "adBannerCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    .line 99
    invoke-static {p0, p1, p2}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showBannerAd(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V

    .line 100
    return-void
.end method

.method public static showInterstitialAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 2
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adInterstitialCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 87
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showInterstitialAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V

    .line 88
    return-void
.end method

.method public static showRewardedVideoAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 2
    .param p0, "ad_id"    # Ljava/lang/String;
    .param p1, "adRewardedCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 55
    invoke-static {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showRewardedVideoAd(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V

    .line 57
    return-void
.end method

.method public static shutDownBanner()V
    .registers 0

    .line 108
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->shutDownBanner()V

    .line 110
    return-void
.end method
