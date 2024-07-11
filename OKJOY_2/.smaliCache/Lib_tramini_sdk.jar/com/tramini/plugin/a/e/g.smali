.class public final Lcom/tramini/plugin/a/e/g;
.super Lcom/tramini/plugin/a/e/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/tramini/plugin/a/e/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;
    .registers 25

    .line 45
    move-object/from16 v1, p0

    if-eqz v1, :cond_153

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 50
    :try_start_35
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_45

    array-length v2, v0

    if-nez v2, :cond_43

    goto :goto_45

    :cond_43
    move-object v11, v0

    goto :goto_52

    .line 52
    :cond_45
    :goto_45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v11, v0

    .line 54
    :goto_52
    if-eqz v11, :cond_151

    array-length v0, v11

    if-eqz v0, :cond_151

    .line 55
    array-length v12, v11

    const/4 v13, 0x0

    move v14, v13

    :goto_5a
    if-ge v14, v12, :cond_151

    aget-object v0, v11, v14

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 58
    move-object/from16 v15, p3

    invoke-static {v3, v15}, Lcom/tramini/plugin/a/e/g;->c(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 61
    if-eqz v3, :cond_11f

    if-eqz v4, :cond_11f

    .line 62
    array-length v5, v4

    move v6, v13

    :goto_72
    if-ge v6, v5, :cond_118

    aget-object v0, v4, v6

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_79
    .catchall {:try_start_35 .. :try_end_79} :catchall_152

    .line 65
    :try_start_79
    new-array v7, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v7, v0, Lorg/json/JSONObject;

    if-eqz v7, :cond_f4

    .line 67
    move-object v7, v0

    check-cast v7, Lorg/json/JSONObject;
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_ff

    move-object/from16 v8, p4

    :try_start_88
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_98

    .line 68
    move-object/from16 v9, p5

    move-object/from16 v13, p6

    move-object/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_10a

    .line 71
    :cond_98
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 72
    move v2, v13

    :goto_9e
    invoke-virtual/range {p6 .. p6}, Lorg/json/JSONArray;->length()I

    move-result v13
    :try_end_a2
    .catchall {:try_start_88 .. :try_end_a2} :catchall_f2

    if-ge v2, v13, :cond_e0

    .line 73
    move-object/from16 v13, p6

    :try_start_a6
    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_dc

    .line 74
    move-object/from16 v9, p5

    move-object/from16 v16, v4

    :try_start_ae
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_da

    .line 75
    move/from16 v17, v5

    :try_start_b4
    const-string v5, "all"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    goto :goto_ce

    .line 79
    :cond_c4
    move-object v5, v0

    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/tramini/plugin/a/e/g;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v7, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :goto_ce
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v4, v16

    move/from16 v5, v17

    const/4 v13, 0x0

    goto :goto_9e

    .line 88
    :catchall_da
    move-exception v0

    goto :goto_108

    :catchall_dc
    move-exception v0

    move-object/from16 v9, p5

    goto :goto_106

    .line 84
    :cond_e0
    move-object/from16 v9, p5

    move-object/from16 v13, p6

    move-object/from16 v16, v4

    move/from16 v17, v5

    new-instance v0, Lcom/tramini/plugin/a/c/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/c/a;-><init>()V

    .line 85
    iput-object v7, v0, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;
    :try_end_ef
    .catchall {:try_start_b4 .. :try_end_ef} :catchall_f0

    .line 86
    return-object v0

    .line 88
    :catchall_f0
    move-exception v0

    goto :goto_10a

    :catchall_f2
    move-exception v0

    goto :goto_102

    .line 90
    :cond_f4
    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v13, p6

    move-object/from16 v16, v4

    move/from16 v17, v5

    goto :goto_10a

    .line 88
    :catchall_ff
    move-exception v0

    move-object/from16 v8, p4

    :goto_102
    move-object/from16 v9, p5

    move-object/from16 v13, p6

    :goto_106
    move-object/from16 v16, v4

    :goto_108
    move/from16 v17, v5

    .line 62
    :goto_10a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v4, v16

    move/from16 v5, v17

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto/16 :goto_72

    :cond_118
    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v13, p6

    goto :goto_148

    .line 61
    :cond_11f
    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v13, p6

    .line 94
    if-eqz v3, :cond_148

    :try_start_127
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_148

    .line 95
    move-object v2, v3

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/tramini/plugin/a/e/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0
    :try_end_145
    .catchall {:try_start_127 .. :try_end_145} :catchall_152

    .line 96
    if-eqz v0, :cond_148

    .line 97
    return-object v0

    .line 55
    :cond_148
    :goto_148
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    const/4 v13, 0x0

    goto/16 :goto_5a

    .line 104
    :cond_151
    goto :goto_153

    .line 103
    :catchall_152
    move-exception v0

    .line 106
    :cond_153
    :goto_153
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;
    .registers 11

    .line 28
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    const-string v0, "mena"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    const-string v0, "agu"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    const-string v0, "in_na"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tramini/plugin/a/e/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget-object v7, p1, Lcom/tramini/plugin/a/c/c;->e:Lorg/json/JSONArray;

    const-string v2, ""

    move-object v6, p0

    invoke-static/range {v1 .. v7}, Lcom/tramini/plugin/a/e/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 5

    .line 130
    :try_start_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 132
    const/4 v0, 0x0

    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_1e

    .line 133
    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    if-ne v1, v2, :cond_16

    .line 134
    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_16
    aget-object v0, p0, v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1f

    .line 132
    move v0, v1

    goto :goto_7

    .line 140
    :cond_1e
    goto :goto_20

    .line 139
    :catchall_1f
    move-exception p0

    .line 142
    :goto_20
    const-string p0, ""

    return-object p0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .registers 8

    .line 112
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 114
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_28

    aget-object v4, p0, v3

    .line 115
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 117
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 120
    :cond_28
    new-array p0, v2, [Ljava/lang/reflect/Method;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object p0

    .line 121
    :catch_31
    move-exception p0

    .line 125
    const/4 p0, 0x0

    return-object p0
.end method
