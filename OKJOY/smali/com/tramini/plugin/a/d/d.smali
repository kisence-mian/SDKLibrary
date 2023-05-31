.class public final Lcom/tramini/plugin/a/d/d;
.super Lcom/tramini/plugin/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 32
    :try_start_1
    const-string v1, ""

    new-instance v2, Lcom/tramini/plugin/a/d/d$1;

    invoke-direct {v2, p2}, Lcom/tramini/plugin/a/d/d$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/tramini/plugin/a/d/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    if-nez v2, :cond_f

    .line 89
    :cond_e
    :goto_e
    return-object v0

    .line 63
    :cond_f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_39

    .line 66
    invoke-virtual {p4, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static {v2, v5}, Lcom/tramini/plugin/a/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 70
    if-eqz v5, :cond_36

    .line 71
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 73
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 77
    :cond_39
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 78
    new-instance v1, Lcom/tramini/plugin/a/b/a;

    invoke-direct {v1}, Lcom/tramini/plugin/a/b/a;-><init>()V

    .line 79
    iput-object v3, v1, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_46} :catch_48

    move-object v0, v1

    .line 83
    goto :goto_e

    :catch_48
    move-exception v1

    goto :goto_e
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    .registers 7

    .prologue
    .line 18
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v1, "clna"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    const-string v2, "in_na"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2, p2}, Lcom/tramini/plugin/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    iget-object v3, p1, Lcom/tramini/plugin/a/b/b;->e:Lorg/json/JSONArray;

    invoke-static {v2, v0, v1, p0, v3}, Lcom/tramini/plugin/a/d/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    return-object v0
.end method
