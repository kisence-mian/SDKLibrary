.class final Lcom/anythink/interstitial/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/interstitial/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/interstitial/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/a/d;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/anythink/interstitial/a/d$1;->a:Lcom/anythink/interstitial/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterstitialAdDataLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anythink/interstitial/a/d$1;->a:Lcom/anythink/interstitial/a/d;

    invoke-virtual {v0, p1}, Lcom/anythink/interstitial/a/d;->a(Lcom/anythink/core/b/a/b;)V

    .line 28
    return-void
.end method

.method public final onInterstitialAdLoadFail(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 42
    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->clearLoadListener()V

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/anythink/interstitial/a/d$1;->a:Lcom/anythink/interstitial/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/interstitial/a/d;->a(Lcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    .line 46
    return-void
.end method

.method public final onInterstitialAdLoaded(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;)V
    .registers 4

    .prologue
    .line 33
    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->clearLoadListener()V

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/anythink/interstitial/a/d$1;->a:Lcom/anythink/interstitial/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anythink/interstitial/a/d;->a(Lcom/anythink/core/b/a/b;Ljava/util/List;)V

    .line 37
    return-void
.end method
