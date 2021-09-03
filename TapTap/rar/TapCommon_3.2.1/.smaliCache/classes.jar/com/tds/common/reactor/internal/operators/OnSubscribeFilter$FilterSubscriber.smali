.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OnSubscribeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter;
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
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final predicate:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p2, "predicate":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 60
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->predicate:Lcom/tds/common/reactor/functions/Func1;

    .line 61
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->request(J)V

    .line 62
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 98
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 99
    return-void

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 102
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 86
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 87
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 88
    return-void

    .line 90
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->done:Z

    .line 92
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->predicate:Lcom/tds/common/reactor/functions/Func1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1b

    .line 75
    .local v0, "result":Z
    nop

    .line 77
    if-eqz v0, :cond_15

    .line 78
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v1, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_1a

    .line 80
    :cond_15
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->request(J)V

    .line 82
    :goto_1a
    return-void

    .line 70
    .end local v0    # "result":Z
    :catchall_1b
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->unsubscribe()V

    .line 73
    invoke-static {v0, p1}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 3
    .param p1, "p"    # Lcom/tds/common/reactor/Producer;

    .line 105
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber<TT;>;"
    invoke-super {p0, p1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 106
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeFilter$FilterSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 107
    return-void
.end method
