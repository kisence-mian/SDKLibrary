.class final Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;
.super Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorSchedulerWorker"
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tds/common/reactor/schedulers/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field final service:Ljava/util/concurrent/ScheduledExecutorService;

.field final tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 64
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 69
    invoke-static {}, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->getInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 3

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 108
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 109
    return-void

    .line 111
    :cond_e
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    .line 112
    .local v0, "sa":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    if-nez v0, :cond_19

    .line 113
    return-void

    .line 115
    :cond_19
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_31

    .line 116
    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 117
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->run()V

    goto :goto_31

    .line 119
    :cond_2b
    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 120
    return-void

    .line 123
    .end local v0    # "sa":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_3a

    .line 124
    return-void

    .line 123
    :cond_3a
    goto :goto_0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 5
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 74
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 75
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 78
    :cond_b
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduledAction(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object p1

    .line 80
    new-instance v0, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-direct {v0, p1, v1}, Lcom/tds/common/reactor/schedulers/ScheduledAction;-><init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)V

    .line 81
    .local v0, "ea":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 82
    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_3d

    .line 89
    :try_start_28
    iget-object v1, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 98
    goto :goto_3d

    .line 90
    :catch_2e
    move-exception v1

    .line 92
    .local v1, "t":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->remove(Lcom/tds/common/reactor/Subscription;)V

    .line 93
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 95
    invoke-static {v1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 97
    throw v1

    .line 101
    .end local v1    # "t":Ljava/util/concurrent/RejectedExecutionException;
    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
    .registers 11
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 128
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_b

    .line 129
    invoke-virtual {p0, p1}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 131
    :cond_b
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 132
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 135
    :cond_16
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduledAction(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object v0

    .line 137
    .local v0, "decorated":Lcom/tds/common/reactor/functions/Action0;
    new-instance v1, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v1}, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 138
    .local v1, "first":Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;
    new-instance v2, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v2}, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 139
    .local v2, "mas":Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;
    invoke-virtual {v2, v1}, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 140
    iget-object v3, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v3, v2}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 141
    new-instance v3, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;

    invoke-direct {v3, p0, v2}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;-><init>(Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;)V

    invoke-static {v3}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->create(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;

    move-result-object v3

    .line 148
    .local v3, "removeMas":Lcom/tds/common/reactor/Subscription;
    new-instance v4, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    new-instance v5, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;

    invoke-direct {v5, p0, v2, v0, v3}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;-><init>(Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/Subscription;)V

    invoke-direct {v4, v5}, Lcom/tds/common/reactor/schedulers/ScheduledAction;-><init>(Lcom/tds/common/reactor/functions/Action0;)V

    .line 167
    .local v4, "ea":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    invoke-virtual {v1, v4}, Lcom/tds/common/reactor/subscriptions/MultipleAssignmentSubscription;->set(Lcom/tds/common/reactor/Subscription;)V

    .line 172
    :try_start_42
    iget-object v5, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5, v4, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    .line 173
    .local v5, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v4, v5}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V
    :try_end_4b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_42 .. :try_end_4b} :catch_4d

    .line 178
    .end local v5    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    nop

    .line 184
    return-object v3

    .line 174
    :catch_4d
    move-exception v5

    .line 176
    .local v5, "t":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v5}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 177
    throw v5
.end method

.method public unsubscribe()V
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 195
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 196
    return-void
.end method
