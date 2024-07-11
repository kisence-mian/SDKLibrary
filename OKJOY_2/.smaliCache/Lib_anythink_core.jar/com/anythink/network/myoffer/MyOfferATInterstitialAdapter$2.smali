.class final Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->o(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 149
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->p(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 151
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 142
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->n(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 144
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 135
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 137
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 2

    .line 156
    return-void
.end method

.method public final onRewarded()V
    .registers 1

    .line 161
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 121
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 123
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->e(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 114
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 116
    :cond_11
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 128
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_19
    return-void
.end method
