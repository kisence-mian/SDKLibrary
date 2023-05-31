.class public final Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;
.super Lcom/tds/common/reactor/schedulers/Scheduler;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;,
        Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;,
        Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME:J

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field static final NONE:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREADWORKER:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 47
    new-instance v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    sget-object v1, Lcom/tds/common/reactor/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 48
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$ThreadWorker;->unsubscribe()V

    .line 50
    new-instance v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->NONE:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 51
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    .line 53
    const-string v0, "rx.io-scheduler.keepalive"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->KEEP_ALIVE_TIME:J

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 155
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->NONE:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 158
    invoke-virtual {p0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->start()V

    .line 159
    return-void
.end method


# virtual methods
.method public createWorker()Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
    .registers 3

    .line 185
    new-instance v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$EventLoopWorker;-><init>(Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    return-object v0
.end method

.method public shutdown()V
    .registers 4

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 173
    .local v0, "curr":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;
    sget-object v1, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->NONE:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    if-ne v0, v1, :cond_d

    .line 174
    return-void

    .line 176
    :cond_d
    iget-object v2, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 177
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    .line 178
    return-void

    .line 180
    .end local v0    # "curr":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;
    :cond_19
    goto :goto_0
.end method

.method public start()V
    .registers 6

    .line 163
    new-instance v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    sget-wide v2, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->KEEP_ALIVE_TIME:J

    sget-object v4, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 165
    .local v0, "update":Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;
    iget-object v1, p0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;->NONE:Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 166
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    .line 168
    :cond_18
    return-void
.end method
