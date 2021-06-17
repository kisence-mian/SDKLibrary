.class public Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;
.super Lcom/loongcheer/admobsdk/sample/SampleAdListener;
.source "SampleCustomBannerEventForwarder.java"


# instance fields
.field private mAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

.field private mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/loongcheer/admobsdk/sample/SampleAdView;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;
    .param p2, "adView"    # Lcom/loongcheer/admobsdk/sample/SampleAdView;

    .line 17
    invoke-direct {p0}, Lcom/loongcheer/admobsdk/sample/SampleAdListener;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    .line 19
    iput-object p2, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    .line 20
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClosed()V

    .line 56
    return-void
.end method

.method public onAdFetchFailed(Lcom/loongcheer/admobsdk/sample/SampleErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lcom/loongcheer/admobsdk/sample/SampleErrorCode;

    .line 29
    sget-object v0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder$1;->$SwitchMap$com$loongcheer$admobsdk$sample$SampleErrorCode:[I

    invoke-virtual {p1}, Lcom/loongcheer/admobsdk/sample/SampleErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    goto :goto_28

    .line 40
    :pswitch_c
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    goto :goto_28

    .line 37
    :pswitch_13
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    .line 38
    goto :goto_28

    .line 34
    :pswitch_1a
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    .line 35
    goto :goto_28

    .line 31
    :pswitch_21
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    .line 32
    nop

    .line 43
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public onAdFetchSucceeded()V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public onAdFullScreen()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdClicked()V

    .line 48
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdOpened()V

    .line 50
    iget-object v0, p0, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;->mBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLeftApplication()V

    .line 51
    return-void
.end method
