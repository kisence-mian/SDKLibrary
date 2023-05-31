.class final Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedWorkerPool"
.end annotation


# instance fields
.field private final allWorkers:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

.field private final evictorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final evictorTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveTime:J

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 66
    if-eqz p4, :cond_c

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    move-wide v6, v0

    iput-wide v6, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 68
    new-instance v0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v1, 0x0

    .line 72
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p4, :cond_3d

    .line 73
    const/4 v2, 0x1

    new-instance v3, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$1;

    invoke-direct {v3, p0, p1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$1;-><init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 82
    new-instance v3, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$2;

    invoke-direct {v3, p0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool$2;-><init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, v0

    move-wide v4, v6

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 91
    :cond_3d
    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 92
    iput-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    .line 93
    return-void
.end method


# virtual methods
.method evictExpiredWorkers()V
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 121
    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    .line 123
    .local v0, "currentTimestamp":J
    iget-object v2, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 124
    .local v3, "threadWorker":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;
    invoke-virtual {v3}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_34

    .line 125
    iget-object v4, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 126
    iget-object v4, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v3}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->remove(Lcom/tds/common/reactor/Subscription;)V

    .line 133
    .end local v3    # "threadWorker":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_33
    goto :goto_12

    .line 135
    .end local v0    # "currentTimestamp":J
    :cond_34
    return-void
.end method

.method get()Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 97
    sget-object v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    return-object v0

    .line 99
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 100
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 101
    .local v0, "threadWorker":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;
    if-eqz v0, :cond_1e

    .line 102
    return-object v0

    .line 104
    .end local v0    # "threadWorker":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_1e
    goto :goto_b

    .line 107
    :cond_1f
    new-instance v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 108
    .local v0, "w":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 109
    return-object v0
.end method

.method now()J
    .registers 3

    .line 138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method release(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .registers 6
    .param p1, "threadWorker"    # Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 114
    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->setExpirationTime(J)V

    .line 116
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method shutdown()V
    .registers 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_8

    .line 144
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_f

    .line 147
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_16

    .line 150
    :cond_f
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 151
    throw v0
.end method
