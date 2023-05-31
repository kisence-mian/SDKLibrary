.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


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
    .line 154
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 157
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->A(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 158
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->B(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 160
    :cond_1d
    return-void
.end method

.method public final onNativeExpressAdLoad(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-static {v1, v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 165
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 166
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->D(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 167
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->E(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 170
    :cond_28
    :try_start_28
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$5;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_40

    .line 174
    :goto_3f
    return-void

    :catch_40
    move-exception v0

    goto :goto_3f
.end method
