.class public Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;
.super Ljava/lang/Object;
.source "ShowAdBean.java"


# instance fields
.field public Ad_id:Ljava/lang/String;

.field public adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

.field public adInterstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

.field public adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdBannerCallBack()Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    return-object v0
.end method

.method public getAdInterstitialCallBack()Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->adInterstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    return-object v0
.end method

.method public getAdRewardedCallBack()Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    return-object v0
.end method

.method public getAd_id()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->Ad_id:Ljava/lang/String;

    return-object v0
.end method

.method public getY()F
    .registers 2

    .line 52
    iget v0, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->y:F

    return v0
.end method

.method public setAdBannerCallBack(Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;)V
    .registers 2
    .param p1, "adBannerCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    .line 48
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->adBannerCallBack:Lcom/loongcheer/admobsdk/callBack/AdBannerCallBack;

    .line 49
    return-void
.end method

.method public setAdInterstitialCallBack(Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;)V
    .registers 2
    .param p1, "adInterstitialCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 40
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->adInterstitialCallBack:Lcom/loongcheer/admobsdk/callBack/AdInterstitialCallBack;

    .line 41
    return-void
.end method

.method public setAdRewardedCallBack(Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;)V
    .registers 2
    .param p1, "adRewardedCallBack"    # Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 32
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->adRewardedCallBack:Lcom/loongcheer/admobsdk/callBack/AdRewardedCallBack;

    .line 33
    return-void
.end method

.method public setAd_id(Ljava/lang/String;)V
    .registers 2
    .param p1, "ad_id"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->Ad_id:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setY(F)V
    .registers 2
    .param p1, "y"    # F

    .line 56
    iput p1, p0, Lcom/loongcheer/admobsdk/admobUtils/ShowAdBean;->y:F

    .line 57
    return-void
.end method
