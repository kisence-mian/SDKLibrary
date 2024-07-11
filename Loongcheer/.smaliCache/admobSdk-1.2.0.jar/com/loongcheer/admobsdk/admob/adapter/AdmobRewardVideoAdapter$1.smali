.class Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
.source "AdmobRewardVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    .line 42
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdClosed()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdClosed()V

    .line 58
    :cond_11
    return-void
.end method

.method public onRewardedAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .registers 4
    .param p1, "adError"    # Lcom/google/android/gms/ads/AdError;

    .line 72
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 73
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Ljava/lang/String;)V

    .line 75
    :cond_13
    return-void
.end method

.method public onRewardedAdOpened()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 47
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdOpened()V

    .line 48
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoStart()V

    .line 50
    :cond_1a
    return-void
.end method

.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 3
    .param p1, "reward"    # Lcom/google/android/gms/ads/rewarded/RewardItem;

    .line 64
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 65
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$1;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$000(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    .line 67
    :cond_11
    return-void
.end method
