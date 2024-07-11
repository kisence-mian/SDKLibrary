.class final Lcom/bytedance/sdk/openadsdk/i/d$b;
.super Ljava/util/concurrent/LinkedBlockingDeque;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/d;
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
        "Ljava/util/concurrent/LinkedBlockingDeque<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 475
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/i/d$1;)V
    .registers 2

    .line 475
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    .line 479
    monitor-enter p0

    .line 480
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_13

    .line 483
    if-eqz p1, :cond_b

    .line 486
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 487
    monitor-exit p0

    .line 488
    return-void

    .line 484
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "executor argument can\'t be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can only call setExecutor() once!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 492
    monitor-enter p0

    .line 493
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    .line 495
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/d$b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    .line 497
    if-lt v1, v0, :cond_25

    if-ge v0, v2, :cond_25

    .line 498
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz p1, :cond_22

    .line 499
    const-string p1, "TAG_PROXY_TT"

    const-string v0, "create new preloader thread"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_22
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 503
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2b

    .line 504
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/i/d$b;->offerFirst(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 503
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method
