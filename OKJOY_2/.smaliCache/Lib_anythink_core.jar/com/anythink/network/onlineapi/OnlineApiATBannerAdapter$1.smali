.class final Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->c(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/basead/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/basead/e/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->d(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 63
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->e(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 64
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->f(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    return-void

    .line 66
    :cond_2a
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->g(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Online bannerView = null"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_37
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->b(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 57
    :cond_11
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->h(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 74
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->i(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_19
    return-void
.end method
