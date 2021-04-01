.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/schedulers/Schedulers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final computationScheduler:Lrx/Scheduler;

.field private final ioScheduler:Lrx/Scheduler;

.field private final newThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v4

    invoke-virtual {v4}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v1

    .line 59
    .local v1, "hook":Lrx/plugins/RxJavaSchedulersHook;
    invoke-virtual {v1}, Lrx/plugins/RxJavaSchedulersHook;->getComputationScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 60
    .local v0, "c":Lrx/Scheduler;
    if-eqz v0, :cond_24

    .line 61
    iput-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    .line 66
    :goto_13
    invoke-virtual {v1}, Lrx/plugins/RxJavaSchedulersHook;->getIOScheduler()Lrx/Scheduler;

    move-result-object v2

    .line 67
    .local v2, "io":Lrx/Scheduler;
    if-eqz v2, :cond_2b

    .line 68
    iput-object v2, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    .line 73
    :goto_1b
    invoke-virtual {v1}, Lrx/plugins/RxJavaSchedulersHook;->getNewThreadScheduler()Lrx/Scheduler;

    move-result-object v3

    .line 74
    .local v3, "nt":Lrx/Scheduler;
    if-eqz v3, :cond_32

    .line 75
    iput-object v3, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    .line 79
    :goto_23
    return-void

    .line 63
    .end local v2    # "io":Lrx/Scheduler;
    .end local v3    # "nt":Lrx/Scheduler;
    :cond_24
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createComputationScheduler()Lrx/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    goto :goto_13

    .line 70
    .restart local v2    # "io":Lrx/Scheduler;
    :cond_2b
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createIoScheduler()Lrx/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    goto :goto_1b

    .line 77
    .restart local v3    # "nt":Lrx/Scheduler;
    :cond_32
    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->createNewThreadScheduler()Lrx/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    goto :goto_23
.end method

.method public static computation()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 123
    invoke-static {}, Lrx/schedulers/Schedulers;->getInstance()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onComputationScheduler(Lrx/Scheduler;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lrx/Scheduler;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 161
    new-instance v0, Lrx/internal/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static getInstance()Lrx/schedulers/Schedulers;
    .registers 3

    .prologue
    .line 42
    .local v0, "current":Lrx/schedulers/Schedulers;
    :goto_0
    sget-object v1, Lrx/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lrx/schedulers/Schedulers;
    check-cast v0, Lrx/schedulers/Schedulers;

    .line 43
    .restart local v0    # "current":Lrx/schedulers/Schedulers;
    if-eqz v0, :cond_b

    .line 48
    :cond_a
    return-object v0

    .line 46
    :cond_b
    new-instance v0, Lrx/schedulers/Schedulers;

    .end local v0    # "current":Lrx/schedulers/Schedulers;
    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    .line 47
    .restart local v0    # "current":Lrx/schedulers/Schedulers;
    sget-object v1, Lrx/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 50
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->shutdownInstance()V

    goto :goto_0
.end method

.method public static immediate()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lrx/internal/schedulers/ImmediateScheduler;->INSTANCE:Lrx/internal/schedulers/ImmediateScheduler;

    return-object v0
.end method

.method public static io()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 140
    invoke-static {}, Lrx/schedulers/Schedulers;->getInstance()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onIOScheduler(Lrx/Scheduler;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static newThread()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 108
    invoke-static {}, Lrx/schedulers/Schedulers;->getInstance()Lrx/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onNewThreadScheduler(Lrx/Scheduler;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .registers 3
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 171
    sget-object v1, Lrx/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/schedulers/Schedulers;

    .line 172
    .local v0, "s":Lrx/schedulers/Schedulers;
    if-eqz v0, :cond_e

    .line 173
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->shutdownInstance()V

    .line 175
    :cond_e
    return-void
.end method

.method public static shutdown()V
    .registers 2

    .prologue
    .line 199
    invoke-static {}, Lrx/schedulers/Schedulers;->getInstance()Lrx/schedulers/Schedulers;

    move-result-object v0

    .line 200
    .local v0, "s":Lrx/schedulers/Schedulers;
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->shutdownInstance()V

    .line 202
    monitor-enter v0

    .line 203
    :try_start_8
    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    invoke-virtual {v1}, Lrx/internal/schedulers/GenericScheduledExecutorService;->shutdown()V

    .line 205
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->shutdown()V

    .line 207
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->shutdown()V

    .line 208
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static start()V
    .registers 2

    .prologue
    .line 182
    invoke-static {}, Lrx/schedulers/Schedulers;->getInstance()Lrx/schedulers/Schedulers;

    move-result-object v0

    .line 184
    .local v0, "s":Lrx/schedulers/Schedulers;
    invoke-virtual {v0}, Lrx/schedulers/Schedulers;->startInstance()V

    .line 186
    monitor-enter v0

    .line 187
    :try_start_8
    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    invoke-virtual {v1}, Lrx/internal/schedulers/GenericScheduledExecutorService;->start()V

    .line 189
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->start()V

    .line 191
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->start()V

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static test()Lrx/schedulers/TestScheduler;
    .registers 1

    .prologue
    .line 150
    new-instance v0, Lrx/schedulers/TestScheduler;

    invoke-direct {v0}, Lrx/schedulers/TestScheduler;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lrx/internal/schedulers/TrampolineScheduler;->INSTANCE:Lrx/internal/schedulers/TrampolineScheduler;

    return-object v0
.end method


# virtual methods
.method declared-synchronized shutdownInstance()V
    .registers 2

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_e

    .line 231
    iget-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 233
    :cond_e
    iget-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_1b

    .line 234
    iget-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 236
    :cond_1b
    iget-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_28

    .line 237
    iget-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 239
    :cond_28
    monitor-exit p0

    return-void

    .line 230
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized startInstance()V
    .registers 2

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_e

    .line 216
    iget-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 218
    :cond_e
    iget-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_1b

    .line 219
    iget-object v0, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 221
    :cond_1b
    iget-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    instance-of v0, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v0, :cond_28

    .line 222
    iget-object v0, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 224
    :cond_28
    monitor-exit p0

    return-void

    .line 215
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
