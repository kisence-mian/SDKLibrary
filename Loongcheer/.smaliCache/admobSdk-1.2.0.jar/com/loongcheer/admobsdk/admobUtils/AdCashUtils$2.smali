.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$2;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "AdCashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadAdmobRewardedVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ad_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$2;->val$ad_id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4
    .param p1, "loadAdError"    # Lcom/google/android/gms/ads/LoadAdError;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u6fc0\u52b1\u7f13\u5b58\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u52a0\u8f7d\u6fc0\u52b1\u5931\u8d25 \u5931\u8d25\u539f\u56e0\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loongcheer_ad_log"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    # operator++ for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$608()I

    .line 221
    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardSwitch()V
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$700()V

    .line 224
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 5
    .param p1, "rewardedAd"    # Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 228
    # operator-- for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$610()I

    .line 229
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$600()I

    move-result v0

    if-gez v0, :cond_d

    .line 230
    const/4 v0, 0x0

    # setter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobRewardedErrorNum:I
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$602(I)I

    .line 232
    :cond_d
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdList:Ljava/util/List;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$800()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$900()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$2;->val$ad_id:Ljava/lang/String;

    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdList:Ljava/util/List;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$800()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u6fc0\u52b1\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewardedAdMap:Ljava/util/Map;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$900()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$2;->val$ad_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 235
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u52a0\u8f7d\u6fc0\u52b1\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    .line 214
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$2;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
