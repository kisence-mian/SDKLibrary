.class public interface abstract Lcom/tds/common/reactor/transformer/FlowCallback;
.super Ljava/lang/Object;
.source "FlowCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowArbiter$FlowResult<",
            "TT;>;)V"
        }
    .end annotation
.end method
