.class public interface abstract Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onADClick()V
.end method

.method public abstract onADClose()V
.end method

.method public abstract onADExpose()V
.end method

.method public abstract onADLoad()V
.end method

.method public abstract onADShow()V
.end method

.method public abstract onError(Lcom/qq/e/comm/util/AdError;)V
.end method

.method public abstract onReward(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoCached()V
.end method

.method public abstract onVideoComplete()V
.end method
