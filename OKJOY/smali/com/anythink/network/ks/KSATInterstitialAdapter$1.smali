.class final Lcom/anythink/network/ks/KSATInterstitialAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/i/IAdRequestManager$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATInterstitialAdapter;->loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATInterstitialAdapter;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 63
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->a(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 64
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->b(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V

    .line 68
    :cond_1d
    return-void
.end method

.method public final onFullScreenVideoAdLoad(Ljava/util/List;)V
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kwad/sdk/export/i/KsFullScreenVideoAd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 73
    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/export/i/KsFullScreenVideoAd;

    iput-object v0, v1, Lcom/anythink/network/ks/KSATInterstitialAdapter;->b:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd;

    .line 74
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->c(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 75
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->d(Lcom/anythink/network/ks/KSATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;->onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V

    .line 79
    :cond_26
    :try_start_26
    invoke-static {}, Lcom/anythink/network/ks/KSATInitManager;->getInstance()Lcom/anythink/network/ks/KSATInitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    invoke-virtual {v1}, Lcom/anythink/network/ks/KSATInterstitialAdapter;->getTrackingInfo()Lcom/anythink/core/b/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/ks/KSATInterstitialAdapter$1;->a:Lcom/anythink/network/ks/KSATInterstitialAdapter;

    iget-object v2, v2, Lcom/anythink/network/ks/KSATInterstitialAdapter;->b:Lcom/kwad/sdk/export/i/KsFullScreenVideoAd;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/network/ks/KSATInitManager;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3b} :catch_3c

    .line 83
    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    goto :goto_3b
.end method
