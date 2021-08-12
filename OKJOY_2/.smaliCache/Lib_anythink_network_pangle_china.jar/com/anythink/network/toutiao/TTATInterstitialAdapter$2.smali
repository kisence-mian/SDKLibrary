.class final Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTInteractionAd$AdInteractionListener;


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

    .line 59
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->e(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 64
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->f(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 66
    :cond_11
    return-void
.end method

.method public final onAdDismiss()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->i(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 78
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->j(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 80
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 71
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$2;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->h(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 73
    :cond_11
    return-void
.end method
