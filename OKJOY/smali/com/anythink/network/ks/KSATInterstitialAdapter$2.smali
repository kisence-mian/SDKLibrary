.class final Lcom/anythink/network/ks/KSATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/KsFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATInterstitialAdapter;->show(Landroid/content/Context;)V
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

    .prologue
    .line 90
    iput-object p1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->e(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 94
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->f(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 96
    :cond_13
    return-void
.end method

.method public final onPageDismiss()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->g(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 101
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->h(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 104
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_25

    .line 109
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public final onSkippedVideo()V
    .registers 1

    .prologue
    .line 137
    return-void
.end method

.method public final onVideoPlayEnd()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->k(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 122
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->l(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 124
    :cond_13
    return-void
.end method

.method public final onVideoPlayError(II)V
    .registers 8

    .prologue
    .line 113
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->i(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 114
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->j(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 115
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 117
    :cond_1f
    return-void
.end method

.method public final onVideoPlayStart()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->m(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 129
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->n(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->o(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$2;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 132
    :cond_1e
    return-void
.end method
