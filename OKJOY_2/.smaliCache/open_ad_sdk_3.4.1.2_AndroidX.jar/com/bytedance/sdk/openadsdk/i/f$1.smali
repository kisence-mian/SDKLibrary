.class Lcom/bytedance/sdk/openadsdk/i/f$1;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/f;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f$1;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/i/g;)V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$1;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Lcom/bytedance/sdk/openadsdk/i/f;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 73
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f$1;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Lcom/bytedance/sdk/openadsdk/i/f;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 74
    if-eqz v1, :cond_1c

    .line 75
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1c
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/i/g;)V
    .registers 5

    .line 82
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_1c

    .line 83
    const-string v0, "TAG_PROXY_ProxyServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterExecute, ProxyTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/g;->f()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/f$1;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Lcom/bytedance/sdk/openadsdk/i/f;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 87
    :try_start_27
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/f$1;->a:Lcom/bytedance/sdk/openadsdk/i/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/f;->a(Lcom/bytedance/sdk/openadsdk/i/f;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 88
    if-eqz v0, :cond_38

    .line 89
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_38
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_3a
    move-exception p1

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3a

    throw p1
.end method
