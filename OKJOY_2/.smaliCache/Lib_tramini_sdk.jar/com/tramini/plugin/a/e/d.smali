.class public final Lcom/tramini/plugin/a/e/d;
.super Lcom/tramini/plugin/a/e/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/tramini/plugin/a/e/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;
    .registers 9

    .line 39
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    new-instance v2, Lcom/tramini/plugin/a/e/d$1;

    invoke-direct {v2, p2}, Lcom/tramini/plugin/a/e/d$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/tramini/plugin/a/e/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p0

    .line 67
    if-nez p0, :cond_12

    .line 68
    return-object v0

    .line 71
    :cond_12
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    const/4 p2, 0x0

    :goto_18
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_3c

    .line 74
    invoke-virtual {p4, p2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {p0, v2}, Lcom/tramini/plugin/a/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_39

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 81
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_39
    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 85
    :cond_3c
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_4a

    .line 86
    new-instance p0, Lcom/tramini/plugin/a/c/a;

    invoke-direct {p0}, Lcom/tramini/plugin/a/c/a;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    .line 91
    return-object p0

    .line 96
    :cond_4a
    goto :goto_4c

    .line 94
    :catchall_4b
    move-exception p0

    .line 97
    :goto_4c
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;
    .registers 6

    .line 25
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, "clna"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "in_na"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v2, p2}, Lcom/tramini/plugin/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 30
    iget-object p1, p1, Lcom/tramini/plugin/a/c/c;->e:Lorg/json/JSONArray;

    invoke-static {p2, v0, v1, p0, p1}, Lcom/tramini/plugin/a/e/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object p0

    return-object p0
.end method
