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

    .prologue
    .line 41
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V
    .registers 7

    .prologue
    .line 51
    if-nez p1, :cond_1c

    .line 52
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_1b

    .line 53
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "TTAD is null!"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 97
    :cond_1b
    :goto_1b
    return-void

    .line 57
    :cond_1c
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTBannerAd;->getBannerView()Landroid/view/View;

    move-result-object v0

    .line 58
    if-nez v0, :cond_3c

    .line 59
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_1b

    .line 60
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, "TTBannerView is null!"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_1b

    .line 65
    :cond_3c
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iput-object v0, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATBannerAdapter$1$1;-><init>(Lcom/anythink/network/toutiao/TTATBannerAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 92
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i:Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTBannerAd;->setBannerInteractionListener(Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;)V

    .line 94
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_1b

    .line 95
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoaded(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    goto :goto_1b
.end method

.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 44
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_19

    .line 45
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$1;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 47
    :cond_19
    return-void
.end method
