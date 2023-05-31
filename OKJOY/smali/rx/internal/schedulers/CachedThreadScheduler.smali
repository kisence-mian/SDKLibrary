.class public final Lrx/internal/schedulers/CachedThreadScheduler;
.super Lrx/Scheduler;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;,
        Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;,
        Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME:J = 0x3cL

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field static final NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    sget-object v1, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 40
    sget-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->unsubscribe()V

    .line 42
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3, v4}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 43
    sget-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 144
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 145
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    invoke-virtual {p0}, Lrx/internal/schedulers/CachedThreadScheduler;->start()V

    .line 148
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 174
    new-instance v1, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;

    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v1, v0}, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;-><init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    return-object v1
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 161
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 162
    .local v0, "curr":Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
    sget-object v1, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    if-ne v0, v1, :cond_d

    .line 167
    :goto_c
    return-void

    .line 165
    :cond_d
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    goto :goto_c
.end method

.method public start()V
    .registers 6

    .prologue
    .line 152
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v2, 0x3c

    sget-object v4, Lrx/internal/schedulers/CachedThreadScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 154
    .local v0, "update":Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 155
    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    .line 157
    :cond_18
    return-void
.end method
