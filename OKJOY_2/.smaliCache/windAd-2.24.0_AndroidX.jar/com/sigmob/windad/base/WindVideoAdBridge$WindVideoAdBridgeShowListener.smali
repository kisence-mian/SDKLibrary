.class interface abstract Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/base/WindVideoAdBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WindVideoAdBridgeShowListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sigmob/sdk/common/models/ADStrategy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidCloseRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract adapterDidFailToPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidPlayCompleteRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidPlayEndRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidStartPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
