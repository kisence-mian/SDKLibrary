.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


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
    .line 80
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 83
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 84
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->l(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 86
    :cond_1d
    return-void
.end method

.method public final onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 92
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->m(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 93
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->n(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdDataLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 95
    :cond_18
    return-void
.end method

.method public final onFullScreenVideoCached()V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->o(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 100
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->p(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 103
    :cond_13
    :try_start_13
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$3;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->q(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_2b

    .line 107
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method
