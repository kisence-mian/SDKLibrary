.class public final Lcom/tramini/plugin/a/d/f;
.super Lcom/tramini/plugin/a/d/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tramini/plugin/a/d/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    .registers 15

    .prologue
    const/4 v0, 0x0

    .line 66
    .line 1210
    :try_start_1
    const-string v1, ""

    new-instance v2, Lcom/tramini/plugin/a/d/f$1;

    invoke-direct {v2, p5, p2}, Lcom/tramini/plugin/a/d/f$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v1

    .line 1239
    if-nez v1, :cond_12

    move-object v1, v0

    .line 67
    :goto_f
    if-nez v1, :cond_1e

    .line 80
    :cond_11
    :goto_11
    return-object v0

    .line 1243
    :cond_12
    const-string v2, ""

    new-instance v3, Lcom/tramini/plugin/a/d/f$2;

    invoke-direct {v3, p3}, Lcom/tramini/plugin/a/d/f$2;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2, v3}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f

    .line 1277
    :cond_1e
    const-string v2, ""

    new-instance v3, Lcom/tramini/plugin/a/d/f$3;

    invoke-direct {v3, p5, p4, p6}, Lcom/tramini/plugin/a/d/f$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p4, v2, v3}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_11

    .line 76
    invoke-static {v1, p7, p8, p9, p10}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_11

    .line 78
    :catch_30
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;
    .registers 21

    .prologue
    .line 86
    :try_start_0
    const-string v1, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 87
    array-length v1, v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_e3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    .line 88
    const/4 v1, 0x0

    .line 173
    :goto_d
    return-object v1

    .line 91
    :cond_e
    const/4 v2, 0x0

    .line 93
    :try_start_f
    invoke-static/range {p0 .. p1}, Lcom/tramini/plugin/a/d/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    check-cast v1, Ljava/util/List;

    .line 96
    const/4 v3, 0x0

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_25

    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_58
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1f} :catch_e3

    move-result-object v2

    .line 99
    if-nez v2, :cond_25

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_25
    move-object v1, v2

    move-object v4, v1

    .line 106
    :goto_27
    const/4 v1, 0x0

    :try_start_28
    aget-object v1, v5, v1

    invoke-static {v4, v1}, Lcom/tramini/plugin/a/d/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 110
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 111
    const/4 v1, 0x0

    move v3, v1

    :goto_3c
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_d4

    .line 112
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 113
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_4d} :catch_e3

    move-result-object v2

    .line 115
    :try_start_4e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 111
    :cond_54
    :goto_54
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3c

    :catch_58
    move-exception v1

    move-object v4, v2

    goto :goto_27

    .line 119
    :cond_5b
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/tramini/plugin/a/d/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 121
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_54

    :catch_6d
    move-exception v1

    goto :goto_54

    .line 123
    :cond_6f
    invoke-static {v4, v2}, Lcom/tramini/plugin/a/d/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 125
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_54

    .line 127
    :cond_7f
    instance-of v1, v5, Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 129
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 131
    const/4 v2, 0x0

    .line 132
    const/4 v1, 0x0

    move v15, v1

    move v1, v2

    move v2, v15

    :goto_91
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_54

    .line 133
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 134
    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 136
    :cond_a3
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_cf

    .line 137
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 139
    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 140
    const-string v13, "<"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 142
    const/4 v14, -0x1

    if-eq v12, v14, :cond_a3

    const/4 v14, -0x1

    if-eq v13, v14, :cond_a3

    .line 146
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 147
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a3

    .line 148
    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_ce} :catch_6d

    .line 149
    const/4 v1, 0x1

    .line 153
    :cond_cf
    if-nez v1, :cond_54

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 166
    :cond_d4
    :try_start_d4
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_e4

    .line 167
    new-instance v1, Lcom/tramini/plugin/a/b/a;

    invoke-direct {v1}, Lcom/tramini/plugin/a/b/a;-><init>()V

    .line 168
    iput-object v6, v1, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_e1} :catch_e3

    goto/16 :goto_d

    :catch_e3
    move-exception v1

    .line 173
    :cond_e4
    const/4 v1, 0x0

    goto/16 :goto_d
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/b/b;Ljava/lang/String;)Lcom/tramini/plugin/a/b/a;
    .registers 19

    .prologue
    .line 24
    const-string v1, "pre1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    const-string v1, "pre2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    const-string v1, "clna"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 27
    const-string v1, "mena"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 28
    const-string v1, "adaptna"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    const-string v1, "ctrlna"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v1, "in_na"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v6, "objna"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    const-string v6, "obj2na"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    const-string v6, "html"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 35
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/tramini/plugin/a/d/f;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    const/4 v6, 0x0

    .line 37
    instance-of v11, v1, Ljava/lang/String;

    if-eqz v11, :cond_5e

    .line 38
    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    .line 40
    :cond_5e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 41
    const/4 v1, 0x0

    .line 55
    :cond_65
    :goto_65
    return-object v1

    .line 44
    :cond_66
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 46
    array-length v15, v14

    const/4 v1, 0x0

    move v12, v1

    :goto_6f
    if-ge v12, v15, :cond_89

    aget-object v1, v14, v12

    .line 47
    invoke-static {v1, v13}, Lcom/tramini/plugin/a/d/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_85

    .line 49
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/tramini/plugin/a/b/b;->e:Lorg/json/JSONArray;

    move-object/from16 v10, p0

    invoke-static/range {v1 .. v11}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/b/a;

    move-result-object v1

    .line 50
    if-nez v1, :cond_65

    .line 46
    :cond_85
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_6f

    .line 55
    :cond_89
    const/4 v1, 0x0

    goto :goto_65
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 277
    const-string v0, ""

    new-instance v1, Lcom/tramini/plugin/a/d/f$3;

    invoke-direct {v1, p2, p1, p3}, Lcom/tramini/plugin/a/d/f$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v1}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .prologue
    .line 210
    const-string v0, ""

    new-instance v1, Lcom/tramini/plugin/a/d/f$1;

    invoke-direct {v1, p2, p3}, Lcom/tramini/plugin/a/d/f$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v1}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    if-nez v0, :cond_f

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_e
    return-object v0

    :cond_f
    const-string v1, ""

    new-instance v2, Lcom/tramini/plugin/a/d/f$2;

    invoke-direct {v2, p4}, Lcom/tramini/plugin/a/d/f$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2}, Lcom/tramini/plugin/a/d/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 179
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 180
    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 181
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 184
    if-eqz v4, :cond_4d

    .line 186
    array-length v5, v4

    move v2, v0

    :goto_23
    if-ge v2, v5, :cond_4a

    aget-object v0, v4, v2

    .line 187
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 189
    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_46

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 191
    if-eqz v0, :cond_46

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 194
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_44} :catch_4c

    move-result-object v0

    .line 204
    :goto_45
    return-object v0

    .line 186
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    :cond_4a
    move-object v0, v1

    .line 198
    goto :goto_45

    :catch_4c
    move-exception v0

    :cond_4d
    move-object v0, v1

    .line 204
    goto :goto_45
.end method
