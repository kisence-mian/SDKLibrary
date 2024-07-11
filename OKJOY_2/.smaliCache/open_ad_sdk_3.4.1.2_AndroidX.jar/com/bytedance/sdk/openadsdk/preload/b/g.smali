.class public Lcom/bytedance/sdk/openadsdk/preload/b/g;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "ParallelInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/util/List;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 22
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g;->d:Ljava/util/concurrent/Executor;

    new-instance v11, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/b/g;Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    goto :goto_17

    .line 44
    :cond_32
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 45
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 46
    return-object v8

    .line 48
    :cond_3c
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/b/a/a;

    invoke-direct {p1, v9}, Lcom/bytedance/sdk/openadsdk/preload/b/a/a;-><init>(Ljava/util/List;)V

    throw p1
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .registers 4

    .line 53
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    .line 54
    if-eqz p1, :cond_27

    .line 55
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 58
    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_17

    .line 61
    aget-object p1, p1, v0

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g;->d:Ljava/util/concurrent/Executor;

    goto :goto_2d

    .line 59
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ParallelInterceptor args must be instance of Executor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ParallelInterceptor only need one param"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g;->d:Ljava/util/concurrent/Executor;

    .line 65
    :goto_2d
    return-void
.end method

.method public synthetic a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/b/g;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
