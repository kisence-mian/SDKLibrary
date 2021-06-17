.class Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;
.super Ljava/lang/Object;
.source "AdmobRewardVideoAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


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

    .line 41
    iput-object p1, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdClosed()V

    .line 62
    :cond_11
    return-void
.end method

.method public onAdShow()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 45
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdOpened()V

    .line 46
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoStart()V

    .line 48
    :cond_1a
    return-void
.end method

.method public onAdVideoBarClick()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 53
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->reportAdClicked()V

    .line 55
    :cond_11
    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;)V
    .registers 8
    .param p1, "rewardVerify"    # Z
    .param p2, "rewardAmount"    # I
    .param p3, "rewardName"    # Ljava/lang/String;

    .line 82
    if-eqz p1, :cond_1a

    .line 83
    move-object v0, p3

    .line 84
    .local v0, "rewardType":Ljava/lang/String;
    move v1, p2

    .line 86
    .local v1, "amount":I
    new-instance v2, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1$1;-><init>(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;Ljava/lang/String;I)V

    .line 97
    .local v2, "rewardItem":Lcom/google/android/gms/ads/rewarded/RewardItem;
    iget-object v3, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v3}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 98
    iget-object v3, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v3}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    .line 102
    .end local v0    # "rewardType":Ljava/lang/String;
    .end local v1    # "amount":I
    .end local v2    # "rewardItem":Lcom/google/android/gms/ads/rewarded/RewardItem;
    :cond_1a
    return-void
.end method

.method public onSkippedVideo()V
    .registers 1

    .line 107
    return-void
.end method

.method public onVideoComplete()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoComplete()V

    .line 69
    :cond_11
    return-void
.end method

.method public onVideoError()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    iget-object v0, p0, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/pangle/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Ljava/lang/String;)V

    .line 76
    :cond_13
    return-void
.end method
