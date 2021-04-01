.class final Lrx/internal/operators/OperatorCast$CastSubscriber;
.super Lrx/Subscriber;
.source "OperatorCast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorCast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CastSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final castClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorCast$CastSubscriber;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "castClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->actual:Lrx/Subscriber;

    .line 53
    iput-object p2, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->castClass:Ljava/lang/Class;

    .line 54
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorCast$CastSubscriber;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 90
    :goto_4
    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorCast$CastSubscriber;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 75
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 81
    :goto_7
    return-void

    .line 78
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->done:Z

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/operators/OperatorCast$CastSubscriber;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->castClass:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v1

    .line 69
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 70
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_b
    return-void

    .line 62
    :catch_c
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual {p0}, Lrx/internal/operators/OperatorCast$CastSubscriber;->unsubscribe()V

    .line 65
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorCast$CastSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorCast$CastSubscriber;, "Lrx/internal/operators/OperatorCast$CastSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorCast$CastSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 95
    return-void
.end method
