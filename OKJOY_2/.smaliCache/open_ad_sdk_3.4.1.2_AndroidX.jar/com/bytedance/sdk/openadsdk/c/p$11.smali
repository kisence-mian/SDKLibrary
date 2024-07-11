.class Lcom/bytedance/sdk/openadsdk/c/p$11;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "WebviewTimeTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/c/p;->b(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/c/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;)V
    .registers 3

    .line 354
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 357
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 358
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_14

    goto :goto_45

    .line 361
    :cond_14
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 362
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/c/p;->b(Lcom/bytedance/sdk/openadsdk/c/p;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    goto :goto_18

    .line 366
    :cond_34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/p;->a(Lcom/bytedance/sdk/openadsdk/c/p;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 367
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/p$11;->b:Lcom/bytedance/sdk/openadsdk/c/p;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/c/p;->m()V

    .line 368
    monitor-exit v0

    .line 369
    return-void

    .line 359
    :cond_45
    :goto_45
    monitor-exit v0

    return-void

    .line 368
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v1
.end method
