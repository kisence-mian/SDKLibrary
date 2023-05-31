.class final Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;


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
    .line 92
    iput-object p1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->r(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->s(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 112
    :cond_13
    return-void
.end method

.method public final onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V
    .registers 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->t(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 117
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->u(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 119
    :cond_13
    return-void
.end method

.method public final onAdFinish(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    return-void
.end method

.method public final onAdReady()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->n(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 96
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->o(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 98
    :cond_13
    return-void
.end method

.method public final onAdShow(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->p(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 103
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->q(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 105
    :cond_13
    return-void
.end method

.method public final onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 128
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->v(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 129
    iget-object v0, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;->w(Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/oneway/OnewayATInterstitialAdapter$2;->a:Lcom/anythink/network/oneway/OnewayATInterstitialAdapter;

    const-string v2, "4001"

    invoke-virtual {p1}, Lmobi/oneway/export/enums/OnewaySdkError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 131
    :cond_21
    return-void
.end method
