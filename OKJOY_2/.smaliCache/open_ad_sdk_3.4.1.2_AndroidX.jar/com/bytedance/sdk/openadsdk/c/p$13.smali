.class Lcom/bytedance/sdk/openadsdk/c/p$13;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/p;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 388
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->e(Lcom/bytedance/sdk/openadsdk/c/p;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 389
    monitor-exit v0

    return-void

    .line 391
    :cond_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->f(Lcom/bytedance/sdk/openadsdk/c/p;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 392
    monitor-exit v0

    return-void

    .line 394
    :cond_1b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->c(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->c(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_b7

    if-eqz v1, :cond_42

    .line 396
    :try_start_2f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "native_switchBackgroundAndForeground"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/p;->c(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_40} :catch_41
    .catchall {:try_start_2f .. :try_end_40} :catchall_b7

    .line 398
    goto :goto_42

    .line 397
    :catch_41
    move-exception v1

    .line 400
    :cond_42
    :goto_42
    :try_start_42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->d(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->d(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_b7

    if-eqz v1, :cond_69

    .line 402
    :try_start_56
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intercept_source"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/p;->d(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_67} :catch_68
    .catchall {:try_start_56 .. :try_end_67} :catchall_b7

    .line 404
    goto :goto_69

    .line 403
    :catch_68
    move-exception v1

    .line 406
    :cond_69
    :goto_69
    :try_start_69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 407
    const-string v2, "webview_time_track"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->v()Z

    move-result v2

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9a

    .line 409
    const-string v2, "WebviewTimeTrack"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_9a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/p;->g(Lcom/bytedance/sdk/openadsdk/c/p;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    .line 412
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/c/p;->h(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "webview_time_track"

    .line 411
    invoke-static {v2, v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->h(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$13;->a:Lcom/bytedance/sdk/openadsdk/c/p;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Z)Z

    .line 414
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_b7
    move-exception v1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_69 .. :try_end_b9} :catchall_b7

    throw v1
.end method
