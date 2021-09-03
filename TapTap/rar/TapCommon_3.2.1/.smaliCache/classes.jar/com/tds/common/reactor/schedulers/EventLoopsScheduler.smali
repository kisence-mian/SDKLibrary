.class public final Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;
.super Lcom/tds/common/reactor/schedulers/Scheduler;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;,
        Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;,
        Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    }
.end annotation


# static fields
.field static final KEY_MAX_THREADS:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field static final MAX_THREADS:I

.field static final NONE:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

.field static final SHUTDOWN_WORKER:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 38
    const-string v0, "rx.scheduler.max-computation-threads"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, "maxThreads":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 41
    .local v2, "cpuCount":I
    if-lez v0, :cond_1a

    if-le v0, v2, :cond_18

    goto :goto_1a

    .line 44
    :cond_18
    move v3, v0

    .local v3, "max":I
    goto :goto_1b

    .line 42
    .end local v3    # "max":I
    :cond_1a
    :goto_1a
    move v3, v2

    .line 46
    .restart local v3    # "max":I
    :goto_1b
    sput v3, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    .line 51
    .end local v0    # "maxThreads":I
    .end local v2    # "cpuCount":I
    .end local v3    # "max":I
    new-instance v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    sget-object v2, Lcom/tds/common/reactor/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v2}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    .line 52
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;->unsubscribe()V

    .line 56
    new-instance v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->NONE:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 98
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->NONE:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method public createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .registers 3

    .line 107
    new-instance v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$EventLoopWorker;-><init>(Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;)V

    return-object v0
.end method

.method public scheduleDirect(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 6
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 139
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    .line 140
    .local v0, "pw":Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/schedulers/ScheduledAction;

    move-result-object v1

    return-object v1
.end method

.method public shutdown()V
    .registers 4

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    .line 122
    .local v0, "curr":Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    sget-object v1, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->NONE:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    if-ne v0, v1, :cond_d

    .line 123
    return-void

    .line 125
    :cond_d
    iget-object v2, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 126
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->shutdown()V

    .line 127
    return-void

    .line 129
    .end local v0    # "curr":Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    :cond_19
    goto :goto_0
.end method

.method public start()V
    .registers 4

    .line 112
    new-instance v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    invoke-direct {v0, v1, v2}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 113
    .local v0, "update":Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->NONE:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 114
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->shutdown()V

    .line 116
    :cond_16
    return-void
.end method
