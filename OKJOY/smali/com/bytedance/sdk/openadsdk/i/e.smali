.class public Lcom/bytedance/sdk/openadsdk/i/e;
.super Ljava/lang/Object;
.source "TTThreadPool.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/i/e;->a:I

    .line 27
    sget v0, Lcom/bytedance/sdk/openadsdk/i/e;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_49

    move v0, v1

    :goto_14
    sput v0, Lcom/bytedance/sdk/openadsdk/i/e;->b:I

    .line 32
    sget v0, Lcom/bytedance/sdk/openadsdk/i/e;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_50

    move v0, v1

    :goto_1f
    sput v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:I

    .line 46
    sget v0, Lcom/bytedance/sdk/openadsdk/i/e;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_57

    move v0, v1

    :goto_2a
    sput v0, Lcom/bytedance/sdk/openadsdk/i/e;->d:I

    .line 49
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/e;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 50
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/e;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 51
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/e;->g:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 52
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/i/e;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void

    .line 27
    :cond_49
    sget v0, Lcom/bytedance/sdk/openadsdk/i/e;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 32
    :cond_50
    sget v0, Lcom/bytedance/sdk/openadsdk/i/e;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 46
    :cond_57
    sget v0, Lcom/bytedance/sdk/openadsdk/i/e;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 10

    .prologue
    .line 55
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    sget v3, Lcom/bytedance/sdk/openadsdk/i/e;->b:I

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bytedance/sdk/openadsdk/i/e;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/i/d;

    const/4 v0, 0x5

    const-string v9, "tt-api-thread-"

    invoke-direct {v8, v0, v9}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(ILjava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 55
    return-object v1
.end method

.method public static b()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 10

    .prologue
    .line 60
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    sget v3, Lcom/bytedance/sdk/openadsdk/i/e;->c:I

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bytedance/sdk/openadsdk/i/e;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/i/d;

    const/4 v0, 0x5

    const-string v9, "tt-background-thread-"

    invoke-direct {v8, v0, v9}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(ILjava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 60
    return-object v1
.end method

.method public static c()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 3

    .prologue
    .line 65
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/d;

    const/4 v1, 0x1

    const-string v2, "tt-delay-thread-"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 10

    .prologue
    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bytedance/sdk/openadsdk/i/e;->g:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/i/d;

    const/4 v0, 0x5

    const-string v9, "tt-aidl-thread-"

    invoke-direct {v8, v0, v9}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(ILjava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 69
    return-object v1
.end method

.method public static e()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 10

    .prologue
    .line 75
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/bytedance/sdk/openadsdk/i/e;->h:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/i/d;

    const/4 v0, 0x5

    const-string v9, "tt-file-log-upload-thread-"

    invoke-direct {v8, v0, v9}, Lcom/bytedance/sdk/openadsdk/i/d;-><init>(ILjava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/e;->f()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 75
    return-object v1
.end method

.method public static f()Ljava/util/concurrent/RejectedExecutionHandler;
    .registers 1

    .prologue
    .line 80
    new-instance v0, Lcom/bytedance/sdk/openadsdk/i/e$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/i/e$1;-><init>()V

    return-object v0
.end method
