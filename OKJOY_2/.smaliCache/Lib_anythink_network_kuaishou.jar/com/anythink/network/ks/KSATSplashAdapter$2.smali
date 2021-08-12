.class final Lcom/anythink/network/ks/KSATSplashAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATSplashAdapter;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATSplashAdapter;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/anythink/network/ks/KSATSplashAdapter$2;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$2;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->b(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 62
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$2;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->c(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_15
    return-void
.end method

.method public final onSplashScreenAdLoad(Lcom/kwad/sdk/api/KsSplashScreenAd;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$2;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    iput-object p1, v0, Lcom/anythink/network/ks/KSATSplashAdapter;->b:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 70
    iget-object p1, p0, Lcom/anythink/network/ks/KSATSplashAdapter$2;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATSplashAdapter;->d(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 71
    iget-object p1, p0, Lcom/anythink/network/ks/KSATSplashAdapter$2;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/ks/KSATSplashAdapter;->e(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 73
    :cond_18
    return-void
.end method
