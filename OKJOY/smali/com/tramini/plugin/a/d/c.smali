.class public final Lcom/tramini/plugin/a/d/c;
.super Lcom/tramini/plugin/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    .registers 16

    .prologue
    .line 38
    if-eqz p0, :cond_c5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_3c

    array-length v2, v0

    if-nez v2, :cond_c9

    .line 45
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v7, v0

    .line 47
    :goto_49
    if-eqz v7, :cond_c5

    array-length v0, v7

    if-eqz v0, :cond_c5

    .line 48
    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_51
    if-ge v6, v8, :cond_c5

    aget-object v0, v7, v6

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0, p3}, Lcom/tramini/plugin/a/d/c;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    if-eqz v0, :cond_a6

    if-eqz v2, :cond_a6

    .line 53
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_69} :catch_c4

    .line 55
    const/4 v3, 0x0

    :try_start_6a
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    instance-of v0, v2, Lorg/json/JSONObject;

    if-eqz v0, :cond_c0

    .line 58
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 59
    const/4 v0, 0x0

    :goto_7a
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_98

    .line 60
    invoke-virtual {p5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v2, v5}, Lcom/tramini/plugin/a/d/c;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_95

    .line 64
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 68
    :cond_98
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c0

    .line 69
    new-instance v0, Lcom/tramini/plugin/a/b/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/b/a;-><init>()V

    .line 70
    iput-object v3, v0, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_a5} :catch_c7

    .line 91
    :cond_a5
    :goto_a5
    return-object v0

    .line 79
    :cond_a6
    if-eqz v0, :cond_c0

    :try_start_a8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/tramini/plugin/a/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_bd} :catch_c4

    move-result-object v0

    .line 81
    if-nez v0, :cond_a5

    .line 48
    :cond_c0
    :goto_c0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_51

    :catch_c4
    move-exception v0

    .line 91
    :cond_c5
    const/4 v0, 0x0

    goto :goto_a5

    .line 76
    :catch_c7
    move-exception v0

    goto :goto_c0

    :cond_c9
    move-object v7, v0

    goto/16 :goto_49
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    .registers 9

    .prologue
    .line 20
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    const-string v0, "mena"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    const-string v0, "in_na"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tramini/plugin/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    const-string v1, ""

    iget-object v5, p1, Lcom/tramini/plugin/a/b/b;->e:Lorg/json/JSONArray;

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/tramini/plugin/a/d/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 7

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 97
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_23

    aget-object v0, v2, v1

    .line 98
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_22

    move-result v4

    if-eqz v4, :cond_1e

    .line 107
    :goto_1d
    return-object v0

    .line 97
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :catch_22
    move-exception v0

    .line 107
    :cond_23
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 148
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_41

    move-object v0, p0

    .line 149
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, p0

    .line 150
    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 151
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_1a
    :goto_1a
    return-object v0

    .line 154
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p0

    .line 156
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_36

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1b

    .line 158
    :cond_36
    invoke-static {v0, p1}, Lcom/tramini/plugin/a/d/c;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_1a

    .line 166
    :cond_41
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_6d

    .line 167
    const/4 v0, 0x0

    move v1, v0

    :goto_47
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6d

    move-object v0, p0

    .line 168
    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 169
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_5f

    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_69

    .line 170
    :cond_5f
    invoke-static {v0, p1}, Lcom/tramini/plugin/a/d/c;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 167
    :cond_69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_47

    .line 178
    :cond_6d
    const/4 v0, 0x0

    goto :goto_1a
.end method
