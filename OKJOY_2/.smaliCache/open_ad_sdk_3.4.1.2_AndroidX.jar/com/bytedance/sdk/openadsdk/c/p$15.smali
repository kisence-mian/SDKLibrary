.class Lcom/bytedance/sdk/openadsdk/c/p$15;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/c/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/p;ILjava/lang/String;)V
    .registers 4

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->c:Lcom/bytedance/sdk/openadsdk/c/p;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->a:I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->c:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 103
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 104
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->c:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v5, "ts"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->c:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v2, "code"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->b:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 107
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->c:Lcom/bytedance/sdk/openadsdk/c/p;

    const-string v4, "msg"

    invoke-static {v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$15;->c:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "render_error"

    invoke-static {v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method
