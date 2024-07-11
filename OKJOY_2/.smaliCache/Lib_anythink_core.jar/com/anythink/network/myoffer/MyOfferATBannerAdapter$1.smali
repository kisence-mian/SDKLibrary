.class final Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/basead/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/basead/g/b;->b()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->b(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 65
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 66
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    return-void

    .line 68
    :cond_2a
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "MyOffer bannerView = null"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_37
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 1

    .line 58
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 76
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_19
    return-void
.end method
