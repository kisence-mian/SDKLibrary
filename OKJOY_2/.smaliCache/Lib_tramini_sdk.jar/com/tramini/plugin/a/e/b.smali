.class public final Lcom/tramini/plugin/a/e/b;
.super Lcom/tramini/plugin/a/e/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/tramini/plugin/a/e/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;
    .registers 16

    .line 44
    if-eqz p0, :cond_d2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_3c

    array-length v1, v0

    if-nez v1, :cond_48

    .line 51
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    :cond_48
    if-eqz v0, :cond_cd

    array-length v1, v0

    if-eqz v1, :cond_cd

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_50
    if-ge v3, v1, :cond_cd

    aget-object v4, v0, v3

    .line 55
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 57
    if-eqz v4, :cond_b3

    instance-of v5, v4, Lorg/json/JSONObject;
    :try_end_60
    .catchall {:try_start_2f .. :try_end_60} :catchall_ce

    if-eqz v5, :cond_b3

    .line 59
    :try_start_62
    const-string v5, ""

    .line 60
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 61
    move v7, v2

    :goto_6a
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_96

    .line 62
    invoke-virtual {p4, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-virtual {p3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    const-string v10, "all"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 65
    nop

    .line 66
    move-object v5, v8

    goto :goto_93

    .line 68
    :cond_83
    move-object v10, v4

    check-cast v10, Lorg/json/JSONObject;

    invoke-static {v9, v10}, Lcom/tramini/plugin/a/e/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_93

    .line 70
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_93
    :goto_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    .line 83
    :cond_96
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-eqz v7, :cond_b2

    .line 84
    new-instance v7, Lcom/tramini/plugin/a/c/a;

    invoke-direct {v7}, Lcom/tramini/plugin/a/c/a;-><init>()V

    .line 85
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ae

    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_ae
    iput-object v6, v7, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;
    :try_end_b0
    .catchall {:try_start_62 .. :try_end_b0} :catchall_b1

    .line 89
    return-object v7

    .line 100
    :catchall_b1
    move-exception v4

    .line 102
    :cond_b2
    goto :goto_ca

    .line 106
    :cond_b3
    if-eqz v4, :cond_ca

    :try_start_b5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ca

    .line 107
    invoke-static {v4, p1, p2, p3, p4}, Lcom/tramini/plugin/a/e/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object v4
    :try_end_c7
    .catchall {:try_start_b5 .. :try_end_c7} :catchall_ce

    .line 108
    if-eqz v4, :cond_ca

    .line 109
    return-object v4

    .line 54
    :cond_ca
    :goto_ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 117
    :cond_cd
    goto :goto_d2

    .line 116
    :catchall_ce
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    :cond_d2
    :goto_d2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;
    .registers 5

    .line 23
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "in_na"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/tramini/plugin/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 33
    iget-object p1, p1, Lcom/tramini/plugin/a/c/c;->e:Lorg/json/JSONArray;

    const-string v1, ""

    invoke-static {p2, v1, v0, p0, p1}, Lcom/tramini/plugin/a/e/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 124
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 126
    const/4 v0, 0x0

    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_1e

    .line 127
    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    if-ne v1, v2, :cond_16

    .line 128
    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_16
    aget-object v0, p0, v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1f

    .line 126
    move v0, v1

    goto :goto_7

    .line 134
    :cond_1e
    goto :goto_20

    .line 133
    :catchall_1f
    move-exception p0

    .line 136
    :goto_20
    const-string p0, ""

    return-object p0
.end method
