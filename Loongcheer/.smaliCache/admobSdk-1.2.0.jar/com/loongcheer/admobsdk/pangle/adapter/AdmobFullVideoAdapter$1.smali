.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;
.super Ljava/lang/Object;
.source "AdmobFullVideoAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    .line 77
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 83
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 86
    :cond_1b
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    .line 87
    return-void
.end method

.method public onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .registers 4
    .param p1, "ttFullScreenVideoAd"    # Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 91
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mIsLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 93
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mAdmobAdListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    .line 95
    :cond_1b
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # setter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    invoke-static {v0, p1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$202(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 96
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->mttFullVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1$1;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobFullVideoAdapter$1;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 127
    return-void
.end method

.method public onFullScreenVideoCached()V
    .registers 1

    .line 132
    return-void
.end method
