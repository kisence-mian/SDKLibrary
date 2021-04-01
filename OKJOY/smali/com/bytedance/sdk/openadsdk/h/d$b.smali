.class final Lcom/bytedance/sdk/openadsdk/h/d$b;
.super Ljava/util/concurrent/LinkedBlockingDeque;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedBlockingDeque",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/h/d$1;)V
    .registers 2

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_10

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can only call setExecutor() once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 482
    :cond_10
    if-nez p1, :cond_1a

    .line 483
    :try_start_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor argument can\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_1a
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 486
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_d

    .line 487
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 491
    monitor-enter p0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    .line 494
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    .line 496
    if-lt v1, v0, :cond_25

    if-ge v0, v2, :cond_25

    .line 497
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_22

    .line 498
    const-string v0, "TAG_PROXY_TT"

    const-string v1, "create new preloader thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_22
    const/4 v0, 0x0

    monitor-exit p0

    .line 503
    :goto_24
    return v0

    .line 502
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2b

    .line 503
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/h/d$b;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_24

    .line 502
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
