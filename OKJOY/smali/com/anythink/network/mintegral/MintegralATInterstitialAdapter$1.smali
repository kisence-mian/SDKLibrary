.class final Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose(Z)V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->l(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 90
    if-eqz p1, :cond_15

    .line 91
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->m(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 93
    :cond_15
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->n(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 95
    :cond_20
    return-void
.end method

.method public final onAdShow()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->i(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 82
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->j(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->k(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 85
    :cond_1e
    return-void
.end method

.method public final onEndcardShow(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    return-void
.end method

.method public final onLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->a(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 51
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->b(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdDataLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 53
    :cond_13
    return-void
.end method

.method public final onShowFail(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->g(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 74
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->h(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    const-string v2, "4001"

    const-string v3, ""

    .line 75
    invoke-static {v2, v3, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 74
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 77
    :cond_1b
    return-void
.end method

.method public final onVideoAdClicked(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->o(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 100
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->p(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 102
    :cond_13
    return-void
.end method

.method public final onVideoComplete(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->q(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 107
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->r(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 109
    :cond_13
    return-void
.end method

.method public final onVideoLoadFail(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->e(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 66
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->f(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    const-string v2, "4001"

    const-string v3, ""

    .line 67
    invoke-static {v2, v3, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 69
    :cond_1b
    return-void
.end method

.method public final onVideoLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->c(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 58
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;->d(Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter$1;->a:Lcom/anythink/network/mintegral/MintegralATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 61
    :cond_13
    return-void
.end method
