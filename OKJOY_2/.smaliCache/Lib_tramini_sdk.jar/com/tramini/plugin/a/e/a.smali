.class public final Lcom/tramini/plugin/a/e/a;
.super Lcom/tramini/plugin/a/e/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/tramini/plugin/a/e/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;
    .registers 30

    .line 49
    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    if-eqz v0, :cond_14e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v12, p2

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 54
    :try_start_3d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_4d

    array-length v2, v1

    if-nez v2, :cond_4b

    goto :goto_4d

    :cond_4b
    move-object v14, v1

    goto :goto_5a

    .line 56
    :cond_4d
    :goto_4d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v14, v1

    .line 58
    :goto_5a
    if-eqz v14, :cond_14c

    array-length v1, v14

    if-eqz v1, :cond_14c

    .line 59
    array-length v15, v14

    const/16 v16, 0x0

    move/from16 v7, v16

    :goto_64
    if-ge v7, v15, :cond_14c

    aget-object v1, v14, v7

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_11e

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_11e

    .line 64
    array-length v2, v8

    move/from16 v3, v16

    :goto_79
    if-ge v3, v2, :cond_119

    aget-object v4, v8, v3

    .line 65
    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10b

    .line 72
    array-length v5, v9

    move/from16 v6, v16

    :goto_8d
    if-ge v6, v5, :cond_106

    aget-object v0, v9, v6

    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    move/from16 p1, v2

    array-length v2, v0

    move-object/from16 v17, v4

    move/from16 v4, v16

    :goto_9c
    if-ge v4, v2, :cond_f9

    aget-object v18, v0, v4

    .line 75
    move-object/from16 v19, v0

    array-length v0, v10

    move/from16 v20, v2

    move-object/from16 v2, v18

    move/from16 v18, v5

    move/from16 v5, v16

    :goto_ab
    if-ge v5, v0, :cond_c0

    move/from16 v21, v0

    aget-object v0, v10, v5

    .line 76
    move/from16 v22, v7

    const-string v7, ""

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v21

    move/from16 v7, v22

    goto :goto_ab

    .line 79
    :cond_c0
    move/from16 v22, v7

    array-length v0, v11

    move/from16 v5, v16

    :goto_c5
    if-ge v5, v0, :cond_ee

    aget-object v7, v11, v5

    .line 80
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 81
    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 83
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 84
    new-instance v0, Lcom/tramini/plugin/a/c/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/c/a;-><init>()V

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    const-string v2, "i_nm"

    iget-object v3, v0, Lcom/tramini/plugin/a/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iput-object v1, v0, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;

    .line 88
    return-object v0

    .line 79
    :cond_eb
    add-int/lit8 v5, v5, 0x1

    goto :goto_c5

    .line 74
    :cond_ee
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v18

    move-object/from16 v0, v19

    move/from16 v2, v20

    move/from16 v7, v22

    goto :goto_9c

    .line 72
    :cond_f9
    move/from16 v18, v5

    move/from16 v22, v7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v4, v17

    goto :goto_8d

    :cond_106
    move/from16 p1, v2

    move/from16 v22, v7

    goto :goto_10f

    .line 67
    :cond_10b
    move/from16 p1, v2

    move/from16 v22, v7

    .line 64
    :goto_10f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v7, v22

    goto/16 :goto_79

    :cond_119
    move/from16 v22, v7

    move/from16 v0, v22

    goto :goto_146

    .line 62
    :cond_11e
    move/from16 v22, v7

    .line 95
    if-eqz v1, :cond_144

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_144

    .line 96
    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v0, v22

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/tramini/plugin/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object v1
    :try_end_141
    .catchall {:try_start_3d .. :try_end_141} :catchall_14d

    .line 97
    if-eqz v1, :cond_146

    .line 98
    return-object v1

    .line 95
    :cond_144
    move/from16 v0, v22

    .line 59
    :cond_146
    :goto_146
    add-int/lit8 v7, v0, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_64

    .line 105
    :cond_14c
    goto :goto_14e

    .line 104
    :catchall_14d
    move-exception v0

    .line 107
    :cond_14e
    :goto_14e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;
    .registers 10

    .line 26
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    const-string v0, "in_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 28
    const-string v1, "rex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 29
    const-string v2, "re_key"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 30
    const-string v4, "p_key"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 33
    invoke-static {v0}, Lcom/tramini/plugin/a/e/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v1}, Lcom/tramini/plugin/a/e/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-static {v2}, Lcom/tramini/plugin/a/e/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {v4}, Lcom/tramini/plugin/a/e/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    .line 38
    const-string v1, "in_na"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tramini/plugin/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    move-object v4, v0

    invoke-static/range {v1 .. v7}, Lcom/tramini/plugin/a/e/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 5

    .line 111
    nop

    .line 113
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 114
    new-array v0, v1, [Ljava/lang/String;

    .line 115
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_14

    .line 116
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_11} :catch_15

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 120
    :cond_14
    goto :goto_19

    .line 119
    :catch_15
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 121
    :goto_19
    return-object v0
.end method
