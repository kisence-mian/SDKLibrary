.class final Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    iget-object v1, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->b:Lcom/anythink/basead/e/d;

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->c:Ljava/util/Map;

    .line 118
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->q(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 119
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->r(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 121
    :cond_1e
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->o(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 111
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->p(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 113
    :cond_11
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->s(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 126
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$2;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->t(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_19
    return-void
.end method
