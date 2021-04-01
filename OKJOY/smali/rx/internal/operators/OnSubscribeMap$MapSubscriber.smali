.class final Lrx/internal/operators/OnSubscribeMap$MapSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapSubscriber"
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

.field done:Z

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    .line 62
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 98
    :goto_4
    return-void

    .line 97
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 83
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 89
    :goto_7
    return-void

    .line 86
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

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
    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->mapper:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_c

    move-result-object v1

    .line 77
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_b
    return-void

    .line 70
    :catch_c
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->unsubscribe()V

    .line 73
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OnSubscribeMap$MapSubscriber;, "Lrx/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 103
    return-void
.end method
