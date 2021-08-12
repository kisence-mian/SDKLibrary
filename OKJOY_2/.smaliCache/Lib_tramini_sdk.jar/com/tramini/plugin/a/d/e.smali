.class public final Lcom/tramini/plugin/a/d/e;
.super Lcom/tramini/plugin/a/d/a;


# instance fields
.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Lorg/json/JSONObject;

.field private r:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/a;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tramini/plugin/a/d/e;->o:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/tramini/plugin/a/d/e;->p:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/tramini/plugin/a/d/e;->q:Lorg/json/JSONObject;

    .line 42
    iput-object p4, p0, Lcom/tramini/plugin/a/d/e;->r:Lorg/json/JSONObject;

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 48
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

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b()Ljava/lang/String;
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/tramini/plugin/a/d/e;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/tramini/plugin/a/d/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/c/c;

    .line 57
    nop

    .line 58
    if-eqz v0, :cond_1c

    .line 59
    iget-object v0, v0, Lcom/tramini/plugin/a/c/c;->a:Ljava/lang/String;

    goto :goto_1e

    .line 58
    :cond_1c
    const-string v0, "https://pitk.birdgesdk.com/v1/ptk"

    .line 61
    :goto_1e
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

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .line 74
    invoke-virtual {p0}, Lcom/tramini/plugin/a/d/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/d/e;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/tramini/plugin/a/d/e;->q:Lorg/json/JSONObject;

    if-nez v0, :cond_9

    .line 80
    invoke-super {p0}, Lcom/tramini/plugin/a/d/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 82
    :cond_9
    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 6

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/tramini/plugin/a/d/e;->e()Lorg/json/JSONObject;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 100
    iget-object v3, p0, Lcom/tramini/plugin/a/d/e;->r:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 102
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tramini/plugin/a/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "d_version=1.0&dt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tramini/plugin/a/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    :try_start_40
    const-string v4, "cm"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "dt"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "d_version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "d_sign"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "pl_c"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5d} :catch_5e

    .line 113
    goto :goto_62

    .line 112
    :catch_5e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
