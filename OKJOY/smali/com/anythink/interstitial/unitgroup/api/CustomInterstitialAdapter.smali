.class public abstract Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;
.super Lcom/anythink/core/b/a/b;


# instance fields
.field protected mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

.field protected mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/anythink/core/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public clearImpressionListener()V
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 36
    return-void
.end method

.method public clearLoadListener()V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mLoadResultListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 32
    return-void
.end method

.method public abstract loadInterstitialAd(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public setCustomInterstitialEventListener(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 28
    return-void
.end method

.method public abstract show(Landroid/content/Context;)V
.end method
