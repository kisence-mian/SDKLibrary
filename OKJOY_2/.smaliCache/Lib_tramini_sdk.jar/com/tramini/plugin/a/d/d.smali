.class public final Lcom/tramini/plugin/a/d/d;
.super Lcom/tramini/plugin/a/d/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "https://aa.birdgesdk.com/v1/d_api"

    return-object v0
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-object v0
.end method

.method protected final d()[B
    .registers 3

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/tramini/plugin/a/d/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 73
    :catch_b
    move-exception v0

    .line 76
    invoke-virtual {p0}, Lcom/tramini/plugin/a/d/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 7

    .line 44
    const-string v0, "1"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v2

    .line 47
    :try_start_f
    const-string v3, "platform"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v3, "os_vn"

    invoke-static {}, Lcom/tramini/plugin/a/g/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v3, "os_vc"

    invoke-static {}, Lcom/tramini/plugin/a/g/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "package_name"

    invoke-static {v2}, Lcom/tramini/plugin/a/g/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v3, "app_vn"

    invoke-static {v2}, Lcom/tramini/plugin/a/g/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v3, "app_vc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/tramini/plugin/a/g/e;->a(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v3, "sdk_ver"

    const-string v4, "1.0.1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v3, "android_id"

    invoke-static {v2}, Lcom/tramini/plugin/a/g/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v3, "is_proxy"

    invoke-static {v2}, Lcom/tramini/plugin/a/g/h;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_69

    :cond_67
    const-string v0, "0"

    :goto_69
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "pil_offset"

    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tramini/plugin/a/a/b;->c()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_79} :catch_7a

    .line 65
    goto :goto_7b

    .line 61
    :catch_7a
    move-exception v0

    .line 66
    :goto_7b
    return-object v1
.end method
