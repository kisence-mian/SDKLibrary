.class final Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "<-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 57
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    .line 58
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->predicate:Lrx/functions/Func1;

    .line 59
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->request(J)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 100
    :goto_4
    return-void

    .line 99
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 85
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 91
    :goto_7
    return-void

    .line 88
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->done:Z

    .line 90
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->predicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_14

    move-result v1

    .line 75
    .local v1, "result":Z
    if-eqz v1, :cond_23

    .line 76
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 80
    .end local v1    # "result":Z
    :goto_13
    return-void

    .line 68
    :catch_14
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->unsubscribe()V

    .line 71
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 78
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "result":Z
    :cond_23
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->request(J)V

    goto :goto_13
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    invoke-super {p0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 105
    return-void
.end method
