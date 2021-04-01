.class public Lcom/bytedance/sdk/openadsdk/core/h/c;
.super Ljava/lang/Object;
.source "DnsInfo.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/c;->b:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/c;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_4

    .line 41
    :goto_3
    return-object v0

    .line 26
    :cond_4
    :try_start_4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/h/c;-><init>()V

    .line 27
    const-string v2, "cip"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Ljava/lang/String;)V

    .line 28
    const-string v2, "dns"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 29
    if-eqz v3, :cond_37

    .line 30
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_46

    .line 31
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/d;

    move-result-object v4

    .line 32
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->b()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 35
    :cond_37
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/d;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->b()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_48

    :cond_46
    move-object v0, v1

    .line 38
    goto :goto_3

    .line 39
    :catch_48
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c;->a:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/c;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    :try_start_5
    const-string v0, "cip"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/h/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/d;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_25

    .line 72
    :catch_3f
    move-exception v0

    .line 74
    :goto_40
    return-object v1

    .line 71
    :cond_41
    const-string v0, "dns"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_46} :catch_3f

    goto :goto_40
.end method
