.class public final Lcom/anythink/interstitial/a/d;
.super Lcom/anythink/core/common/f;


# instance fields
.field a:Lcom/anythink/interstitial/api/ATInterstitialListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a(Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/anythink/interstitial/a/d;->r:Z

    if-eqz v0, :cond_5

    .line 40
    return-void

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_c

    .line 43
    invoke-interface {v0}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoaded()V

    .line 45
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 46
    return-void
.end method

.method public final a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 2

    .line 31
    return-void
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 50
    iget-boolean v0, p0, Lcom/anythink/interstitial/a/d;->r:Z

    if-eqz v0, :cond_5

    .line 51
    return-void

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_c

    .line 54
    invoke-interface {v0, p1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 56
    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 57
    return-void
.end method

.method public final b()V
    .registers 2

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 62
    return-void
.end method
