.class public Lcom/sigmob/sdk/common/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static d:Lcom/sigmob/sdk/common/b/c$a;


# instance fields
.field final a:I

.field final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
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

    sput-object v0, Lcom/sigmob/sdk/common/b/c$a;->d:Lcom/sigmob/sdk/common/b/c$a;

    return-void
.end method

.method constructor <init>()V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sigmob/sdk/common/b/c$a;->a:I

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v7, p0, Lcom/sigmob/sdk/common/b/c$a;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Lcom/sigmob/sdk/common/b/c;->a()I

    move-result v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {}, Lcom/sigmob/sdk/common/b/c;->b()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    new-instance v8, Lcom/sigmob/sdk/common/b/a;

    invoke-direct {v8}, Lcom/sigmob/sdk/common/b/a;-><init>()V

    const/4 v2, 0x2

    const-wide/16 v4, 0x2

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, p0, Lcom/sigmob/sdk/common/b/c$a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b()Lcom/sigmob/sdk/common/b/c$a;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/b/c$a;->d:Lcom/sigmob/sdk/common/b/c$a;

    if-nez v0, :cond_17

    const-class v0, Lcom/sigmob/sdk/common/b/c$a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/sdk/common/b/c$a;->d:Lcom/sigmob/sdk/common/b/c$a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/sigmob/sdk/common/b/c$a;

    invoke-direct {v1}, Lcom/sigmob/sdk/common/b/c$a;-><init>()V

    sput-object v1, Lcom/sigmob/sdk/common/b/c$a;->d:Lcom/sigmob/sdk/common/b/c$a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/sigmob/sdk/common/b/c$a;->d:Lcom/sigmob/sdk/common/b/c$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/b/c$a;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/b/c$a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p1

    :goto_7
    return-void
.end method
