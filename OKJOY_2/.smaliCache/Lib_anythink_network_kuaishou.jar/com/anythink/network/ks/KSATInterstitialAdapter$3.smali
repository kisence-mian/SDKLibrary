.class final Lcom/anythink/network/ks/KSATInterstitialAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATInterstitialAdapter;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->f(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 98
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->g(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 100
    :cond_11
    return-void
.end method

.method public final onPageDismiss()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->h(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 105
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->i(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 108
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_22} :catch_23

    .line 111
    return-void

    .line 109
    :catch_23
    move-exception v0

    .line 113
    return-void
.end method

.method public final onSkippedVideo()V
    .registers 1

    .line 140
    return-void
.end method

.method public final onVideoPlayEnd()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->l(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 125
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->m(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 127
    :cond_11
    return-void
.end method

.method public final onVideoPlayError(II)V
    .registers 4

    .line 117
    iget-object p2, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {p2}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->j(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 118
    iget-object p2, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {p2}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->k(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_17
    return-void
.end method

.method public final onVideoPlayStart()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->n(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 132
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->o(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 133
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$3;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->p(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 135
    :cond_1a
    return-void
.end method
