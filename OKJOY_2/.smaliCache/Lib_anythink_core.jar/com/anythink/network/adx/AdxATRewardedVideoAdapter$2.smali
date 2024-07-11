.class final Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    iget-object v1, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b:Lcom/anythink/basead/e/f;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c:Ljava/util/Map;

    .line 120
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->q(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 121
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->r(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 123
    :cond_1e
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->o(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 113
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->p(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 115
    :cond_11
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->s(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 128
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$2;->a:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->t(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_19
    return-void
.end method
