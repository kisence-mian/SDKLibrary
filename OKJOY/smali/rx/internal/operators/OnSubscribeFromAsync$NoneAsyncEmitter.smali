.class final Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoneAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34699b00190316f1L


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
    .line 195
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 209
    :cond_8
    :goto_8
    return-void

    .line 204
    :cond_9
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 207
    :cond_e
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->get()J

    move-result-wide v0

    .line 208
    .local v0, "r":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OnSubscribeFromAsync$NoneAsyncEmitter;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_8
.end method
