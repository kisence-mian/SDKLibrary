.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AdCashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->admobshowInterstitial(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adInterstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

.field final synthetic val$mediationAdpteName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 3

    .line 653
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;->val$mediationAdpteName:Ljava/lang/String;

    iput-object p2, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;->val$adInterstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .registers 6

    .line 659
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialAdid:Ljava/lang/String;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1600()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadInterstitialAd(Ljava/lang/String;)V

    .line 660
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1700()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;->onClose()V

    .line 661
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u63d2\u9875\u5173\u95ed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u63d2\u9875\u4e2d\u4ecb\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;->val$mediationAdpteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 665
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->interstitial_error:Z
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1800()Z

    move-result v0

    if-nez v0, :cond_40

    .line 666
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;->val$mediationAdpteName:Ljava/lang/String;

    const-string v1, "USD"

    const-string v2, "99"

    const-string v3, "0"

    const-string v4, "admob_intl_pingback"

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerAdValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_40
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 5
    .param p1, "adError"    # Lcom/google/android/gms/ads/AdError;

    .line 675
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;->val$adInterstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;->onShowAdError(Ljava/lang/String;)V

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u63d2\u9875\u5c55\u793a\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loongcheer_ad_log"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 3

    .line 685
    const-string v0, "TAG"

    const-string v1, "admob The ad was shown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u63d2\u9875\u5c55\u793a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$7;->val$adInterstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;->onShow()V

    .line 688
    return-void
.end method
