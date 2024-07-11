.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;
.super Ljava/lang/Object;
.source "AdmobRewardVideoAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    .line 109
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRewardVideoAd.........errorCode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadRewardVideoAd.........errormsg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 117
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Ljava/lang/String;)V

    .line 119
    :cond_47
    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .registers 5
    .param p1, "ttRewardVideoAd"    # Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 123
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 124
    const-string v0, "onRewardVideoAdLoad.........onRewardVideoAdLoad"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # setter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    invoke-static {v0, p1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$302(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 126
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mttRewardVideoAd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$300(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->PangleRewardedInteractiveListener:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    invoke-static {v1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$400(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 127
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 128
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    # setter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0, v1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$002(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 130
    :cond_3c
    return-void
.end method

.method public onRewardVideoCached()V
    .registers 1

    .line 135
    return-void
.end method
