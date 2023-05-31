.class final Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;I)V
    .registers 6
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "maxThreads"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p2, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 71
    new-array v0, p2, [Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, p2, :cond_18

    .line 73
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v2, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-direct {v2, p1}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 75
    .end local v0    # "i":I
    :cond_18
    return-void
.end method


# virtual methods
.method public getEventLoop()Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;
    .registers 7

    .line 78
    iget v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 79
    .local v0, "c":I
    if-nez v0, :cond_7

    .line 80
    sget-object v1, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    return-object v1

    .line 83
    :cond_7
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    iget-wide v2, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v2, v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public shutdown()V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 88
    .local v3, "w":Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;
    invoke-virtual {v3}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;->unsubscribe()V

    .line 87
    .end local v3    # "w":Lcom/tds/common/reactor/schedulers/EventLoopsScheduler$PoolWorker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 90
    :cond_e
    return-void
.end method
