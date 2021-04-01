.class public final Lcom/anythink/interstitial/a/d;
.super Lcom/anythink/core/b/f;


# instance fields
.field a:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field private y:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/anythink/core/b/f;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/anythink/interstitial/a/d$1;

    invoke-direct {v0, p0}, Lcom/anythink/interstitial/a/d$1;-><init>(Lcom/anythink/interstitial/a/d;)V

    iput-object v0, p0, Lcom/anythink/interstitial/a/d;->y:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    .line 54
    return-void
.end method

.method private a(Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/anythink/interstitial/a/d;->p:Z

    if-eqz v0, :cond_5

    .line 87
    :goto_4
    return-void

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {v0}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoaded()V

    .line 86
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    goto :goto_4
.end method

.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/anythink/interstitial/a/d;->p:Z

    if-eqz v0, :cond_5

    .line 98
    :goto_4
    return-void

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    if-eqz v0, :cond_e

    .line 95
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-interface {v0, p1}, Lcom/anythink/interstitial/api/ATInterstitialListener;->onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 97
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/interstitial/a/d;->a:Lcom/anythink/interstitial/api/ATInterstitialListener;

    goto :goto_4
.end method

.method public final a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/b/a/b;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    instance-of v0, p1, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    if-eqz v0, :cond_27

    .line 64
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/anythink/interstitial/a/d;->x:Ljava/util/Map;

    if-eqz v1, :cond_28

    .line 66
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->x:Ljava/util/Map;

    iget v1, p2, Lcom/anythink/core/c/c$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATMediationSetting;

    move-object v1, v0

    .line 68
    :goto_18
    iget-object v0, p0, Lcom/anythink/interstitial/a/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    check-cast p1, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iget-object v2, p0, Lcom/anythink/interstitial/a/d;->y:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;

    invoke-static {v0, p1, p3, v1, v2}, Lcom/anythink/interstitial/a/a/a;->a(Landroid/content/Context;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;)V

    .line 70
    :cond_27
    return-void

    :cond_28
    move-object v1, v0

    goto :goto_18
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/b/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V

    .line 59
    return-void
.end method
