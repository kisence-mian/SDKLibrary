.class public interface abstract Lcom/tds/common/reactor/transformer/FlowCall;
.super Ljava/lang/Object;
.source "FlowCall.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract clone()Lcom/tds/common/reactor/transformer/FlowCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/transformer/FlowCall<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract enqueue(Lcom/tds/common/reactor/transformer/FlowCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/transformer/FlowCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method
