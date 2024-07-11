.class public final Lcom/tramini/plugin/a/e/f;
.super Lcom/tramini/plugin/a/e/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/tramini/plugin/a/e/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;
    .registers 14

    .line 73
    nop

    .line 1217
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1218
    new-instance v2, Lcom/tramini/plugin/a/e/f$1;

    invoke-direct {v2, p5, p2}, Lcom/tramini/plugin/a/e/f$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p0

    .line 1247
    if-nez p0, :cond_14

    .line 1248
    move-object p0, v0

    goto :goto_22

    .line 1251
    :cond_14
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1252
    new-instance v1, Lcom/tramini/plugin/a/e/f$2;

    invoke-direct {v1, p3}, Lcom/tramini/plugin/a/e/f$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v1}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p0

    .line 73
    :goto_22
    nop

    .line 74
    if-nez p0, :cond_26

    .line 75
    return-object v0

    .line 78
    :cond_26
    nop

    .line 1286
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1288
    new-instance p2, Lcom/tramini/plugin/a/e/f$3;

    invoke-direct {p2, p4, p6}, Lcom/tramini/plugin/a/e/f$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p4, p1, p2}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p2

    .line 1309
    if-eqz p2, :cond_38

    .line 1310
    goto :goto_46

    .line 1313
    :cond_38
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1315
    new-instance p3, Lcom/tramini/plugin/a/e/f$4;

    invoke-direct {p3, p5, p4, p1, p6}, Lcom/tramini/plugin/a/e/f$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-static {p0, p4, p2, p3}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p2

    .line 78
    :goto_46
    nop

    .line 79
    if-nez p2, :cond_4a

    .line 80
    return-object v0

    .line 83
    :cond_4a
    invoke-static {p2, p7, p8, p9, p10}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_2 .. :try_end_4e} :catchall_4f

    return-object p0

    .line 85
    :catchall_4f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;
    .registers 23

    .line 93
    const/4 v1, 0x0

    :try_start_1
    const-string v0, ":"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 94
    array-length v0, v2
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_115

    const/4 v3, 0x2

    if-eq v0, v3, :cond_e

    .line 95
    return-object v1

    .line 98
    :cond_e
    nop

    .line 100
    const/4 v3, 0x0

    :try_start_10
    invoke-static/range {p0 .. p1}, Lcom/tramini/plugin/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_16} :catch_2a
    .catchall {:try_start_10 .. :try_end_16} :catchall_115

    .line 103
    move-object v5, v1

    move v4, v3

    :goto_18
    :try_start_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_27

    .line 104
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_28
    .catchall {:try_start_18 .. :try_end_22} :catchall_115

    .line 106
    if-nez v5, :cond_27

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 111
    :cond_27
    goto :goto_2c

    .line 110
    :catch_28
    move-exception v0

    goto :goto_2c

    :catch_2a
    move-exception v0

    move-object v5, v1

    .line 113
    :goto_2c
    :try_start_2c
    aget-object v0, v2, v3

    invoke-static {v5, v0}, Lcom/tramini/plugin/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v0, v2}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 118
    move v7, v3

    :goto_3f
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_106

    .line 119
    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    move-object/from16 v9, p3

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_115

    .line 122
    :try_start_51
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_f8

    if-eqz v11, :cond_5d

    .line 123
    move-object/from16 v11, p0

    move-object/from16 v17, v2

    goto/16 :goto_fd

    .line 126
    :cond_5d
    move-object/from16 v11, p0

    :try_start_5f
    invoke-static {v11, v10}, Lcom/tramini/plugin/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 127
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_72

    .line 128
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v17, v2

    goto/16 :goto_fd

    .line 130
    :cond_72
    invoke-static {v5, v10}, Lcom/tramini/plugin/a/e/f;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 131
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_85

    .line 132
    invoke-virtual {v6, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v17, v2

    goto/16 :goto_fd

    .line 134
    :cond_85
    instance-of v12, v2, Ljava/lang/String;

    if-eqz v12, :cond_f3

    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 137
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 138
    nop

    .line 139
    move v10, v3

    move v14, v10

    :goto_95
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v10, v15, :cond_f0

    .line 140
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 141
    invoke-virtual {v15, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 143
    :goto_a7
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    if-eqz v16, :cond_e4

    .line 144
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 147
    const-string v1, "<"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_bd
    .catchall {:try_start_5f .. :try_end_bd} :catchall_f6

    .line 149
    move-object/from16 v17, v2

    const/4 v2, -0x1

    if-eq v4, v2, :cond_de

    if-eq v1, v2, :cond_de

    .line 153
    add-int/lit8 v4, v4, 0x1

    :try_start_c6
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 155
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d3
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_dc

    .line 156
    nop

    .line 157
    const/4 v14, 0x1

    goto :goto_e6

    .line 159
    :cond_d6
    move-object/from16 v2, v17

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_a7

    .line 167
    :catchall_dc
    move-exception v0

    goto :goto_fd

    .line 149
    :cond_de
    move-object/from16 v2, v17

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_a7

    .line 143
    :cond_e4
    move-object/from16 v17, v2

    .line 160
    :goto_e6
    if-nez v14, :cond_f5

    .line 139
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_95

    :cond_f0
    move-object/from16 v17, v2

    goto :goto_f5

    .line 134
    :cond_f3
    move-object/from16 v17, v2

    .line 168
    :cond_f5
    :goto_f5
    goto :goto_fd

    .line 167
    :catchall_f6
    move-exception v0

    goto :goto_fb

    :catchall_f8
    move-exception v0

    move-object/from16 v11, p0

    :goto_fb
    move-object/from16 v17, v2

    .line 118
    :goto_fd
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v17

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3f

    .line 173
    :cond_106
    :try_start_106
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_114

    .line 174
    new-instance v0, Lcom/tramini/plugin/a/c/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/c/a;-><init>()V

    .line 175
    iput-object v6, v0, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;
    :try_end_113
    .catchall {:try_start_106 .. :try_end_113} :catchall_115

    .line 176
    return-object v0

    .line 179
    :cond_114
    goto :goto_116

    .line 178
    :catchall_115
    move-exception v0

    .line 180
    :goto_116
    const/4 v1, 0x0

    return-object v1
.end method

.method public static a(Lorg/json/JSONObject;Lcom/tramini/plugin/a/c/c;Ljava/lang/String;)Lcom/tramini/plugin/a/c/a;
    .registers 29

    .line 31
    move-object/from16 v11, p0

    const-string v0, "pre1"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 32
    const-string v0, "pre2"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 33
    const-string v0, "clna"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "mena"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 35
    const-string v1, "adaptna"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 36
    const-string v1, "ctrlna"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 37
    const-string v1, "in_na"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "objna_arr"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 39
    const-string v2, "obj2na"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 40
    const-string v2, "html"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 42
    move-object/from16 v2, p2

    invoke-static {v1, v2}, Lcom/tramini/plugin/a/e/f;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    nop

    .line 44
    instance-of v2, v1, Ljava/lang/String;

    const/16 v20, 0x0

    if-eqz v2, :cond_50

    .line 45
    check-cast v1, Ljava/lang/String;

    move-object/from16 v21, v1

    goto :goto_52

    .line 44
    :cond_50
    move-object/from16 v21, v20

    .line 47
    :goto_52
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 48
    return-object v20

    .line 51
    :cond_59
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 53
    array-length v9, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_62
    if-ge v8, v9, :cond_9d

    aget-object v0, v10, v8

    .line 54
    invoke-static {v0, v14}, Lcom/tramini/plugin/a/e/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_90

    .line 56
    move-object/from16 v7, p1

    iget-object v6, v7, Lcom/tramini/plugin/a/c/c;->e:Lorg/json/JSONArray;

    move-object v1, v12

    move-object/from16 v2, v16

    move-object v3, v15

    move-object v4, v13

    move-object/from16 v5, v21

    move-object/from16 v22, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v23, v8

    move-object/from16 v8, v19

    move/from16 v24, v9

    move-object/from16 v9, p0

    move-object/from16 v25, v10

    move-object/from16 v10, v22

    invoke-static/range {v0 .. v10}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)Lcom/tramini/plugin/a/c/a;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_96

    .line 58
    return-object v0

    .line 55
    :cond_90
    move/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    .line 53
    :cond_96
    add-int/lit8 v8, v23, 0x1

    move/from16 v9, v24

    move-object/from16 v10, v25

    goto :goto_62

    .line 62
    :cond_9d
    return-object v20
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    new-instance v1, Lcom/tramini/plugin/a/e/f$3;

    invoke-direct {v1, p1, p3}, Lcom/tramini/plugin/a/e/f$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v1}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_11

    .line 310
    return-object v1

    .line 313
    :cond_11
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    new-instance v2, Lcom/tramini/plugin/a/e/f$4;

    invoke-direct {v2, p2, p1, v0, p3}, Lcom/tramini/plugin/a/e/f$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, v2}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    new-instance v1, Lcom/tramini/plugin/a/e/f$1;

    invoke-direct {v1, p2, p3}, Lcom/tramini/plugin/a/e/f$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v1}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p0

    .line 247
    if-nez p0, :cond_12

    .line 248
    const/4 p0, 0x0

    return-object p0

    .line 251
    :cond_12
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    new-instance p3, Lcom/tramini/plugin/a/e/f$2;

    invoke-direct {p3, p4}, Lcom/tramini/plugin/a/e/f$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/tramini/plugin/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .line 186
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 187
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 188
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_46

    .line 193
    array-length v3, v1

    :goto_1f
    if-ge v2, v3, :cond_45

    aget-object v4, v1, v2

    .line 194
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 196
    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_42

    .line 197
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 198
    if-eqz v4, :cond_42

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 201
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_47

    return-object p0

    .line 193
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 205
    :cond_45
    return-object v0

    .line 210
    :cond_46
    goto :goto_48

    .line 208
    :catchall_47
    move-exception p0

    .line 211
    :goto_48
    return-object v0
.end method
