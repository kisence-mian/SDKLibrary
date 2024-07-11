.class Lcom/bytedance/sdk/openadsdk/preload/b/g$1;
.super Ljava/lang/Object;
.source "ParallelInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/b/g;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/b/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/util/concurrent/CountDownLatch;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/preload/b/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/b/g;Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->f:Lcom/bytedance/sdk/openadsdk/preload/b/g;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->a:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->a:Lcom/bytedance/sdk/openadsdk/preload/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lcom/bytedance/sdk/openadsdk/preload/b/i$a; {:try_start_0 .. :try_end_d} :catch_1f
    .catchall {:try_start_0 .. :try_end_d} :catchall_13

    .line 39
    :goto_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    goto :goto_2f

    .line 35
    :catchall_13
    move-exception v0

    .line 36
    :try_start_14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->f:Lcom/bytedance/sdk/openadsdk/preload/b/g;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/g;->d(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 31
    :catch_1f
    move-exception v0

    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/b/i$a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->f:Lcom/bytedance/sdk/openadsdk/preload/b/g;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/g;->d(Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_30

    goto :goto_d

    .line 41
    :goto_2f
    return-void

    .line 39
    :catchall_30
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/g$1;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    throw v0
.end method
