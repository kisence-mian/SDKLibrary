.class final Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;
.super Ljava/lang/Object;
.source "TTAdSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;


# direct methods
.method constructor <init>(JLcom/bytedance/sdk/openadsdk/TTAdConfig;)V
    .registers 4

    .line 51
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->a:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->a:J

    sub-long/2addr v0, v2

    .line 57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 58
    const-string v3, "init_time_cusuming"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    const-string v0, "is_async"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isAsyncInit()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 60
    const-string v0, "is_multi_process"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isSupportMultiProcess()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 61
    const-string v0, "is_debug"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isDebug()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 62
    const-string v0, "isuse_texture_view"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isUseTextureView()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    const-string v1, "pangle_sdk_init"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_46} :catch_47

    .line 67
    goto :goto_4b

    .line 65
    :catch_47
    move-exception v0

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    :goto_4b
    return-void
.end method
