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

    .line 183
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 201
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->H(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 202
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->I(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 204
    :cond_11
    return-void
.end method

.method public final onAdDismiss()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->F(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 187
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->G(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 189
    :cond_11
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 190
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->C(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 193
    :cond_22
    :try_start_22
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_34

    .line 196
    return-void

    .line 194
    :catch_34
    move-exception v0

    .line 197
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 208
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->J(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 209
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$6;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->K(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 211
    :cond_11
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    .line 215
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
    .registers 4

    .line 220
    return-void
.end method
