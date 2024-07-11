.class Lcom/bytedance/sdk/openadsdk/i/d$1;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/d;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d$1;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/i/b;)V
    .registers 5

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/b;->f()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$1;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/d$1;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 83
    if-eqz v0, :cond_1e

    .line 84
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_3e

    .line 88
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v0, :cond_3d

    .line 89
    const-string v0, "TAG_PROXY_Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterExecute, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/i/b;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3d
    return-void

    .line 86
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method
