.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClose()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->w(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 131
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->x(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 134
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_25

    .line 138
    :goto_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method public final onAdShow()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->r(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 116
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->s(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->t(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 119
    :cond_1e
    return-void
.end method

.method public final onAdVideoBarClick()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->u(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->v(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 126
    :cond_13
    return-void
.end method

.method public final onSkippedVideo()V
    .registers 1

    .prologue
    .line 149
    return-void
.end method

.method public final onVideoComplete()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->y(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 143
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->z(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$4;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 145
    :cond_13
    return-void
.end method
