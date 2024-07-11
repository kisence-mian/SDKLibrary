.class final Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATSplashAdapter$2;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->c(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 113
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_19
    return-void
.end method

.method public final onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iput-object p1, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/bytedance/sdk/openadsdk/TTSplashAd;

    .line 127
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->g(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 128
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->h(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 130
    :cond_1e
    return-void
.end method

.method public final onTimeout()V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->e(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 120
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2$1;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$2;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->f(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "onTimeout"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_19
    return-void
.end method
