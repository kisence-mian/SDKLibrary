.class public Lcom/tapsdk/moment/Async;
.super Ljava/lang/Object;
.source "Async.java"


# static fields
.field private static final KEEP_ALIVE_TIME:J = 0x493e0L

.field private static final POOL_THREADS:I = 0x5

.field private static volatile mHandler:Landroid/os/Handler;

.field private static volatile mPool:Ljava/util/concurrent/ExecutorService;

.field private static volatile mQueue:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 3

    .line 55
    sget-object v0, Lcom/tapsdk/moment/Async;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 56
    const-class v0, Lcom/tapsdk/moment/Async;

    monitor-enter v0

    .line 57
    :try_start_7
    sget-object v1, Lcom/tapsdk/moment/Async;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 58
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tapsdk/moment/Async;->mHandler:Landroid/os/Handler;

    .line 60
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1

    .line 62
    :cond_1b
    :goto_1b
    sget-object v0, Lcom/tapsdk/moment/Async;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getPool()Ljava/util/concurrent/ExecutorService;
    .registers 9

    .line 25
    sget-object v0, Lcom/tapsdk/moment/Async;->mPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_24

    .line 26
    const-class v0, Lcom/tapsdk/moment/Async;

    monitor-enter v0

    .line 27
    :try_start_7
    sget-object v1, Lcom/tapsdk/moment/Async;->mPool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1f

    .line 28
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-wide/32 v5, 0x493e0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/tapsdk/moment/Async;->mPool:Ljava/util/concurrent/ExecutorService;

    .line 34
    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 36
    :cond_24
    :goto_24
    sget-object v0, Lcom/tapsdk/moment/Async;->mPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static getQueue()Ljava/util/concurrent/ExecutorService;
    .registers 9

    .line 40
    sget-object v0, Lcom/tapsdk/moment/Async;->mQueue:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_24

    .line 41
    const-class v0, Lcom/tapsdk/moment/Async;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/tapsdk/moment/Async;->mQueue:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1f

    .line 43
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v5, 0x493e0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/tapsdk/moment/Async;->mQueue:Ljava/util/concurrent/ExecutorService;

    .line 49
    :cond_1f
    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    .line 51
    :cond_24
    :goto_24
    sget-object v0, Lcom/tapsdk/moment/Async;->mQueue:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static runOnPool(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 66
    invoke-static {}, Lcom/tapsdk/moment/Async;->getPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public static runOnQueue(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 70
    invoke-static {}, Lcom/tapsdk/moment/Async;->getQueue()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public static runOnUIThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 74
    invoke-static {}, Lcom/tapsdk/moment/Async;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
