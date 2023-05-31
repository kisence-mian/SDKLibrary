.class public interface abstract Lcom/mintegral/msdk/out/AdapterListener;
.super Ljava/lang/Object;
.source "AdapterListener.java"


# virtual methods
.method public abstract onAdClicked(Lcom/mintegral/msdk/out/Campaign;)V
.end method

.method public abstract onAdLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onFrameAdLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation
.end method
