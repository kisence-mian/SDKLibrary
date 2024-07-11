.class public Lokjoy/n/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/banner/api/ATBannerListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/banner/api/ATBannerView;

.field public final synthetic c:Lokjoy/n/k;


# direct methods
.method public constructor <init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/banner/api/ATBannerView;)V
    .registers 4

    iput-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    iput-object p2, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lokjoy/n/d;->b:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAutoRefreshFail(Lcom/anythink/core/api/AdError;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onBannerAutoRefreshFail"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->BANNER_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;->onBannerAdAutoRefreshFail(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onBannerAutoRefreshed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onBannerAutoRefreshed"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->BANNER_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;->onBannerAdAutoRefreshed(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onBannerClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onBannerClicked"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->BANNER_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;->onBannerAdClicked(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method

.method public onBannerClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 6

    const-string p1, "TopOn SDK preload ad call onBannerClose"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 1
    iget-object p1, p1, Lokjoy/n/k;->b:Landroid/app/Activity;

    .line 2
    invoke-static {p1}, Lokjoy/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    iget-object v1, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    if-eqz p1, :cond_2f

    .line 3
    new-instance v2, Lcom/anythink/banner/api/ATBannerView;

    iget-object v3, p1, Lokjoy/n/k;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/anythink/banner/api/ATBannerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anythink/banner/api/ATBannerView;->loadAd()V

    new-instance v3, Lokjoy/n/d;

    invoke-direct {v3, p1, v1, v2}, Lokjoy/n/d;-><init>(Lokjoy/n/k;Ljava/lang/String;Lcom/anythink/banner/api/ATBannerView;)V

    invoke-virtual {v2, v3}, Lcom/anythink/banner/api/ATBannerView;->setBannerAdListener(Lcom/anythink/banner/api/ATBannerListener;)V

    goto :goto_30

    :cond_2f
    throw v0

    .line 4
    :cond_30
    :goto_30
    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 5
    iget-object v1, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    if-eqz v1, :cond_4a

    .line 6
    new-instance v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v2, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->BANNER_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v3, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    invoke-static {p1, v3}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 7
    iget-object p1, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    .line 8
    invoke-interface {p1, v1}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;->onBannerAdClose(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_4a
    return-void
.end method

.method public onBannerFailed(Lcom/anythink/core/api/AdError;)V
    .registers 4

    const-string v0, "TopOn SDK preload ad call onBannerFailed"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopOn SDK \u6a2a\u5e45\u5e7f\u544a\u9884\u52a0\u8f7d\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerLoaded()V
    .registers 4

    const-string v0, "TopOn SDK preload ad call onBannerLoaded"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    iget-object v0, v0, Lokjoy/n/k;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lokjoy/n/d;->b:Lcom/anythink/banner/api/ATBannerView;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBannerShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    const-string p1, "TopOn SDK preload ad call onBannerShow"

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 1
    iget-object v0, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;

    sget-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->BANNER_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    iget-object v2, p0, Lokjoy/n/d;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Lokjoy/n/k;->a(Lokjoy/n/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;-><init>(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/n/d;->c:Lokjoy/n/k;

    .line 3
    iget-object p1, p1, Lokjoy/n/k;->l:Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/okjoy/okjoysdk/topon/listener/OkJoySdkBannerAdListener;->onBannerAdShow(Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;)V

    :cond_20
    return-void
.end method
