.class Lcom/bytedance/sdk/openadsdk/g/a$3;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/g/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)V
    .registers 5

    .line 357
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->d:Lcom/bytedance/sdk/openadsdk/g/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 360
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->v()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 362
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 363
    return-void

    .line 365
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->d:Lcom/bytedance/sdk/openadsdk/g/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/g/a$3;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Lcom/bytedance/sdk/openadsdk/g/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 366
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;I)Z

    .line 367
    return-void
.end method
