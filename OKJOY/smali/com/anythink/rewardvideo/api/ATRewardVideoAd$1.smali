.class final Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/rewardvideo/api/ATRewardVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;


# direct methods
.method constructor <init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReward(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 127
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$8;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public final onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 98
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$6;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    # invokes: Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isNeedAutoLoadAfterClose()Z
    invoke-static {v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->access$000(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 108
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    const/4 v1, 0x1

    # invokes: Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Z)V
    invoke-static {v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->access$100(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;Z)V

    .line 110
    :cond_1a
    return-void
.end method

.method public final onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 46
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .registers 3

    .prologue
    .line 33
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$1;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public final onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 114
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$7;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public final onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 72
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$4;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public final onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    .prologue
    .line 85
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$5;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public final onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 59
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$3;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
