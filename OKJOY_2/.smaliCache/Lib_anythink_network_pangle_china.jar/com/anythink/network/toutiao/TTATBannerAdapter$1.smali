.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V
    .registers 4

    .line 51
    const-string v0, ""

    if-nez p1, :cond_18

    .line 52
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 53
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v1, "TTAD is null!"

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_17
    return-void

    .line 57
    :cond_18
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTBannerAd;->getBannerView()Landroid/view/View;

    move-result-object v1

    .line 58
    if-nez v1, :cond_32

    .line 59
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 60
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->f(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const-string v1, "TTBannerView is null!"

    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_31
    return-void

    .line 65
    :cond_32
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iput-object v1, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 92
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTBannerAd;->setBannerInteractionListener(Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;)V

    .line 94
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->g(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 95
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 97
    :cond_61
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 45
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_15
    return-void
.end method
