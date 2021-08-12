.class interface abstract Lcom/sigmob/windad/Splash/WindSplashAdBridge$WindSplashAdBridgeListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/Splash/WindSplashAdBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WindSplashAdBridgeListener"
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

.method public abstract adapterDidCloseSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidFailToLoadSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidFailToShowSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidReceiveSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidSkipSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract adapterDidStartPlayingSplashAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
