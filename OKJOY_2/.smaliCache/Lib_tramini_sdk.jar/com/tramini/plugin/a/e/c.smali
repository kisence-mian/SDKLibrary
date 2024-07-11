.class public final Lcom/tramini/plugin/a/e/c;
.super Lcom/tramini/plugin/a/e/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/tramini/plugin/a/e/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;
    .registers 22

    .line 45
    move-object/from16 v1, p0

    if-eqz v1, :cond_10f

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

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

    move-result-object v9

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
    move-object v10, v0

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

    move-object v10, v0

    .line 54
    :goto_52
    if-eqz v10, :cond_10d

    array-length v0, v10

    if-eqz v0, :cond_10d

    .line 55
    array-length v11, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_5a
    if-ge v13, v11, :cond_10d

    aget-object v0, v10, v13

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    move-object/from16 v14, p3

    invoke-static {v0, v14}, Lcom/tramini/plugin/a/e/c;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    if-eqz v0, :cond_e3

    if-eqz v3, :cond_e3

    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_73
    .catchall {:try_start_35 .. :try_end_73} :catchall_10e

    .line 62
    :try_start_73
    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_d8

    .line 64
    const-string v2, ""

    .line 65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 66
    move v4, v12

    :goto_85
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_89
    .catchall {:try_start_73 .. :try_end_89} :catchall_dd

    if-ge v4, v5, :cond_b7

    .line 67
    move-object/from16 v15, p5

    :try_start_8d
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_b3

    .line 68
    move-object/from16 v7, p4

    :try_start_93
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    const-string v12, "all"

    invoke-static {v6, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 70
    nop

    .line 71
    move-object v2, v5

    goto :goto_af

    .line 73
    :cond_a2
    invoke-static {v0, v6}, Lcom/tramini/plugin/a/e/c;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_af

    .line 75
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_af
    :goto_af
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x0

    goto :goto_85

    .line 88
    :catchall_b3
    move-exception v0

    move-object/from16 v7, p4

    goto :goto_e2

    .line 79
    :cond_b7
    move-object/from16 v7, p4

    move-object/from16 v15, p5

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_e2

    .line 80
    new-instance v4, Lcom/tramini/plugin/a/c/a;

    invoke-direct {v4}, Lcom/tramini/plugin/a/c/a;-><init>()V

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d3

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_d3
    iput-object v3, v4, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;
    :try_end_d5
    .catchall {:try_start_93 .. :try_end_d5} :catchall_d6

    .line 85
    return-object v4

    .line 88
    :catchall_d6
    move-exception v0

    goto :goto_e2

    .line 63
    :cond_d8
    move-object/from16 v7, p4

    move-object/from16 v15, p5

    goto :goto_e2

    .line 88
    :catchall_dd
    move-exception v0

    move-object/from16 v7, p4

    move-object/from16 v15, p5

    .line 90
    :cond_e2
    :goto_e2
    goto :goto_108

    .line 59
    :cond_e3
    move-object/from16 v7, p4

    move-object/from16 v15, p5

    .line 93
    if-eqz v0, :cond_108

    :try_start_e9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_108

    .line 94
    move-object v2, v0

    move-object v3, v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/tramini/plugin/a/e/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0
    :try_end_105
    .catchall {:try_start_e9 .. :try_end_105} :catchall_10e

    .line 95
    if-eqz v0, :cond_108

    .line 96
    return-object v0

    .line 55
    :cond_108
    :goto_108
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    goto/16 :goto_5a

    .line 103
    :cond_10d
    goto :goto_10f

    .line 102
    :catchall_10e
    move-exception v0

    .line 105
    :cond_10f
    :goto_10f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;
    .registers 10

    .line 27
    const-string v0, "pre"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v0, "mena"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    const-string v0, "in_na"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tramini/plugin/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    iget-object v6, p1, Lcom/tramini/plugin/a/c/c;->e:Lorg/json/JSONArray;

    const-string v2, ""

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lcom/tramini/plugin/a/e/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6

    .line 110
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 111
    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_20

    aget-object v2, p0, v1

    .line 112
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_21

    if-eqz v3, :cond_1d

    .line 114
    return-object v2

    .line 111
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 119
    :cond_20
    goto :goto_22

    .line 117
    :catch_21
    move-exception p0

    .line 121
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 162
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3a

    .line 163
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 165
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    instance-of v3, v2, Lorg/json/JSONObject;

    if-nez v3, :cond_2e

    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_39

    .line 172
    :cond_2e
    invoke-static {v2, p1}, Lcom/tramini/plugin/a/e/c;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 174
    return-object v2

    .line 177
    :cond_39
    goto :goto_16

    .line 180
    :cond_3a
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_62

    .line 181
    const/4 v0, 0x0

    :goto_3f
    move-object v1, p0

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_62

    .line 182
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 183
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_54

    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_5f

    .line 184
    :cond_54
    invoke-static {v1, p1}, Lcom/tramini/plugin/a/e/c;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 186
    return-object v1

    .line 181
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 192
    :cond_62
    const/4 p0, 0x0

    return-object p0
.end method
