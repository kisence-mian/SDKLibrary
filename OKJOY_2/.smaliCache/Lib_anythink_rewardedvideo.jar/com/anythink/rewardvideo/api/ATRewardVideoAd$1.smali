.class final Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;


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

    .line 39
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .registers 5

    .line 42
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$1;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public final onReward(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 151
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$9;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public final onRewardedVideoAdClosed(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 122
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$7;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$7;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 131
    iget-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    # invokes: Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isNeedAutoLoadAfterClose()Z
    invoke-static {p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->access$000(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 132
    iget-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    const/4 v0, 0x1

    # invokes: Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Z)V
    invoke-static {p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->access$100(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;Z)V

    .line 134
    :cond_1a
    return-void
.end method

.method public final onRewardedVideoAdFailed(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    if-eqz v0, :cond_d

    .line 68
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;->this$0:Lcom/anythink/rewardvideo/api/ATRewardVideoAd;

    iget-object v0, v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/a/a;->a()V

    .line 70
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$3;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .registers 3

    .line 54
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;

    invoke-direct {v1, p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$2;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public final onRewardedVideoAdPlayClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 138
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$8;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$8;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public final onRewardedVideoAdPlayEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 96
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$5;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public final onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 5

    .line 109
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$6;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final onRewardedVideoAdPlayStart(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 83
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1$4;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
