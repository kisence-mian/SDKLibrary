.class final Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATInterstitialAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->k(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 85
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->l(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 87
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->i(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 78
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->j(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 80
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->g(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 71
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->h(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 73
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->m(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 92
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->n(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onDeeplinkCallback(Z)V

    .line 94
    :cond_11
    return-void
.end method

.method public final onRewarded()V
    .registers 1

    .line 66
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->c(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 53
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->d(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 55
    :cond_11
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->a(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 46
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->b(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 48
    :cond_11
    return-void
.end method

.method public final onVideoShowFailed(Lcom/anythink/basead/c/f;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->e(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 60
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATInterstitialAdapter$1;->a:Lcom/anythink/network/adx/AdxATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATInterstitialAdapter;->f(Lcom/anythink/network/adx/AdxATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_19
    return-void
.end method
