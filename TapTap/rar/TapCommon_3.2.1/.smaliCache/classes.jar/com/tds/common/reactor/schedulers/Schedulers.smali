.class public Lcom/tds/common/reactor/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/schedulers/Schedulers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final computationScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

.field private final ioScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

.field private final newThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->getSchedulersHook()Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;

    move-result-object v0

    .line 38
    .local v0, "hook":Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;
    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->getComputationScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    .line 39
    .local v1, "c":Lcom/tds/common/reactor/schedulers/Scheduler;
    if-eqz v1, :cond_14

    .line 40
    iput-object v1, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->computationScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    goto :goto_1a

    .line 42
    :cond_14
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->createComputationScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->computationScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 45
    :goto_1a
    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->getIOScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v2

    .line 46
    .local v2, "io":Lcom/tds/common/reactor/schedulers/Scheduler;
    if-eqz v2, :cond_23

    .line 47
    iput-object v2, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->ioScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    goto :goto_29

    .line 49
    :cond_23
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->createIoScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    iput-object v3, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->ioScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 52
    :goto_29
    invoke-virtual {v0}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->getNewThreadScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v3

    .line 53
    .local v3, "nt":Lcom/tds/common/reactor/schedulers/Scheduler;
    if-eqz v3, :cond_32

    .line 54
    iput-object v3, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->newThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    goto :goto_38

    .line 56
    :cond_32
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->createNewThreadScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->newThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 58
    :goto_38
    return-void
.end method

.method public static computation()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 1

    .line 85
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->getInstance()Lcom/tds/common/reactor/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lcom/tds/common/reactor/schedulers/Schedulers;->computationScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onComputationScheduler(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .line 156
    new-instance v0, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static getInstance()Lcom/tds/common/reactor/schedulers/Schedulers;
    .registers 3

    .line 21
    :goto_0
    sget-object v0, Lcom/tds/common/reactor/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/schedulers/Schedulers;

    .line 22
    .local v1, "current":Lcom/tds/common/reactor/schedulers/Schedulers;
    if-eqz v1, :cond_b

    .line 23
    return-object v1

    .line 25
    :cond_b
    new-instance v2, Lcom/tds/common/reactor/schedulers/Schedulers;

    invoke-direct {v2}, Lcom/tds/common/reactor/schedulers/Schedulers;-><init>()V

    move-object v1, v2

    .line 26
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 27
    return-object v1

    .line 29
    :cond_19
    invoke-virtual {v1}, Lcom/tds/common/reactor/schedulers/Schedulers;->shutdownInstance()V

    .line 31
    .end local v1    # "current":Lcom/tds/common/reactor/schedulers/Schedulers;
    goto :goto_0
.end method

.method public static io()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 1

    .line 102
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->getInstance()Lcom/tds/common/reactor/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lcom/tds/common/reactor/schedulers/Schedulers;->ioScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onIOScheduler(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static newThread()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 1

    .line 70
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->getInstance()Lcom/tds/common/reactor/schedulers/Schedulers;

    move-result-object v0

    iget-object v0, v0, Lcom/tds/common/reactor/schedulers/Schedulers;->newThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onNewThreadScheduler(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static reset()V
    .registers 2

    .line 112
    sget-object v0, Lcom/tds/common/reactor/schedulers/Schedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/schedulers/Schedulers;

    .line 113
    .local v0, "s":Lcom/tds/common/reactor/schedulers/Schedulers;
    if-eqz v0, :cond_e

    .line 114
    invoke-virtual {v0}, Lcom/tds/common/reactor/schedulers/Schedulers;->shutdownInstance()V

    .line 116
    :cond_e
    return-void
.end method


# virtual methods
.method declared-synchronized shutdownInstance()V
    .registers 3

    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->computationScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    instance-of v1, v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_c

    .line 138
    check-cast v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;->shutdown()V

    .line 140
    .end local p0    # "this":Lcom/tds/common/reactor/schedulers/Schedulers;
    :cond_c
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->ioScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    instance-of v1, v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_17

    .line 141
    check-cast v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;->shutdown()V

    .line 143
    :cond_17
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->newThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    instance-of v1, v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_22

    .line 144
    check-cast v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;->shutdown()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 146
    :cond_22
    monitor-exit p0

    return-void

    .line 136
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized startInstance()V
    .registers 3

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->computationScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    instance-of v1, v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_c

    .line 123
    check-cast v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;->start()V

    .line 125
    .end local p0    # "this":Lcom/tds/common/reactor/schedulers/Schedulers;
    :cond_c
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->ioScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    instance-of v1, v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_17

    .line 126
    check-cast v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;->start()V

    .line 128
    :cond_17
    iget-object v0, p0, Lcom/tds/common/reactor/schedulers/Schedulers;->newThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    instance-of v1, v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_22

    .line 129
    check-cast v0, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;->start()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 131
    :cond_22
    monitor-exit p0

    return-void

    .line 121
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
