.class final Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/interstitial/InterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->g(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 120
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->h(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 122
    :cond_13
    return-void
.end method

.method public final onADClosed()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:Z

    .line 131
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->i(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 132
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->j(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 134
    :cond_18
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    if-eqz v0, :cond_25

    .line 135
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->destroy()V

    .line 137
    :cond_25
    return-void
.end method

.method public final onADExposure()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method

.method public final onADLeftApplication()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method public final onADOpened()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 109
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 111
    :cond_13
    return-void
.end method

.method public final onADReceive()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:Z

    .line 92
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 93
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 95
    :cond_18
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 7

    .prologue
    .line 100
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 101
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    const-string v2, "4001"

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 104
    :cond_25
    return-void
.end method
