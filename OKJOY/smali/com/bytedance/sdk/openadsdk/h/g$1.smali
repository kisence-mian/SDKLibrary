.class Lcom/bytedance/sdk/openadsdk/h/g$1;
.super Ljava/lang/Object;
.source "ProxyTask.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/g;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/b;)V
    .registers 6

    .prologue
    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 330
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_1d
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 332
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_3a

    .line 334
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/b;->d()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 335
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/g;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/h/g;->g()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZLjava/lang/String;)V

    .line 337
    :cond_39
    return-void

    .line 332
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method
