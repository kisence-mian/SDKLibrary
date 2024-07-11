.class final Lcom/anythink/network/adx/AdxATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATBannerAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATBannerAdapter;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCacheLoaded()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/basead/e/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Lcom/anythink/network/adx/AdxATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->d(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 64
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->e(Lcom/anythink/network/adx/AdxATBannerAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 65
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->c(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/basead/e/a;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/e/b;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/network/adx/AdxATBannerAdapter;->b:Ljava/util/Map;

    .line 66
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->f(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    return-void

    .line 68
    :cond_36
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->g(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Adx bannerView = null"

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_43
    return-void
.end method

.method public final onAdDataLoaded()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->b(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 58
    :cond_11
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->h(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 76
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$1;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->i(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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
