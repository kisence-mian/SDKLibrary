.class final Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->k(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 86
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->l(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 88
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->i(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 79
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->j(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 81
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->g(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 72
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->h(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 74
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->m(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 93
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->n(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onDeeplinkCallback(Z)V

    .line 95
    :cond_11
    return-void
.end method

.method public final onRewarded()V
    .registers 1

    .line 67
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->c(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 54
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->d(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 56
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 47
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->b(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 49
    :cond_11
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->e(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 61
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;->f(Lcom/anythink/network/onlineapi/OnlineApiATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_19
    return-void
.end method
