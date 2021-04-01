.class final Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;


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
    .line 148
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->q(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 190
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->r(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 192
    :cond_13
    return-void
.end method

.method public final onADClosed()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:Z

    .line 202
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->s(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 203
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->t(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 205
    :cond_18
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_25

    .line 206
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    .line 209
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_36} :catch_37

    .line 213
    :goto_36
    return-void

    :catch_37
    move-exception v0

    goto :goto_36
.end method

.method public final onADExposure()V
    .registers 1

    .prologue
    .line 185
    return-void
.end method

.method public final onADLeftApplication()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public final onADOpened()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->o(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 178
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->p(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 180
    :cond_13
    return-void
.end method

.method public final onADReceive()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:Z

    .line 153
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->k(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 154
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->l(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 157
    :cond_18
    :try_start_18
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    iget-object v2, v2, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    .line 161
    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    goto :goto_2d
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 7

    .prologue
    .line 170
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->m(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 171
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->n(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;->a:Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

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

    .line 173
    :cond_25
    return-void
.end method

.method public final onVideoCached()V
    .registers 1

    .prologue
    .line 166
    return-void
.end method
