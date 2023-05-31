.class final Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeDetach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachSubscriber"
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
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Subscriber",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final producer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Producer;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    return-void
.end method


# virtual methods
.method innerRequest(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    const-wide/16 v4, 0x0

    .line 99
    cmp-long v1, p1, v4

    if-gez v1, :cond_1f

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n >= 0 required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1f
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Producer;

    .line 103
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_2d

    .line 104
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 113
    :cond_2c
    :goto_2c
    return-void

    .line 106
    :cond_2d
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 107
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Lrx/Producer;
    check-cast v0, Lrx/Producer;

    .line 108
    .restart local v0    # "p":Lrx/Producer;
    if-eqz v0, :cond_2c

    sget-object v1, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    if-eq v0, v1, :cond_2c

    .line 109
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 110
    .local v2, "r":J
    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    goto :goto_2c
.end method

.method innerUnsubscribe()V
    .registers 3

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->unsubscribe()V

    .line 132
    return-void
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    .line 93
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_15

    .line 94
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 96
    :cond_15
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    .line 80
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_16

    .line 81
    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 85
    :goto_15
    return-void

    .line 83
    :cond_16
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    .line 70
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_d

    .line 71
    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 73
    :cond_d
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 8
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 118
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 119
    .local v0, "r":J
    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 125
    .end local v0    # "r":J
    :cond_14
    return-void

    .line 121
    :cond_15
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    if-eq v2, v3, :cond_14

    .line 122
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Producer already set!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
