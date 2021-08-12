.class public Lcom/bytedance/sdk/openadsdk/core/b/c;
.super Ljava/lang/Object;
.source "FrequentCallEventHelper.java"


# direct methods
.method private static a(Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 6

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    :try_start_5
    const-string v1, "type"

    const-string v2, "over_freq"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "rit"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string p0, "ad_sdk_version"

    const-string v1, "3.4.1.2"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string p0, "timestamp"

    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 49
    goto :goto_1f

    .line 47
    :catch_1e
    move-exception p0

    .line 50
    :goto_1f
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6

    .line 28
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/b/c;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/bytedance/sdk/adnet/b/h;

    const-string p3, "https://i.snssdk.com/api/ad/union/sdk/stats/"

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, p1, v1}, Lcom/bytedance/sdk/adnet/b/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 p3, 0x2710

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/adnet/b/h;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 31
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->d()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 32
    return-void
.end method
