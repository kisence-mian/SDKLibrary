.class Lcom/bytedance/sdk/openadsdk/h/d$2;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/h/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/d;ZZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 390
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->d:Lcom/bytedance/sdk/openadsdk/h/d;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->a:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->b:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->d:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 395
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->d:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;

    move-result-object v0

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->a:Z

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 396
    if-eqz v0, :cond_39

    .line 397
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->b:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->c:Ljava/lang/String;

    :goto_22
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 399
    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_36

    .line 400
    if-eqz v0, :cond_2e

    .line 401
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->a()V

    .line 403
    :cond_2e
    return-void

    .line 397
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$2;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    .line 399
    :catchall_36
    move-exception v0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    move-object v0, v1

    goto :goto_28
.end method
