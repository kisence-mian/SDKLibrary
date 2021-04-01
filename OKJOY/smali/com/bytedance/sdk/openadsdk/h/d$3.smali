.class Lcom/bytedance/sdk/openadsdk/h/d$3;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/d;)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d$3;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$3;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 413
    const/4 v0, 0x0

    :try_start_d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d$3;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_40

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$3;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/d$3;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 415
    if-eqz v0, :cond_3c

    .line 416
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 413
    :cond_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 420
    :cond_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d$3;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->b(Lcom/bytedance/sdk/openadsdk/h/d;)Lcom/bytedance/sdk/openadsdk/h/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/d$b;->clear()V

    .line 421
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_80

    .line 423
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 424
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b;->a()V

    .line 426
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_4e

    .line 427
    const-string v2, "TAG_PROXY_Preloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreloadTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", canceled!!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 421
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    .line 430
    :cond_83
    return-void
.end method
