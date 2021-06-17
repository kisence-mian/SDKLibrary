.class public Lcom/loongcheer/event/SampleCustomEventBanner;
.super Ljava/lang/Object;
.source "SampleCustomEventBanner.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;


# instance fields
.field private sampleAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createSampleRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Lcom/loongcheer/admobsdk/sample/SampleAdRequest;
    .registers 4
    .param p1, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;

    .line 62
    new-instance v0, Lcom/loongcheer/admobsdk/sample/SampleAdRequest;

    invoke-direct {v0}, Lcom/loongcheer/admobsdk/sample/SampleAdRequest;-><init>()V

    .line 63
    .local v0, "request":Lcom/loongcheer/admobsdk/sample/SampleAdRequest;
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdRequest;->setTestMode(Z)V

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdRequest;->setKeywords(Ljava/util/Set;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/loongcheer/event/SampleCustomEventBanner;->sampleAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    if-eqz v0, :cond_7

    .line 47
    invoke-virtual {v0}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->destroy()V

    .line 49
    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 54
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 59
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;
    .param p3, "serverParameter"    # Ljava/lang/String;
    .param p4, "size"    # Lcom/google/android/gms/ads/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p6, "customEventExtras"    # Landroid/os/Bundle;

    .line 29
    new-instance v0, Lcom/loongcheer/admobsdk/sample/SampleAdView;

    invoke-direct {v0, p1}, Lcom/loongcheer/admobsdk/sample/SampleAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loongcheer/event/SampleCustomEventBanner;->sampleAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    .line 32
    invoke-virtual {v0, p3}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->setAdUnit(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/loongcheer/event/SampleCustomEventBanner;->sampleAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    new-instance v1, Lcom/loongcheer/admobsdk/sample/SampleAdSize;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/loongcheer/admobsdk/sample/SampleAdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->setSize(Lcom/loongcheer/admobsdk/sample/SampleAdSize;)V

    .line 38
    iget-object v0, p0, Lcom/loongcheer/event/SampleCustomEventBanner;->sampleAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    new-instance v1, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;

    iget-object v2, p0, Lcom/loongcheer/event/SampleCustomEventBanner;->sampleAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    invoke-direct {v1, p2, v2}, Lcom/loongcheer/admobsdk/sample/SampleCustomBannerEventForwarder;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/loongcheer/admobsdk/sample/SampleAdView;)V

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->setAdListener(Lcom/loongcheer/admobsdk/sample/SampleAdListener;)V

    .line 41
    iget-object v0, p0, Lcom/loongcheer/event/SampleCustomEventBanner;->sampleAdView:Lcom/loongcheer/admobsdk/sample/SampleAdView;

    invoke-direct {p0, p5}, Lcom/loongcheer/event/SampleCustomEventBanner;->createSampleRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Lcom/loongcheer/admobsdk/sample/SampleAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/admobsdk/sample/SampleAdView;->fetchAd(Lcom/loongcheer/admobsdk/sample/SampleAdRequest;)V

    .line 42
    return-void
.end method
