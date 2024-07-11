.class Lcom/bytedance/sdk/openadsdk/c/p$10;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/c/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/p;Ljava/lang/String;)V
    .registers 3

    .line 334
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 338
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 339
    monitor-exit v0

    return-void

    .line 341
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 342
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 343
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v5, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v2, "jsb"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->a:Ljava/lang/String;

    invoke-static {v1, v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$10;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "webview_jsb_end"

    invoke-static {v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v1
.end method
