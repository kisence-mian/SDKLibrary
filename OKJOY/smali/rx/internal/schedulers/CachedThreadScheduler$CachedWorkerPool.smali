.class final Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedWorkerPool"
.end annotation


# instance fields
.field private final allWorkers:Lrx/subscriptions/CompositeSubscription;

.field private final evictorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final evictorTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveTime:J

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 56
    if-eqz p4, :cond_40

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    :goto_b
    iput-wide v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    .line 57
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v7, 0x0

    .line 62
    .local v7, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p4, :cond_3b

    .line 63
    const/4 v1, 0x1

    new-instance v2, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;-><init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 71
    new-instance v1, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$2;

    invoke-direct {v1, p0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$2;-><init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    iget-wide v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    iget-wide v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 80
    :cond_3b
    iput-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    iput-object v7, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    .line 82
    return-void

    .line 56
    .end local v0    # "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v7    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_40
    const-wide/16 v2, 0x0

    goto :goto_b
.end method


# virtual methods
.method evictExpiredWorkers()V
    .registers 7

    .prologue
    .line 109
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 110
    invoke-virtual {p0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    .line 112
    .local v0, "currentTimestamp":J
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 113
    .local v3, "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    invoke-virtual {v3}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_34

    .line 114
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 115
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v3}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_12

    .line 124
    .end local v0    # "currentTimestamp":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_34
    return-void
.end method

.method get()Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    .registers 4

    .prologue
    .line 85
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 86
    sget-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 98
    :goto_a
    return-object v0

    .line 88
    :cond_b
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 89
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 90
    .local v0, "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    if-eqz v0, :cond_b

    goto :goto_a

    .line 96
    .end local v0    # "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_1e
    new-instance v1, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v1, v2}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 97
    .local v1, "w":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    move-object v0, v1

    .line 98
    goto :goto_a
.end method

.method now()J
    .registers 3

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method release(Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .registers 6
    .param p1, "threadWorker"    # Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .prologue
    .line 103
    invoke-virtual {p0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->setExpirationTime(J)V

    .line 105
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method shutdown()V
    .registers 3

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_a

    .line 133
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 135
    :cond_a
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    .line 136
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    .line 139
    :cond_13
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 141
    return-void

    .line 139
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    throw v0
.end method
