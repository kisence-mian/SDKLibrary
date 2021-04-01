.class final Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ErrorAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b43427a9c2e580L


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$NoOverflowBaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 265
    return-void
.end method


# virtual methods
.method onOverflow()V
    .registers 3

    .prologue
    .line 269
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter<TT;>;"
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string v1, "fromAsync: could not emit value due to lack of requests"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFromAsync$ErrorAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method
