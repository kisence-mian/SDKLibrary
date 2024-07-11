.class final Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    iget-object v1, v0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->d:Ljava/util/Map;

    .line 119
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->q(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 120
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->r(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 122
    :cond_1e
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->o(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->p(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 114
    :cond_11
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->s(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 127
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->t(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_19
    return-void
.end method
