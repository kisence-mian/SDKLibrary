.class interface abstract Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/base/WindVideoAdBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WindVideoAdBridgeLoadListener"
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
.method public abstract adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidRreLoadFailRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidRreLoadSuccessRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
