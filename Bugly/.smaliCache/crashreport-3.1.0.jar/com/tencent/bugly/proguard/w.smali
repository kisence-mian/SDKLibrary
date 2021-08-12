.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Lcom/tencent/bugly/proguard/w;


# instance fields
.field private c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/proguard/w;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    new-instance v0, Lcom/tencent/bugly/proguard/w$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/w$1;-><init>(Lcom/tencent/bugly/proguard/w;)V

    .line 31
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 40
    :cond_1a
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[AsyncTaskHandler] ScheduledExecutorService is not valiable!"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 48
    :cond_22
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/w;
    .registers 2

    const-class v0, Lcom/tencent/bugly/proguard/w;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;

    if-nez v1, :cond_e

    .line 55
    new-instance v1, Lcom/tencent/bugly/proguard/w;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/w;-><init>()V

    sput-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;

    .line 57
    :cond_e
    sget-object v1, Lcom/tencent/bugly/proguard/w;->b:Lcom/tencent/bugly/proguard/w;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 16
    sget-object v0, Lcom/tencent/bugly/proguard/w;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .registers 7

    monitor-enter p0

    .line 123
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/w;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 124
    const-string p1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3f

    .line 125
    monitor-exit p0

    return v1

    .line 128
    :cond_11
    if-nez p1, :cond_1c

    .line 129
    :try_start_13
    const-string p1, "[AsyncTaskHandler] Task input is null."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_3f

    .line 130
    monitor-exit p0

    return v1

    .line 133
    :cond_1c
    :try_start_1c
    const-string v0, "[AsyncTaskHandler] Post a normal task: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_3f

    .line 135
    :try_start_2e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    .line 136
    monitor-exit p0

    return v2

    .line 137
    :catchall_35
    move-exception p1

    .line 138
    :try_start_36
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    if-eqz v0, :cond_3d

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3f

    .line 141
    :cond_3d
    monitor-exit p0

    return v1

    .line 122
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)Z
    .registers 9

    monitor-enter p0

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/w;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 96
    const-string p1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_50

    .line 97
    monitor-exit p0

    return v1

    .line 100
    :cond_11
    if-nez p1, :cond_1c

    .line 101
    :try_start_13
    const-string p1, "[AsyncTaskHandler] Task input is null."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_50

    .line 102
    monitor-exit p0

    return v1

    .line 105
    :cond_1c
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_23

    goto :goto_24

    :cond_23
    move-wide p2, v2

    .line 107
    :goto_24
    :try_start_24
    const-string v0, "[AsyncTaskHandler] Post a delay(time: %dms) task: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_50

    .line 109
    :try_start_3d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_46

    .line 110
    monitor-exit p0

    return v4

    .line 111
    :catchall_46
    move-exception p1

    .line 112
    :try_start_47
    sget-boolean p2, Lcom/tencent/bugly/b;->c:Z

    if-eqz p2, :cond_4e

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    .line 115
    :cond_4e
    monitor-exit p0

    return v1

    .line 94
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .registers 3

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_18

    .line 178
    const-string v0, "[AsyncTaskHandler] Close async handler."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 189
    :cond_18
    monitor-exit p0

    return-void

    .line 176
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .registers 2

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 197
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
