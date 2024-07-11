.class final Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 60
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 62
    :cond_14
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 1

    .line 55
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 67
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_19
    return-void
.end method
