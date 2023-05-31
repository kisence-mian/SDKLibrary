.class public final Lcom/tramini/plugin/a/d/b;
.super Lcom/tramini/plugin/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    .registers 17

    .prologue
    const/4 v4, 0x0

    .line 37
    if-eqz p0, :cond_bc

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 42
    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_3d

    array-length v2, v1

    if-nez v2, :cond_c0

    .line 44
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v6, v1

    .line 46
    :goto_4a
    if-eqz v6, :cond_bc

    array-length v1, v6

    if-eqz v1, :cond_bc

    .line 47
    array-length v8, v6

    move v5, v4

    :goto_51
    if-ge v5, v8, :cond_bc

    aget-object v1, v6, v5

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_9c

    instance-of v1, v2, Lorg/json/JSONObject;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_61} :catch_b8

    if-eqz v1, :cond_9c

    .line 53
    :try_start_63
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move v3, v4

    .line 54
    :goto_69
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_8e

    .line 55
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 56
    invoke-virtual {p3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 57
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v11, v1}, Lcom/tramini/plugin/a/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8a

    .line 59
    invoke-virtual {v9, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_8a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_69

    .line 72
    :cond_8e
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_b4

    .line 73
    new-instance v1, Lcom/tramini/plugin/a/b/a;

    invoke-direct {v1}, Lcom/tramini/plugin/a/b/a;-><init>()V

    .line 74
    iput-object v9, v1, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_9b} :catch_be

    .line 105
    :cond_9b
    :goto_9b
    return-object v1

    .line 92
    :cond_9c
    if-eqz v2, :cond_b4

    :try_start_9e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 93
    move-object/from16 v0, p4

    invoke-static {v2, v7, p2, p3, v0}, Lcom/tramini/plugin/a/d/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_b1} :catch_b8

    move-result-object v1

    .line 94
    if-nez v1, :cond_9b

    .line 47
    :cond_b4
    :goto_b4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_51

    .line 102
    :catch_b8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    :cond_bc
    const/4 v1, 0x0

    goto :goto_9b

    .line 88
    :catch_be
    move-exception v1

    goto :goto_b4

    :cond_c0
    move-object v6, v1

    goto :goto_4a
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    .registers 7

    .prologue
    .line 16
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "in_na"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/tramini/plugin/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    const-string v2, ""

    iget-object v3, p1, Lcom/tramini/plugin/a/b/b;->e:Lorg/json/JSONArray;

    invoke-static {v1, v2, v0, p0, v3}, Lcom/tramini/plugin/a/d/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 110
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 113
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    if-ne v2, v3, :cond_16

    .line 114
    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_15
    return-object v0

    .line 116
    :cond_16
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1f

    move-result-object p1

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_1f
    move-exception v0

    .line 122
    :cond_20
    const-string v0, ""

    goto :goto_15
.end method
