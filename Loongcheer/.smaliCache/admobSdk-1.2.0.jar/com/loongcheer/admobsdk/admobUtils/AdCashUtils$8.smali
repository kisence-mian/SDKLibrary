.class final Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdCashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->showBanner(Ljava/lang/String;FLcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

.field final synthetic val$netWorkAdpterName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;Ljava/lang/String;)V
    .registers 3

    .line 810
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;->val$adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    iput-object p2, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;->val$netWorkAdpterName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 1

    .line 834
    return-void
.end method

.method public onAdClosed()V
    .registers 6

    .line 845
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;->val$adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;->onClose()V

    .line 846
    # getter for: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->banner_error:Z
    invoke-static {}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1900()Z

    move-result v0

    if-nez v0, :cond_18

    .line 847
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;->val$netWorkAdpterName:Ljava/lang/String;

    const-string v1, "USD"

    const-string v2, "99"

    const-string v3, "0"

    const-string v4, "admob_banner_pingback"

    # invokes: Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->appsflyerAdValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils;->access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_18
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4
    .param p1, "adError"    # Lcom/google/android/gms/ads/LoadAdError;

    .line 820
    const-string v0, "\u52a0\u8f7dbanner\u5931\u8d25"

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 821
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;->val$adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;->onAdError(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 1

    .line 839
    return-void
.end method

.method public onAdLoaded()V
    .registers 1

    .line 815
    return-void
.end method

.method public onAdOpened()V
    .registers 2

    .line 828
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/AdCashUtils$8;->val$adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    invoke-interface {v0}, Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;->onShow()V

    .line 829
    return-void
.end method
