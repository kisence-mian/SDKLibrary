.class public interface abstract Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/base/WindVideoAdBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindVideoAdBridgeInitListener"
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
.method public abstract adapterDidInitFailVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract adapterDidInitSuccessVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
