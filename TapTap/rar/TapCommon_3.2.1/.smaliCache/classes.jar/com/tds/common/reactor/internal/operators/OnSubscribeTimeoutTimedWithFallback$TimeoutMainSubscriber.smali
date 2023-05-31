.class final Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;
.super Lcom/tds/common/reactor/Subscriber;
.source "OnSubscribeTimeoutTimedWithFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutMainSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;
    }
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

.field final arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

.field consumed:J

.field final fallback:Lcom/tds/common/reactor/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicLong;

.field final task:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final upstream:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

.field final worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;


# direct methods
.method constructor <init>(Lcom/tds/common/reactor/Subscriber;JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/schedulers/Scheduler$Worker;Lcom/tds/common/reactor/Observable;)V
    .registers 9
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "worker"    # Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/Subscriber<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/tds/common/reactor/schedulers/Scheduler$Worker;",
            "Lcom/tds/common/reactor/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    .local p1, "actual":Lcom/tds/common/reactor/Subscriber;, "Lcom/tds/common/reactor/Subscriber<-TT;>;"
    .local p6, "fallback":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<+TT;>;"
    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    .line 74
    iput-wide p2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->timeout:J

    .line 75
    iput-object p4, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 76
    iput-object p5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    .line 77
    iput-object p6, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->fallback:Lcom/tds/common/reactor/Observable;

    .line 78
    new-instance v0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    new-instance v0, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->task:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    .line 81
    new-instance v1, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-direct {v1, p0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;-><init>(Lcom/tds/common/reactor/Subscription;)V

    iput-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->upstream:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    .line 82
    invoke-virtual {p0, p5}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .line 125
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1e

    .line 126
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->task:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 128
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0}, Lcom/tds/common/reactor/Subscriber;->onCompleted()V

    .line 130
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    .line 132
    :cond_1e
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 112
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1f

    .line 113
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->task:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 115
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 117
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->unsubscribe()V

    goto :goto_22

    .line 119
    :cond_1f
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 121
    :goto_22
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 90
    .local v0, "idx":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x1

    add-long v5, v0, v3

    invoke-virtual {v2, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_38

    .line 94
    :cond_1c
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->task:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v2}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/reactor/Subscription;

    .line 95
    .local v2, "s":Lcom/tds/common/reactor/Subscription;
    if-eqz v2, :cond_29

    .line 96
    invoke-interface {v2}, Lcom/tds/common/reactor/Subscription;->unsubscribe()V

    .line 99
    :cond_29
    iget-wide v5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->consumed:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->consumed:J

    .line 101
    iget-object v5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    invoke-virtual {v5, p1}, Lcom/tds/common/reactor/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 103
    add-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->startTimeout(J)V

    .line 104
    return-void

    .line 91
    .end local v2    # "s":Lcom/tds/common/reactor/Subscription;
    :cond_38
    :goto_38
    return-void
.end method

.method onTimeout(J)V
    .registers 8
    .param p1, "idx"    # J

    .line 140
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->index:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_e

    .line 141
    return-void

    .line 144
    :cond_e
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->unsubscribe()V

    .line 146
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->fallback:Lcom/tds/common/reactor/Observable;

    if-nez v0, :cond_20

    .line 147
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_43

    .line 149
    :cond_20
    iget-wide v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->consumed:J

    .line 150
    .local v0, "c":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2d

    .line 151
    iget-object v2, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-virtual {v2, v0, v1}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->produced(J)V

    .line 154
    :cond_2d
    new-instance v2, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;

    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->actual:Lcom/tds/common/reactor/Subscriber;

    iget-object v4, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-direct {v2, v3, v4}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;-><init>(Lcom/tds/common/reactor/Subscriber;Lcom/tds/common/reactor/internal/producers/ProducerArbiter;)V

    .line 156
    .local v2, "fallbackSubscriber":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber<TT;>;"
    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->upstream:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    invoke-virtual {v3, v2}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->replace(Lcom/tds/common/reactor/Subscription;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 157
    iget-object v3, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->fallback:Lcom/tds/common/reactor/Observable;

    invoke-virtual {v3, v2}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 160
    .end local v0    # "c":J
    .end local v2    # "fallbackSubscriber":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$FallbackSubscriber<TT;>;"
    :cond_43
    :goto_43
    return-void
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 3
    .param p1, "p"    # Lcom/tds/common/reactor/Producer;

    .line 136
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->arbiter:Lcom/tds/common/reactor/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->setProducer(Lcom/tds/common/reactor/Producer;)V

    .line 137
    return-void
.end method

.method startTimeout(J)V
    .registers 9
    .param p1, "nextIdx"    # J

    .line 107
    .local p0, "this":Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;, "Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber<TT;>;"
    iget-object v0, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->task:Lcom/tds/common/reactor/subscriptions/SequentialSubscription;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->worker:Lcom/tds/common/reactor/schedulers/Scheduler$Worker;

    new-instance v2, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber$TimeoutTask;-><init>(Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;J)V

    iget-wide v3, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->timeout:J

    iget-object v5, p0, Lcom/tds/common/reactor/internal/operators/OnSubscribeTimeoutTimedWithFallback$TimeoutMainSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/subscriptions/SequentialSubscription;->replace(Lcom/tds/common/reactor/Subscription;)Z

    .line 108
    return-void
.end method
