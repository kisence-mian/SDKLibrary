.class Lcom/bytedance/sdk/openadsdk/i/d$2;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/d;->a(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/i/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/d;ZZLjava/lang/String;)V
    .registers 5

    .line 391
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->d:Lcom/bytedance/sdk/openadsdk/i/d;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->a:Z

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->b:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 394
    nop

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->d:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->d:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->a:Z

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/b/b;->a(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 397
    if-eqz v1, :cond_30

    .line 398
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->b:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->c:Ljava/lang/String;

    goto :goto_29

    :cond_23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/d$2;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_29
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/i/b;

    goto :goto_31

    .line 397
    :cond_30
    const/4 v1, 0x0

    .line 400
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_38

    .line 401
    if-eqz v1, :cond_37

    .line 402
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/b;->a()V

    .line 404
    :cond_37
    return-void

    .line 400
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method
