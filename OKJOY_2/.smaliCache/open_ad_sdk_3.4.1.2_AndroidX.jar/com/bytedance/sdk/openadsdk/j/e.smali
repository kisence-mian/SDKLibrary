.class public Lcom/bytedance/sdk/openadsdk/j/e;
.super Ljava/lang/Object;
.source "TTExecutor.java"


# static fields
.field public static final a:I

.field public static b:Lcom/bytedance/sdk/openadsdk/j/c;

.field public static c:Z

.field private static volatile d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile f:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/j/e;->a:I

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/j/e;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .registers 4

    .line 49
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_4f

    .line 50
    const-class v0, Lcom/bytedance/sdk/openadsdk/j/e;

    monitor-enter v0

    .line 51
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_4a

    .line 52
    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/j/a$a;-><init>()V

    const-string v2, "io"

    .line 53
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    const/4 v2, 0x2

    .line 54
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(I)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    const/16 v2, 0x8

    .line 55
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->b(I)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 56
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(J)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 58
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    sget-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 63
    :cond_4a
    monitor-exit v0

    goto :goto_4f

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw v1

    .line 65
    :cond_4f
    :goto_4f
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/j/c;)V
    .registers 1

    .line 197
    sput-object p0, Lcom/bytedance/sdk/openadsdk/j/e;->b:Lcom/bytedance/sdk/openadsdk/j/c;

    .line 198
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/j/g;)V
    .registers 2

    .line 69
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    .line 72
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_10

    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :cond_10
    return-void
.end method

.method public static a(Ljava/lang/Runnable;I)V
    .registers 4

    .line 79
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    .line 82
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_15

    .line 83
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/e$1;

    invoke-direct {v1, p1, p0}, Lcom/bytedance/sdk/openadsdk/j/e$1;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    :cond_15
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 180
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/j/e;->c:Z

    .line 181
    return-void
.end method

.method public static b()Ljava/util/concurrent/ExecutorService;
    .registers 4

    .line 124
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_4e

    .line 125
    const-class v0, Lcom/bytedance/sdk/openadsdk/j/e;

    monitor-enter v0

    .line 126
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_49

    .line 127
    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/j/a$a;-><init>()V

    const-string v2, "aidl"

    .line 128
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(I)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    const/4 v2, 0x4

    .line 130
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->b(I)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 131
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(J)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 133
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/openadsdk/j/a$a;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/j/a$a;->a()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 136
    sget-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 138
    :cond_49
    monitor-exit v0

    goto :goto_4e

    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v1

    .line 140
    :cond_4e
    :goto_4e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;I)V
    .registers 4

    .line 107
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    .line 108
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/util/concurrent/ExecutorService;

    .line 111
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_15

    .line 112
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/e$2;

    invoke-direct {v1, p1, p0}, Lcom/bytedance/sdk/openadsdk/j/e$2;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    :cond_15
    return-void
.end method

.method public static c()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4

    .line 165
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1e

    .line 166
    const-class v0, Lcom/bytedance/sdk/openadsdk/j/e;

    monitor-enter v0

    .line 167
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_19

    .line 168
    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/h;

    const/4 v2, 0x5

    const-string v3, "scheduled"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/h;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/j/e;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 170
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    .line 172
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static d()Z
    .registers 1

    .line 176
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/j/e;->c:Z

    return v0
.end method

.method public static e()Ljava/util/concurrent/RejectedExecutionHandler;
    .registers 1

    .line 184
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/e$3;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/j/e$3;-><init>()V

    return-object v0
.end method

.method public static f()Lcom/bytedance/sdk/openadsdk/j/c;
    .registers 1

    .line 193
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/e;->b:Lcom/bytedance/sdk/openadsdk/j/c;

    return-object v0
.end method
