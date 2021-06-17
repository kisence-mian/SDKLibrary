.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$6;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "AdCashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadAdmobInterstitial(Ljava/lang/String;)V
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

    .line 563
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$6;->val$ad_id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 5
    .param p1, "loadAdError"    # Lcom/google/android/gms/ads/LoadAdError;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u63d2\u9875\u7f13\u5b58\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

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

    .line 585
    # operator++ for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1508()I

    .line 586
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialSwitch()V

    .line 588
    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 6
    .param p1, "interstitialAd"    # Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 569
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdList:Ljava/util/List;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1300()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1400()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$6;->val$ad_id:Ljava/lang/String;

    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdList:Ljava/util/List;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1300()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u63d2\u9875\u7f13\u5b58\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdMap:Ljava/util/Map;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1400()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$6;->val$ad_id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 572
    const-string v0, "loongcheer_ad_log"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    # operator-- for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1510()I

    .line 574
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1500()I

    move-result v0

    if-gez v0, :cond_4c

    .line 575
    const/4 v0, 0x0

    # setter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobInterstitialErrorNum:I
    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1502(I)I

    .line 578
    :cond_4c
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    .line 563
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$6;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
