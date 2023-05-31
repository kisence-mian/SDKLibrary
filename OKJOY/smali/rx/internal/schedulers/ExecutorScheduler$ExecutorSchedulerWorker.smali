.class final Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;
.super Lrx/Scheduler$Worker;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/ExecutorScheduler;
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
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field final service:Ljava/util/concurrent/ScheduledExecutorService;

.field final tasks:Lrx/subscriptions/CompositeSubscription;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 54
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    .line 59
    invoke-static {}, Lrx/internal/schedulers/GenericScheduledExecutorService;->getInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 94
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 95
    iget-object v1, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 111
    :cond_d
    :goto_d
    return-void

    .line 98
    :cond_e
    iget-object v1, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .line 99
    .local v0, "sa":Lrx/internal/schedulers/ScheduledAction;
    if-eqz v0, :cond_d

    .line 102
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_29

    .line 103
    iget-object v1, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_32

    .line 104
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->run()V

    .line 110
    :cond_29
    iget-object v1, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_d

    .line 106
    :cond_32
    iget-object v1, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_d
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 64
    invoke-virtual {p0}, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 65
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 88
    :cond_a
    :goto_a
    return-object v0

    .line 67
    :cond_b
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v2, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0, p1, v2}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;Lrx/subscriptions/CompositeSubscription;)V

    .line 68
    .local v0, "ea":Lrx/internal/schedulers/ScheduledAction;
    iget-object v2, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 69
    iget-object v2, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_a

    .line 76
    :try_start_24
    iget-object v2, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_29
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_a

    .line 77
    :catch_2a
    move-exception v1

    .line 79
    .local v1, "t":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v0}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    .line 80
    iget-object v2, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 82
    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 84
    throw v1
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 13
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 115
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gtz v6, :cond_b

    .line 116
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v4

    .line 169
    :goto_a
    return-object v4

    .line 118
    :cond_b
    invoke-virtual {p0}, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 119
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v4

    goto :goto_a

    .line 122
    :cond_16
    new-instance v2, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 123
    .local v2, "first":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v3, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v3}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 124
    .local v3, "mas":Lrx/subscriptions/MultipleAssignmentSubscription;
    invoke-virtual {v3, v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 125
    iget-object v6, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v6, v3}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 126
    new-instance v6, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;

    invoke-direct {v6, p0, v3}, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$1;-><init>(Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-static {v6}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v4

    .line 133
    .local v4, "removeMas":Lrx/Subscription;
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    new-instance v6, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;

    invoke-direct {v6, p0, v3, p1, v4}, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker$2;-><init>(Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action0;Lrx/Subscription;)V

    invoke-direct {v0, v6}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 152
    .local v0, "ea":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {v2, v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 157
    :try_start_3e
    iget-object v6, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 158
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V
    :try_end_47
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_a

    .line 159
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_48
    move-exception v5

    .line 161
    .local v5, "t":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v5}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 162
    throw v5
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->tasks:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 180
    iget-object v0, p0, Lrx/internal/schedulers/ExecutorScheduler$ExecutorSchedulerWorker;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 181
    return-void
.end method
