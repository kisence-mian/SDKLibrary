.class public Lcom/mintegral/msdk/video/js/bridge/RewardJs;
.super Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;
.source "RewardJs.java"

# interfaces
.implements Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->install(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 20
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :goto_9
    return-void

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/RewardJs$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs$1;-><init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 104
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :goto_9
    return-void

    .line 107
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/RewardJs$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs$7;-><init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 34
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->install(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :goto_9
    return-void

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/RewardJs$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs$2;-><init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 48
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :goto_9
    return-void

    .line 51
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs$3;-><init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 90
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :goto_9
    return-void

    .line 93
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/RewardJs$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs$6;-><init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 62
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :goto_9
    return-void

    .line 65
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/RewardJs$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs$4;-><init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 76
    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 77
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/BaseRewardJs;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_9
    return-void

    .line 79
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/bridge/RewardJs;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/video/js/bridge/RewardJs$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/video/js/bridge/RewardJs$5;-><init>(Lcom/mintegral/msdk/video/js/bridge/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method
