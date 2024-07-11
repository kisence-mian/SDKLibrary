.class public Lokjoy/n/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialListener;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lokjoy/u/a;

.field public final synthetic d:Lcom/anythink/interstitial/api/ATInterstitial;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lokjoy/n/k;


# direct methods
.method public constructor <init>(Lokjoy/n/k;Landroid/os/Handler;Ljava/lang/Runnable;Lokjoy/u/a;Lcom/anythink/interstitial/api/ATInterstitial;Landroid/app/Activity;Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iput-object p2, p0, Lokjoy/n/i;->a:Landroid/os/Handler;

    iput-object p3, p0, Lokjoy/n/i;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lokjoy/n/i;->c:Lokjoy/u/a;

    iput-object p5, p0, Lokjoy/n/i;->d:Lcom/anythink/interstitial/api/ATInterstitial;

    iput-object p6, p0, Lokjoy/n/i;->e:Landroid/app/Activity;

    iput-object p7, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    iput-object p8, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onInterstitialAdClicked"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method

.method public onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onInterstitialAdClose"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    .line 1
    iget-object p1, p1, Lokjoy/n/k;->b:Landroid/app/Activity;

    .line 2
    invoke-static {p1}, Lokjoy/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v0, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lokjoy/n/k;->c(Ljava/lang/String;)V

    .line 4
    :cond_1c
    iget-object p1, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz p1, :cond_35

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdClose(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_35
    return-void
.end method

.method public onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 5

    const-string v0, "TopOn SDK reload ad call onInterstitialAdLoadFail"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lokjoy/n/i;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lokjoy/n/i;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lokjoy/n/i;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_19
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopOn SDK \u63d2\u5c4f\u5e7f\u544a\u64ad\u653e\u65f6\u52a0\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz p1, :cond_4d

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_4d
    return-void
.end method

.method public onInterstitialAdLoaded()V
    .registers 3

    const-string v0, "TopOn SDK reload ad call onInterstitialAdLoaded"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lokjoy/n/i;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lokjoy/n/i;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lokjoy/n/i;->c:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_19
    iget-object v0, p0, Lokjoy/n/i;->d:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lokjoy/n/i;->d:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v1, p0, Lokjoy/n/i;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    :cond_28
    return-void
.end method

.method public onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onInterstitialAdShow"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdShow(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method

.method public onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onInterstitialAdVideoEnd"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method

.method public onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .registers 5

    const-string v0, "TopOn SDK reload ad call onInterstitialAdVideoError"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopOn SDK \u63d2\u5c4f\u5e7f\u544a\u64ad\u653e\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz p1, :cond_39

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5e7f\u544a\u64ad\u653e\u5931\u8d25"

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_39
    return-void
.end method

.method public onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK reload ad call onInterstitialAdVideoStart"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz p1, :cond_1e

    new-instance p1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v1, p0, Lokjoy/n/i;->h:Lokjoy/n/k;

    iget-object v2, p0, Lokjoy/n/i;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/i;->f:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_1e
    return-void
.end method
