.class public final Lcom/mintegral/msdk/base/common/f/b;
.super Ljava/lang/Object;
.source "CommonTaskLoader.java"


# instance fields
.field a:Ljava/util/concurrent/ThreadPoolExecutor;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mintegral/msdk/base/common/f/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->c:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .registers 11

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    .line 59
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->c:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 11

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p2, :cond_2c

    .line 34
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    :goto_17
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->c:Ljava/lang/ref/WeakReference;

    .line 43
    return-void

    .line 37
    :cond_2c
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move v2, p2

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_17
.end method

.method private declared-synchronized b(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V
    .registers 7

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/mintegral/msdk/base/common/f/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mintegral/msdk/base/common/f/b$1;-><init>(Lcom/mintegral/msdk/base/common/f/b;Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    .line 1077
    iput-object v0, p1, Lcom/mintegral/msdk/base/common/f/a;->j:Lcom/mintegral/msdk/base/common/f/a$b;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 100
    monitor-exit p0

    return-void

    .line 79
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/f/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/f/a;->d()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    goto :goto_b

    .line 111
    :catch_21
    move-exception v0

    :goto_22
    monitor-exit p0

    return-void

    .line 108
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_21
    .catchall {:try_start_24 .. :try_end_29} :catchall_2a

    goto :goto_22

    .line 104
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/common/f/a;)V
    .registers 6

    .prologue
    .line 67
    monitor-enter p0

    if-eqz p1, :cond_35

    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/mintegral/msdk/base/common/f/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 68
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/mintegral/msdk/base/common/f/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/f/a;

    .line 70
    if-eqz v0, :cond_28

    .line 71
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/f/a;->d()V

    .line 73
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/mintegral/msdk/base/common/f/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 75
    :cond_35
    monitor-exit p0

    return-void

    .line 67
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V
    .registers 4

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public final b(Lcom/mintegral/msdk/base/common/f/a;)V
    .registers 3

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/f/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method
