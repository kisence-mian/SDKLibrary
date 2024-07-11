.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;
.super Ljava/lang/Object;
.source "AdmobFullVideoAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    .line 96
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 114
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    .line 116
    :cond_15
    return-void
.end method

.method public onAdShow()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 100
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdOpened()V

    .line 102
    :cond_15
    return-void
.end method

.method public onAdVideoBarClick()V
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 107
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;->this$1:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;

    iget-object v0, v0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClicked()V

    .line 109
    :cond_15
    return-void
.end method

.method public onSkippedVideo()V
    .registers 1

    .line 125
    return-void
.end method

.method public onVideoComplete()V
    .registers 1

    .line 121
    return-void
.end method
