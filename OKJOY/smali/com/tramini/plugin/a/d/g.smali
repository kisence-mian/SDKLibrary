.class public final Lcom/tramini/plugin/a/d/g;
.super Lcom/tramini/plugin/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    .registers 22

    .prologue
    .line 38
    if-eqz p0, :cond_e8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v2

    .line 43
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_40

    array-length v3, v1

    if-nez v3, :cond_ec

    .line 45
    :cond_40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v9, v1

    .line 47
    :goto_4d
    if-eqz v9, :cond_e8

    array-length v1, v9

    if-eqz v1, :cond_e8

    .line 48
    array-length v10, v9

    const/4 v1, 0x0

    move v8, v1

    :goto_55
    if-ge v8, v10, :cond_e8

    aget-object v1, v9, v8

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/tramini/plugin/a/d/g;->c(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 54
    if-eqz v1, :cond_c2

    if-eqz v7, :cond_c2

    .line 55
    array-length v11, v7

    const/4 v3, 0x0

    move v6, v3

    :goto_6e
    if-ge v6, v11, :cond_e2

    aget-object v3, v7, v6

    .line 56
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_76} :catch_e7

    .line 58
    const/4 v4, 0x0

    :try_start_77
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 59
    instance-of v3, v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_8d

    .line 60
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 55
    :cond_8d
    :goto_8d
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_6e

    .line 64
    :cond_91
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const/4 v3, 0x0

    move v5, v3

    :goto_98
    invoke-virtual/range {p6 .. p6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v5, v3, :cond_b9

    .line 66
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 67
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 68
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    invoke-static {v14, v3}, Lcom/tramini/plugin/a/d/g;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v12, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_98

    .line 73
    :cond_b9
    new-instance v3, Lcom/tramini/plugin/a/b/a;

    invoke-direct {v3}, Lcom/tramini/plugin/a/b/a;-><init>()V

    .line 74
    iput-object v12, v3, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_c0} :catch_ea

    move-object v1, v3

    .line 95
    :cond_c1
    :goto_c1
    return-object v1

    .line 83
    :cond_c2
    if-eqz v1, :cond_e2

    :try_start_c4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e2

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 84
    invoke-static/range {v1 .. v7}, Lcom/tramini/plugin/a/d/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_df} :catch_e7

    move-result-object v1

    .line 85
    if-nez v1, :cond_c1

    .line 48
    :cond_e2
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_55

    :catch_e7
    move-exception v1

    .line 95
    :cond_e8
    const/4 v1, 0x0

    goto :goto_c1

    :catch_ea
    move-exception v3

    goto :goto_8d

    :cond_ec
    move-object v9, v1

    goto/16 :goto_4d
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    .registers 10

    .prologue
    .line 21
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    const-string v0, "mena"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    const-string v0, "agu"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    const-string v0, "in_na"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tramini/plugin/a/d/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    const-string v1, ""

    iget-object v6, p1, Lcom/tramini/plugin/a/b/b;->e:Lorg/json/JSONArray;

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/tramini/plugin/a/d/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 119
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 122
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    if-ne v2, v3, :cond_16

    .line 123
    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_15
    return-object v0

    .line 125
    :cond_16
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1f

    move-result-object p1

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_1f
    move-exception v0

    .line 131
    :cond_20
    const-string v0, ""

    goto :goto_15
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 101
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 103
    array-length v3, v2

    :goto_f
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 104
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 106
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 109
    :cond_27
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    .line 114
    :goto_30
    return-object v0

    :catch_31
    move-exception v0

    const/4 v0, 0x0

    goto :goto_30
.end method
