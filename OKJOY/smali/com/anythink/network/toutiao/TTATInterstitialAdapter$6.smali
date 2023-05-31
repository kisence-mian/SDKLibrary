.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;


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
    .line 178
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->H(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 197
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->I(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 199
    :cond_13
    return-void
.end method

.method public final onAdDismiss()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->F(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 182
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->G(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 184
    :cond_13
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 185
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 188
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_36

    .line 192
    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->J(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 204
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->K(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 206
    :cond_13
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 210
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .registers 4

    .prologue
    .line 215
    return-void
.end method
