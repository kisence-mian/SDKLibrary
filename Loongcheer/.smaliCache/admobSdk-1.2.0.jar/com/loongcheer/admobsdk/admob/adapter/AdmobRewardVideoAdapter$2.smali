.class Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
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

    .line 78
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4
    .param p1, "adError"    # Lcom/google/android/gms/ads/LoadAdError;

    .line 91
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    const-string v0, "onRewardedAdFailedToLoad"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u81ea\u5b9a\u4e49\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 95
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Ljava/lang/String;)V

    .line 97
    :cond_3e
    return-void
.end method

.method public onRewardedAdLoaded()V
    .registers 4

    .line 82
    const-string v0, "onRewardedAdLoaded"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->isLoadSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$100(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 85
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    # getter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$200(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter$2;->this$0:Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    # setter for: Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->mAdmobRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    invoke-static {v0, v1}, Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;->access$002(Lcom/loongcheer/admobsdk/admob/adapter/AdmobRewardVideoAdapter;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    .line 87
    :cond_28
    return-void
.end method
