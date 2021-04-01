.class public Lcom/sigmob/sdk/base/common/a/e;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/sigmob/sdk/base/common/a/e;


# instance fields
.field final a:I

.field final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/common/a/e;->d:Lcom/sigmob/sdk/base/common/a/e;

    return-void
.end method

.method constructor <init>()V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sigmob/sdk/base/common/a/e;->a:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/a/e;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/d;->a()I

    move-result v2

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/d;->a()I

    move-result v0

    mul-int/lit8 v3, v0, 0x8

    const-wide/16 v4, 0x2

    invoke-static {}, Lcom/sigmob/sdk/base/common/a/d;->b()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/a/e;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/sigmob/sdk/base/common/a/a;

    invoke-direct {v8}, Lcom/sigmob/sdk/base/common/a/a;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/sigmob/sdk/base/common/a/e;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b()Lcom/sigmob/sdk/base/common/a/e;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/common/a/e;->d:Lcom/sigmob/sdk/base/common/a/e;

    if-nez v0, :cond_13

    const-class v1, Lcom/sigmob/sdk/base/common/a/e;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/base/common/a/e;->d:Lcom/sigmob/sdk/base/common/a/e;

    if-nez v0, :cond_12

    new-instance v0, Lcom/sigmob/sdk/base/common/a/e;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/a/e;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/a/e;->d:Lcom/sigmob/sdk/base/common/a/e;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/sigmob/sdk/base/common/a/e;->d:Lcom/sigmob/sdk/base/common/a/e;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/a/e;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/a/e;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
