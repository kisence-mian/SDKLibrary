.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AdCashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showAdmobRewardedVideo(Ljava/lang/String;Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

.field final synthetic val$ad_id:Ljava/lang/String;

.field final synthetic val$mediationAdpteName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 292
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    iput-object p2, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$ad_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$mediationAdpteName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onClose()V

    .line 317
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$ad_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->loadRewardedVideoAd(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u6fc0\u52b1\u4e2d\u4ecb\u4e3a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$mediationAdpteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 319
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u6fc0\u52b1\u5173\u95ed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->rewarded_error:Z
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1000()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 322
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$mediationAdpteName:Ljava/lang/String;

    const-string v1, "USD"

    const-string v2, "99"

    const-string v3, "0"

    const-string v4, "admob_rwd_pingback"

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerAdValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_3c
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 5
    .param p1, "adError"    # Lcom/google/android/gms/ads/AdError;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob \u6fc0\u52b1\u5c55\u793a\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 306
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

    .line 307
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onShowError(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$3;->val$adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;->onShow()V

    .line 297
    const-string v0, "loongcheer_ad_log"

    const-string v1, "admob \u6fc0\u52b1\u5c55\u793a\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method
