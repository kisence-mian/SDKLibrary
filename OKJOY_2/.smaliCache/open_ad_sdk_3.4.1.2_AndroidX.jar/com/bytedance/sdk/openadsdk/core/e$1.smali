.class Lcom/bytedance/sdk/openadsdk/core/e$1;
.super Ljava/lang/Object;
.source "AppEnvironment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/e;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Lcom/bytedance/sdk/openadsdk/core/e;)Lorg/json/JSONObject;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_23

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 135
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    invoke-static {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Lcom/bytedance/sdk/openadsdk/core/e;J)J

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tt_sp_app_env"

    const-string v3, "last_app_env_time"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Lorg/json/JSONObject;)V

    .line 139
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Lcom/bytedance/sdk/openadsdk/core/e;Z)Z

    .line 140
    return-void
.end method
