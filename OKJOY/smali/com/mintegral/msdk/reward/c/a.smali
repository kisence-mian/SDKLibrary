.class public final Lcom/mintegral/msdk/reward/c/a;
.super Ljava/lang/Object;
.source "DecoratorRewardVideoListener.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;


# instance fields
.field private a:Lcom/mintegral/msdk/out/RewardVideoListener;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/out/RewardVideoListener;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    .line 16
    return-void
.end method


# virtual methods
.method public final onAdClose(ZLjava/lang/String;F)V
    .registers 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mintegral/msdk/out/RewardVideoListener;->onAdClose(ZLjava/lang/String;F)V

    .line 30
    :cond_9
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0}, Lcom/mintegral/msdk/out/RewardVideoListener;->onAdShow()V

    .line 23
    :cond_9
    return-void
.end method

.method public final onEndcardShow(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/RewardVideoListener;->onEndcardShow(Ljava/lang/String;)V

    .line 58
    :cond_9
    return-void
.end method

.method public final onLoadSuccess(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/RewardVideoListener;->onLoadSuccess(Ljava/lang/String;)V

    .line 79
    :cond_9
    return-void
.end method

.method public final onShowFail(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/RewardVideoListener;->onShowFail(Ljava/lang/String;)V

    .line 37
    :cond_9
    return-void
.end method

.method public final onVideoAdClicked(ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p2}, Lcom/mintegral/msdk/out/RewardVideoListener;->onVideoAdClicked(Ljava/lang/String;)V

    .line 44
    :cond_9
    return-void
.end method

.method public final onVideoComplete(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/RewardVideoListener;->onVideoComplete(Ljava/lang/String;)V

    .line 51
    :cond_9
    return-void
.end method

.method public final onVideoLoadFail(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/RewardVideoListener;->onVideoLoadFail(Ljava/lang/String;)V

    .line 65
    :cond_9
    return-void
.end method

.method public final onVideoLoadSuccess(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcom/mintegral/msdk/reward/c/a;->a:Lcom/mintegral/msdk/out/RewardVideoListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/RewardVideoListener;->onVideoLoadSuccess(Ljava/lang/String;)V

    .line 72
    :cond_9
    return-void
.end method
