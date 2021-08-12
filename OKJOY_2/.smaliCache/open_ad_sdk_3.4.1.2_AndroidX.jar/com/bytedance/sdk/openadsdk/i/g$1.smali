.class Lcom/bytedance/sdk/openadsdk/i/g$1;
.super Ljava/lang/Object;
.source "ProxyTask.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/i/g$b;Lcom/bytedance/sdk/openadsdk/i/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/g;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g$1;->a:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/i/b;)V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$1;->a:Lcom/bytedance/sdk/openadsdk/i/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/g;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/i/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 329
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$1;->a:Lcom/bytedance/sdk/openadsdk/i/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/g;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/i/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 331
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/b;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_1d
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/i/b;->m:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 333
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_3a

    .line 335
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/b;->d()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 336
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/g$1;->a:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/i/g;->a(Lcom/bytedance/sdk/openadsdk/i/g;)Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/g$1;->a:Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/g;->g()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/d;->a(ZLjava/lang/String;)V

    .line 338
    :cond_39
    return-void

    .line 333
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method
