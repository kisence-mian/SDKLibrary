.class final Lcom/anythink/interstitial/api/ATInterstitial$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/interstitial/api/ATInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/interstitial/api/ATInterstitial;


# direct methods
.method constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 123
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$7;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public final onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 106
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$6;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 116
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    # invokes: Lcom/anythink/interstitial/api/ATInterstitial;->isNeedAutoLoadAfterClose()Z
    invoke-static {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->access$000(Lcom/anythink/interstitial/api/ATInterstitial;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 117
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    const/4 v1, 0x1

    # invokes: Lcom/anythink/interstitial/api/ATInterstitial;->load(Z)V
    invoke-static {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->access$100(Lcom/anythink/interstitial/api/ATInterstitial;Z)V

    .line 119
    :cond_1a
    return-void
.end method

.method public final onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 54
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$2;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public final onInterstitialAdLoaded()V
    .registers 3

    .prologue
    .line 41
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/interstitial/api/ATInterstitial$1$1;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public final onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 136
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$8;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public final onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 80
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$4;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public final onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 93
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$5;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public final onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$3;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
