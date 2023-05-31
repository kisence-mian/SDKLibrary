.class public final Lcom/tramini/plugin/a/c/e;
.super Lcom/tramini/plugin/a/c/a;


# instance fields
.field private m:Landroid/content/Context;

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONObject;

.field private p:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tramini/plugin/a/c/a;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tramini/plugin/a/c/e;->m:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/tramini/plugin/a/c/e;->n:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/tramini/plugin/a/c/e;->o:Lorg/json/JSONObject;

    .line 35
    iput-object p4, p0, Lcom/tramini/plugin/a/c/e;->p:Lorg/json/JSONObject;

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tramini/plugin/a/c/e;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/tramini/plugin/a/c/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/b/b;

    .line 50
    const-string v1, "https://pitk.birdgesdk.com/v1/ptk"

    .line 51
    if-eqz v0, :cond_1d

    .line 52
    iget-object v0, v0, Lcom/tramini/plugin/a/b/b;->a:Ljava/lang/String;

    .line 54
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v1

    goto :goto_1c
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/tramini/plugin/a/c/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/c/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tramini/plugin/a/c/e;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_9

    .line 73
    invoke-super {p0}, Lcom/tramini/plugin/a/c/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/tramini/plugin/a/c/e;->o:Lorg/json/JSONObject;

    goto :goto_8
.end method

.method protected final f()Ljava/lang/String;
    .registers 6

    .prologue
    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/tramini/plugin/a/c/e;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/f/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 84
    iget-object v3, p0, Lcom/tramini/plugin/a/c/e;->p:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 86
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tramini/plugin/a/f/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "d_version=1.0&dt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tramini/plugin/a/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    :try_start_40
    const-string v4, "cm"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "dt"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v0, "d_version"

    const-string v2, "1.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v0, "d_sign"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_56} :catch_5b

    .line 98
    :goto_56
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56
.end method
