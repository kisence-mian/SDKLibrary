.class Lcom/bytedance/sdk/openadsdk/h/f$1;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/f;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/g;)V
    .registers 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 73
    if-eqz v0, :cond_1c

    .line 74
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1c
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/h/g;)V
    .registers 5

    .prologue
    .line 81
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_1c

    .line 82
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

    .line 84
    :cond_1c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/g;->f()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_27
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$1;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 87
    if-eqz v0, :cond_38

    .line 88
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_38
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3a

    throw v0
.end method
