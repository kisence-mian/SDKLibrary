.class public Lokjoy/n/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/n/k;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/interstitial/api/ATInterstitial;

.field public final synthetic c:Lokjoy/n/k;


# direct methods
.method public constructor <init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitial;)V
    .registers 4

    iput-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    iput-object p2, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lokjoy/n/k$a;->b:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onInterstitialAdClicked"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onInterstitialAdClose"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 1
    iget-object p1, p1, Lokjoy/n/k;->b:Landroid/app/Activity;

    .line 2
    invoke-static {p1}, Lokjoy/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    iget-object v0, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Lokjoy/n/k;->c(Ljava/lang/String;)V

    .line 4
    :cond_1c
    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 5
    iget-object v0, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_37

    .line 6
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 7
    iget-object p1, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    .line 8
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdClose(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_37
    return-void
.end method

.method public onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 5

    const-string v0, "TopOn SDK preload ad call onInterstitialAdLoadFail"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopOn SDK \u63d2\u5c4f\u5e7f\u544a\u9884\u52a0\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "must be activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4b

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lokjoy/n/k;->b(Lokjoy/n/k;Z)Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lokjoy/n/k$a$a;

    invoke-direct {v0, p0}, Lokjoy/n/k$a$a;-><init>(Lokjoy/n/k$a;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4b
    return-void
.end method

.method public onInterstitialAdLoaded()V
    .registers 4

    const-string v0, "TopOn SDK preload ad call onInterstitialAdLoaded"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    iget-object v0, v0, Lokjoy/n/k;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lokjoy/n/k$a;->b:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onInterstitialAdShow"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdShow(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onInterstitialAdVideoEnd"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayEnd(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .registers 5

    const-string v0, "TopOn SDK preload ad call onInterstitialAdVideoError"

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

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_3b

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u5e7f\u544a\u64ad\u653e\u5931\u8d25"

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayFailed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_3b
    return-void
.end method

.method public onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onInterstitialAdVideoStart"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/k$a;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/k$a;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->k:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkInterstitialAdListener;->onInterstitialAdPlayStart(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method
