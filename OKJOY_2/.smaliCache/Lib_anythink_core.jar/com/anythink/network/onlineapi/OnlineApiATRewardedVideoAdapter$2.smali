.class final Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    iget-object v1, v0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->d:Ljava/util/Map;

    .line 121
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->q(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 122
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->r(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 124
    :cond_1e
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->o(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 114
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->p(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 116
    :cond_11
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->s(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 129
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->t(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_19
    return-void
.end method
