.class public final Lcom/appsflyer/internal/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static valueOf:Lcom/appsflyer/internal/n;


# instance fields
.field AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

.field AFInAppEventType:Ljava/util/concurrent/Executor;

.field AFKeystoreWrapper:Ljava/util/concurrent/ScheduledExecutorService;

.field final values:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/appsflyer/internal/n$3;

    invoke-direct {v0}, Lcom/appsflyer/internal/n$3;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/n;->values:Ljava/util/concurrent/ThreadFactory;

    .line 42
    return-void
.end method

.method static AFInAppEventParameterName(Ljava/util/concurrent/ExecutorService;)V
    .registers 5

    .line 111
    const-string v0, "killing non-finished tasks"

    :try_start_2
    const-string v1, "shut downing executor ..."

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 112
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 113
    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_11} :catch_20
    .catchall {:try_start_2 .. :try_end_11} :catchall_1e

    .line 118
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 119
    :goto_17
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 121
    :cond_1a
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 122
    return-void

    .line 118
    :catchall_1e
    move-exception v1

    goto :goto_2d

    .line 114
    :catch_20
    move-exception v1

    .line 115
    :try_start_21
    const-string v1, "InterruptedException!!!"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    .line 118
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 119
    goto :goto_17

    .line 118
    :goto_2d
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_36

    .line 119
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 121
    :cond_36
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 122
    goto :goto_3b

    :goto_3a
    throw v1

    :goto_3b
    goto :goto_3a
.end method


# virtual methods
.method public final AFInAppEventParameterName()Ljava/util/concurrent/Executor;
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventType:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_27

    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_25

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventType:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventType:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    .line 67
    :goto_28
    if-eqz v0, :cond_33

    .line 68
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/appsflyer/internal/n;->values:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventType:Ljava/util/concurrent/Executor;

    .line 71
    :cond_33
    iget-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventType:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final values()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_15

    .line 78
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 81
    :goto_16
    if-eqz v0, :cond_21

    .line 82
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/appsflyer/internal/n;->values:Ljava/util/concurrent/ThreadFactory;

    .line 83
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    .line 86
    :cond_21
    iget-object v0, p0, Lcom/appsflyer/internal/n;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method
