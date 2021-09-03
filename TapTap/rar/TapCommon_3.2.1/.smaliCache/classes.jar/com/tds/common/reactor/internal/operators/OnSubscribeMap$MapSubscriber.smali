.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeMap;
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
        "Lcom/tds/common/reactor/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lcom/tds/common/reactor/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TR;>;",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TR;>;"
    .local p2, "mapper":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 64
    iput-object p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->mapper:Lcom/tds/common/reactor/functions/Func1;

    .line 65
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 97
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 98
    return-void

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 101
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 85
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 86
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 87
    return-void

    .line 89
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->done:Z

    .line 91
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->mapper:Lcom/tds/common/reactor/functions/Func1;

    invoke-interface {v0, p1}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_d

    .line 78
    .local v0, "result":Ljava/lang/Object;, "TR;"
    nop

    .line 80
    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 81
    return-void

    .line 73
    .end local v0    # "result":Ljava/lang/Object;, "TR;"
    :catchall_d
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->unsubscribe()V

    .line 76
    invoke-static {v0, p1}, Lcom/tds/common/reactor/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 3
    .param p1, "p"    # Lcom/tds/common/reactor/Producer;

    .line 105
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeMap$MapSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 106
    return-void
.end method
