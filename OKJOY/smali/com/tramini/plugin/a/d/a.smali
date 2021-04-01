.class public final Lcom/tramini/plugin/a/d/a;
.super Lcom/tramini/plugin/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    .registers 27

    .prologue
    .line 42
    if-eqz p0, :cond_117

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_40

    array-length v4, v2

    if-nez v4, :cond_119

    .line 49
    :cond_40
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v10, v2

    .line 51
    :goto_4d
    if-eqz v10, :cond_117

    array-length v2, v10

    if-eqz v2, :cond_117

    .line 52
    array-length v11, v10

    const/4 v2, 0x0

    move v9, v2

    :goto_55
    if-ge v9, v11, :cond_117

    aget-object v2, v10, v9

    .line 53
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_f1

    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_f1

    .line 57
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v4, 0x0

    move v8, v4

    :goto_6e
    if-ge v8, v12, :cond_111

    aget-object v5, p3, v8

    .line 58
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 60
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ec

    .line 65
    move-object/from16 v0, p4

    array-length v14, v0

    const/4 v4, 0x0

    move v7, v4

    :goto_85
    if-ge v7, v14, :cond_ec

    aget-object v4, p4, v7

    .line 66
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 67
    array-length v0, v15

    move/from16 v16, v0

    const/4 v4, 0x0

    move v6, v4

    :goto_92
    move/from16 v0, v16

    if-ge v6, v0, :cond_e8

    aget-object v5, v15, v6

    .line 68
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    :goto_9e
    move/from16 v0, v17

    if-ge v4, v0, :cond_b1

    aget-object v18, p5, v4

    .line 69
    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    .line 72
    :cond_b1
    move-object/from16 v0, p6

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    :goto_b7
    move/from16 v0, v17

    if-ge v4, v0, :cond_e4

    aget-object v18, p6, v4

    .line 73
    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 74
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 76
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_e1

    .line 77
    new-instance v2, Lcom/tramini/plugin/a/b/a;

    invoke-direct {v2}, Lcom/tramini/plugin/a/b/a;-><init>()V

    .line 78
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 79
    const-string v4, "i_nm"

    iget-object v5, v2, Lcom/tramini/plugin/a/b/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    iput-object v3, v2, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;

    .line 100
    :cond_e0
    :goto_e0
    return-object v2

    .line 72
    :cond_e1
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 67
    :cond_e4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_92

    .line 65
    :cond_e8
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_85

    .line 57
    :cond_ec
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_6e

    .line 88
    :cond_f1
    if-eqz v2, :cond_111

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_111

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 89
    invoke-static/range {v2 .. v8}, Lcom/tramini/plugin/a/d/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_10e} :catch_116

    move-result-object v2

    .line 90
    if-nez v2, :cond_e0

    .line 52
    :cond_111
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_55

    :catch_116
    move-exception v2

    .line 100
    :cond_117
    const/4 v2, 0x0

    goto :goto_e0

    :cond_119
    move-object v10, v2

    goto/16 :goto_4d
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    .registers 9

    .prologue
    .line 19
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v0, "in_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 21
    const-string v1, "rex"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 22
    const-string v3, "re_key"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 23
    const-string v3, "p_key"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 26
    invoke-static {v0}, Lcom/tramini/plugin/a/d/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-static {v1}, Lcom/tramini/plugin/a/d/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v5}, Lcom/tramini/plugin/a/d/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-static {v6}, Lcom/tramini/plugin/a/d/a;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v6

    .line 31
    const-string v0, "in_na"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tramini/plugin/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static/range {v0 .. v6}, Lcom/tramini/plugin/a/d/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 107
    new-array v0, v2, [Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7} :catch_13

    .line 108
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_1a

    .line 109
    :try_start_a
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_10} :catch_1b

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 112
    :catch_13
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    :cond_1a
    return-object v0

    .line 112
    :catch_1b
    move-exception v1

    goto :goto_17
.end method
