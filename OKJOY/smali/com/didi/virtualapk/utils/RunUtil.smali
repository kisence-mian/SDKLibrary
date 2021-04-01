.class public Lcom/didi/virtualapk/utils/RunUtil;
.super Ljava/lang/Object;
.source "RunUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/virtualapk/utils/RunUtil$InternalHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_RUN_ON_UITHREAD:I = 0x1

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 111
    const-class v1, Lcom/didi/virtualapk/utils/RunUtil;

    monitor-enter v1

    .line 112
    :try_start_3
    sget-object v0, Lcom/didi/virtualapk/utils/RunUtil;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 113
    new-instance v0, Lcom/didi/virtualapk/utils/RunUtil$InternalHandler;

    invoke-direct {v0}, Lcom/didi/virtualapk/utils/RunUtil$InternalHandler;-><init>()V

    sput-object v0, Lcom/didi/virtualapk/utils/RunUtil;->sHandler:Landroid/os/Handler;

    .line 115
    :cond_e
    sget-object v0, Lcom/didi/virtualapk/utils/RunUtil;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private static getProcessNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 84
    :try_start_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 85
    .local v3, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_2b

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 88
    .local v0, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p1, v5, :cond_12

    .line 89
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 98
    .end local v0    # "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "manager":Landroid/app/ActivityManager;
    :goto_24
    return-object v4

    .line 94
    :catch_25
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "VA"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2b
    const/4 v4, 0x0

    goto :goto_24
.end method

.method public static getThreadPool()Ljava/util/concurrent/Executor;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/didi/virtualapk/utils/RunUtil;->getProcessNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 104
    const/4 v1, 0x1

    .line 107
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/didi/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    .line 50
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;Z)V
    .registers 8
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "waitUtilDone"    # Z

    .prologue
    const/4 v5, 0x1

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_13

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 76
    :cond_12
    :goto_12
    return-void

    .line 63
    :cond_13
    const/4 v0, 0x0

    .line 64
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    if-eqz p1, :cond_1b

    .line 65
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 67
    .restart local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_1b
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;>;"
    invoke-static {}, Lcom/didi/virtualapk/utils/RunUtil;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 69
    if-eqz p1, :cond_12

    .line 71
    :try_start_2d
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_12

    .line 72
    :catch_31
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "VA"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method
