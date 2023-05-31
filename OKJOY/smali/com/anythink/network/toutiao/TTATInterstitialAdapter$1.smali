.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;


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
    .line 35
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 38
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 39
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 41
    :cond_1d
    return-void
.end method

.method public final onInteractionAdLoad(Lcom/bytedance/sdk/openadsdk/TTInteractionAd;)V
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTInteractionAd;)Lcom/bytedance/sdk/openadsdk/TTInteractionAd;

    .line 46
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->c(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 47
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->d(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$1;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 49
    :cond_18
    return-void
.end method
