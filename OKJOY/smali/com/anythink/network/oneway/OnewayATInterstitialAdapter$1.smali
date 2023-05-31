.class final Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lmobi/oneway/export/AdListener/OWInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->f(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 64
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->g(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 66
    :cond_13
    return-void
.end method

.method public final onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V
    .registers 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->h(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 71
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->i(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 73
    :cond_13
    return-void
.end method

.method public final onAdFinish(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->j(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 78
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->k(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 80
    :cond_13
    return-void
.end method

.method public final onAdReady()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->a(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->b(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 48
    :cond_13
    return-void
.end method

.method public final onAdShow(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->c(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 55
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->d(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->e(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 58
    :cond_1e
    return-void
.end method

.method public final onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->l(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 87
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->m(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$1;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    const-string v2, "4001"

    invoke-virtual {p1}, Lmobi/oneway/export/enums/OnewaySdkError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 89
    :cond_21
    return-void
.end method
