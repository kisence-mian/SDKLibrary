.class Lcom/bytedance/sdk/openadsdk/i/d$3;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/d;->d()V
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

    .line 409
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/d$3;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/d$3;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 414
    const/4 v2, 0x0

    :try_start_d
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/d$3;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_17
    if-ge v2, v3, :cond_3e

    .line 415
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/i/d$3;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/i/d$3;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/i/d;->a(Lcom/bytedance/sdk/openadsdk/i/d;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 416
    if-eqz v4, :cond_3b

    .line 417
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 414
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 421
    :cond_3e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/i/d$3;->a:Lcom/bytedance/sdk/openadsdk/i/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/i/d;->b(Lcom/bytedance/sdk/openadsdk/i/d;)Lcom/bytedance/sdk/openadsdk/i/d$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/i/d$b;->clear()V

    .line 422
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_7f

    .line 424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/i/b;

    .line 425
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/b;->a()V

    .line 427
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/i/e;->c:Z

    if-eqz v2, :cond_7d

    .line 428
    const-string v2, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreloadTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", canceled!!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_7d
    goto :goto_4c

    .line 431
    :cond_7e
    return-void

    .line 422
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0
.end method
