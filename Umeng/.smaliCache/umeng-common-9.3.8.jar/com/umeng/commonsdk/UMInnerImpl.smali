.class public Lcom/umeng/commonsdk/UMInnerImpl;
.super Ljava/lang/Object;
.source "UMInnerImpl.java"


# static fields
.field private static isInternal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/UMInnerImpl;->isInternal:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initAndSendInternal(Landroid/content/Context;)V
    .registers 8

    const-class v0, Lcom/umeng/commonsdk/UMInnerImpl;

    monitor-enter v0

    .line 78
    if-eqz p0, :cond_46

    const/4 v1, 0x1

    :try_start_6
    sget-boolean v2, Lcom/umeng/commonsdk/UMInnerImpl;->isInternal:Z

    if-nez v2, :cond_46

    .line 79
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/umeng/commonsdk/UMInnerImpl$2;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/UMInnerImpl$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 153
    sput-boolean v1, Lcom/umeng/commonsdk/UMInnerImpl;->isInternal:Z

    .line 155
    invoke-static {p0}, Lcom/umeng/commonsdk/UMInnerImpl;->sendInternal(Landroid/content/Context;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    goto :goto_46

    .line 157
    :catchall_1d
    move-exception v2

    .line 158
    :try_start_1e
    const-string v3, "internal"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_43

    goto :goto_47

    .line 77
    :catchall_43
    move-exception p0

    monitor-exit v0

    throw p0

    .line 160
    :cond_46
    :goto_46
    nop

    .line 162
    :goto_47
    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized sendInternal(Landroid/content/Context;)V
    .registers 8

    const-class v0, Lcom/umeng/commonsdk/UMInnerImpl;

    monitor-enter v0

    .line 37
    if-eqz p0, :cond_3f

    .line 38
    const/4 v1, 0x1

    :try_start_6
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/umeng/commonsdk/UMInnerImpl$1;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/UMInnerImpl$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 67
    sput-boolean v1, Lcom/umeng/commonsdk/UMInnerImpl;->isInternal:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_3f

    .line 70
    :catchall_16
    move-exception v2

    .line 71
    :try_start_17
    const-string v3, "internal"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_3c

    goto :goto_40

    .line 36
    :catchall_3c
    move-exception p0

    monitor-exit v0

    throw p0

    .line 73
    :cond_3f
    :goto_3f
    nop

    .line 74
    :goto_40
    monitor-exit v0

    return-void
.end method
