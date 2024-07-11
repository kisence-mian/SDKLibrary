.class final Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    iget-object v1, v0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a:Lcom/anythink/basead/e/g;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->d:Ljava/util/Map;

    .line 51
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->c(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 52
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->d(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 54
    :cond_1e
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 44
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->b(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 46
    :cond_11
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->e(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 59
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->f(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_19
    return-void
.end method
