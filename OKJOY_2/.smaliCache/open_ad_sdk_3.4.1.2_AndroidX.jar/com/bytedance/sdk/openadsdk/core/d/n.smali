.class public Lcom/bytedance/sdk/openadsdk/core/d/n;
.super Ljava/lang/Object;
.source "PlayableInfo.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/n;
    .registers 4

    .line 38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/n;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/n;-><init>()V

    .line 39
    const-string v1, "playable_url"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;
    .registers 2

    .line 14
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 15
    return-object v0

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->h()Lcom/bytedance/sdk/openadsdk/core/d/n;

    move-result-object p0

    .line 18
    if-nez p0, :cond_b

    .line 19
    return-object v0

    .line 21
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/n;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    :try_start_5
    const-string v1, "playable_url"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    .line 33
    goto :goto_10

    .line 32
    :catch_f
    move-exception v1

    .line 34
    :goto_10
    return-object v0
.end method
