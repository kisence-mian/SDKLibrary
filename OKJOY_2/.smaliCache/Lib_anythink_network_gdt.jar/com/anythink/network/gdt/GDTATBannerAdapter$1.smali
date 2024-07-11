.class final Lcom/anythink/network/gdt/GDTATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/banner2/UnifiedBannerADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATBannerAdapter;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->i(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 66
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->j(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 68
    :cond_11
    return-void
.end method

.method public final onADCloseOverlay()V
    .registers 1

    .line 83
    return-void
.end method

.method public final onADClosed()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->g(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 59
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->h(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 61
    :cond_11
    return-void
.end method

.method public final onADExposure()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->e(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->f(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 54
    :cond_11
    return-void
.end method

.method public final onADLeftApplication()V
    .registers 1

    .line 73
    return-void
.end method

.method public final onADOpenOverlay()V
    .registers 1

    .line 78
    return-void
.end method

.method public final onADReceive()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 45
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 47
    :cond_14
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 38
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_22
    return-void
.end method
