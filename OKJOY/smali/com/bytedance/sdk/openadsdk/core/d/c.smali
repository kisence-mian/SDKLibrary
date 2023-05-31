.class public Lcom/bytedance/sdk/openadsdk/core/d/c;
.super Ljava/lang/Object;
.source "BackHtmlModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 46
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    move-object v0, v2

    .line 65
    :goto_16
    return-object v0

    .line 51
    :cond_17
    :try_start_17
    const-string v0, "url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v0, "html"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:Ljava/util/Map;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 56
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_40

    .line 62
    :catch_5a
    move-exception v0

    :goto_5b
    move-object v0, v2

    .line 65
    goto :goto_16

    .line 61
    :cond_5d
    const-string v0, "headers"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_62} :catch_5a

    goto :goto_5b
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->c:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/c;->b:Ljava/lang/String;

    .line 35
    return-void
.end method
