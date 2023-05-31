.class public final Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"

# interfaces
.implements Lcom/tds/common/reactor/schedulers/SchedulerLifecycle;


# static fields
.field public static final INSTANCE:Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;

.field private static final NONE:[Ljava/util/concurrent/ScheduledExecutorService;

.field private static final SHUTDOWN:Ljava/util/concurrent/ScheduledExecutorService;

.field private static roundRobin:I


# instance fields
.field private final executor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/concurrent/ScheduledExecutorService;

    sput-object v1, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->NONE:[Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->SHUTDOWN:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 21
    new-instance v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;

    invoke-direct {v0}, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->NONE:[Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->start()V

    .line 31
    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    .line 89
    sget-object v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;

    iget-object v0, v0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    .local v0, "execs":[Ljava/util/concurrent/ScheduledExecutorService;
    sget-object v1, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->NONE:[Ljava/util/concurrent/ScheduledExecutorService;

    if-ne v0, v1, :cond_11

    .line 91
    sget-object v1, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->SHUTDOWN:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v1

    .line 93
    :cond_11
    sget v1, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->roundRobin:I

    add-int/lit8 v1, v1, 0x1

    .line 94
    .local v1, "r":I
    array-length v2, v0

    if-lt v1, v2, :cond_19

    .line 95
    const/4 v1, 0x0

    .line 97
    :cond_19
    sput v1, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->roundRobin:I

    .line 98
    aget-object v2, v0, v1

    return-object v2
.end method


# virtual methods
.method public shutdown()V
    .registers 5

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    .local v0, "execs":[Ljava/util/concurrent/ScheduledExecutorService;
    sget-object v1, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->NONE:[Ljava/util/concurrent/ScheduledExecutorService;

    if-ne v0, v1, :cond_d

    .line 71
    return-void

    .line 73
    :cond_d
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 74
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 75
    .local v3, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v3}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 76
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 74
    .end local v3    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 78
    :cond_24
    return-void

    .line 80
    .end local v0    # "execs":[Ljava/util/concurrent/ScheduledExecutorService;
    :cond_25
    goto :goto_0
.end method

.method public start()V
    .registers 7

    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 36
    .local v0, "count":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_d

    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 40
    :cond_d
    const/16 v1, 0x8

    if-le v0, v1, :cond_13

    .line 41
    const/16 v0, 0x8

    .line 47
    :cond_13
    new-array v1, v0, [Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    .local v1, "execs":[Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_21

    .line 49
    invoke-static {}, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorServiceFactory;->create()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    aput-object v3, v1, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 51
    .end local v2    # "i":I
    :cond_21
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->executor:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/tds/common/reactor/internal/schedulers/GenericScheduledExecutorService;->NONE:[Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    .line 52
    array-length v2, v1

    :goto_2d
    if-ge v3, v2, :cond_4f

    aget-object v4, v1, v3

    .line 53
    .local v4, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v4}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 54
    instance-of v5, v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v5, :cond_41

    .line 55
    move-object v5, v4

    check-cast v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v5}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 52
    .end local v4    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 60
    :cond_44
    array-length v2, v1

    :goto_45
    if-ge v3, v2, :cond_4f

    aget-object v4, v1, v3

    .line 61
    .restart local v4    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 60
    .end local v4    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 64
    :cond_4f
    return-void
.end method
