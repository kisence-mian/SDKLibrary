.class final Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->g(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 85
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->h(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 87
    :cond_11
    return-void
.end method

.method public final onADClosed()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Z

    .line 97
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->i(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 98
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->j(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 100
    :cond_16
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_23

    .line 101
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    .line 104
    :cond_23
    :try_start_23
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_34} :catch_35

    .line 107
    return-void

    .line 105
    :catch_35
    move-exception v0

    .line 108
    return-void
.end method

.method public final onADExposure()V
    .registers 1

    .line 80
    return-void
.end method

.method public final onADLeftApplication()V
    .registers 1

    .line 92
    return-void
.end method

.method public final onADOpened()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 75
    :cond_11
    return-void
.end method

.method public final onADReceive()V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Z

    .line 48
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 49
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 52
    :cond_19
    :try_start_19
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v2, v2, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    .line 55
    return-void

    .line 53
    :catch_2f
    move-exception v0

    .line 56
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 66
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1d
    return-void
.end method

.method public final onVideoCached()V
    .registers 1

    .line 61
    return-void
.end method
