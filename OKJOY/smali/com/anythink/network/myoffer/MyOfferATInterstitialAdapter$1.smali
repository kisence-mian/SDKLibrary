.class final Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/e/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Landroid/content/Context;)V
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

    .prologue
    .line 65
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->o(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 120
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->p(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 122
    :cond_13
    return-void
.end method

.method public final onAdClosed()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 113
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->n(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 115
    :cond_13
    return-void
.end method

.method public final onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 7

    .prologue
    .line 97
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 98
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    const-string v2, "4001"

    .line 99
    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 98
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 101
    :cond_21
    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 91
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 93
    :cond_13
    return-void
.end method

.method public final onAdShow()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 106
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 108
    :cond_13
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->c(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 76
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->d(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 78
    :cond_13
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->a(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 69
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->b(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 71
    :cond_13
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 7

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 83
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$1;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    sget-object v2, Lcom/anythink/core/api/ErrorCode;->rewardedVideoPlayError:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/network/myoffer/MyOfferError;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 86
    :cond_21
    return-void
.end method
