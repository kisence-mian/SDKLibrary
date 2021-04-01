.class public Lcom/bytedance/sdk/openadsdk/core/b/c;
.super Ljava/lang/Object;
.source "FrequentCallEventHelper.java"


# direct methods
.method private static a(Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    :try_start_5
    const-string v1, "type"

    const-string v2, "over_freq"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "rit"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "ad_sdk_version"

    const-string v2, "2.9.5.3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 49
    :goto_1d
    return-object v0

    .line 46
    :catch_1e
    move-exception v1

    goto :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 27
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b/c;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/bytedance/sdk/adnet/b/h;

    const/4 v2, 0x1

    const-string v3, "https://i.snssdk.com/api/ad/union/sdk/stats/"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/adnet/b/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/n$a;)V

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/adnet/b/h;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 30
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 31
    return-void
.end method
