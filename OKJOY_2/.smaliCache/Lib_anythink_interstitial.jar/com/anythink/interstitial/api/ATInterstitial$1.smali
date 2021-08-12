.class final Lcom/anythink/interstitial/api/ATInterstitial$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialExListener;


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

    .line 39
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .registers 5

    .line 42
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/interstitial/api/ATInterstitial$1$1;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public final onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 139
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$8;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public final onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 122
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$7;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 132
    iget-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    # invokes: Lcom/anythink/interstitial/api/ATInterstitial;->isNeedAutoLoadAfterClose()Z
    invoke-static {p1}, Lcom/anythink/interstitial/api/ATInterstitial;->access$000(Lcom/anythink/interstitial/api/ATInterstitial;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 133
    iget-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    const/4 v0, 0x1

    # invokes: Lcom/anythink/interstitial/api/ATInterstitial;->load(Z)V
    invoke-static {p1, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->access$100(Lcom/anythink/interstitial/api/ATInterstitial;Z)V

    .line 135
    :cond_1a
    return-void
.end method

.method public final onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial$1;->this$0:Lcom/anythink/interstitial/api/ATInterstitial;

    iget-object v0, v0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    invoke-virtual {v0}, Lcom/anythink/interstitial/a/a;->a()V

    .line 70
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$3;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public final onInterstitialAdLoaded()V
    .registers 3

    .line 54
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$2;

    invoke-direct {v1, p0}, Lcom/anythink/interstitial/api/ATInterstitial$1$2;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public final onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 152
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$9;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$9;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public final onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 96
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$5;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public final onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 109
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$6;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 83
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/interstitial/api/ATInterstitial$1$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial$1$4;-><init>(Lcom/anythink/interstitial/api/ATInterstitial$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
