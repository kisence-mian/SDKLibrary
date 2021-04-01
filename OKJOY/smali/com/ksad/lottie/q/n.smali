.class Lcom/ksad/lottie/q/n;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/e;
    .registers 22

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_10
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d3

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    const/4 v2, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1da

    :cond_22
    :goto_22
    packed-switch v2, :pswitch_data_208

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_10

    :sswitch_29
    const-string v16, "nm"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x0

    goto :goto_22

    :sswitch_33
    const-string v16, "ml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/16 v2, 0x9

    goto :goto_22

    :sswitch_3e
    const-string v16, "lj"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/16 v2, 0x8

    goto :goto_22

    :sswitch_49
    const-string v16, "lc"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x7

    goto :goto_22

    :sswitch_53
    const-string v16, "w"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x6

    goto :goto_22

    :sswitch_5d
    const-string v16, "t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x3

    goto :goto_22

    :sswitch_67
    const-string v16, "s"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x4

    goto :goto_22

    :sswitch_71
    const-string v16, "o"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x2

    goto :goto_22

    :sswitch_7b
    const-string v16, "g"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x1

    goto :goto_22

    :sswitch_85
    const-string v16, "e"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/4 v2, 0x5

    goto :goto_22

    :sswitch_8f
    const-string v16, "d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_22

    const/16 v2, 0xa

    goto :goto_22

    :pswitch_9a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    :cond_9d
    :goto_9d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_117

    const/4 v15, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_a8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v17

    const/16 v16, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x6e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e1

    const/16 v19, 0x76

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d6

    :cond_c8
    :goto_c8
    if-eqz v16, :cond_f1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_ec

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a8

    :cond_d6
    const-string v18, "v"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c8

    const/16 v16, 0x1

    goto :goto_c8

    :cond_e1
    const-string v18, "n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c8

    const/16 v16, 0x0

    goto :goto_c8

    :cond_ec
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v2

    goto :goto_a8

    :cond_f1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v15

    goto :goto_a8

    :cond_f6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    const-string v16, "o"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_103

    move-object v14, v2

    goto :goto_9d

    :cond_103
    const-string v16, "d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_113

    const-string v16, "g"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9d

    :cond_113
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_117
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_10

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :pswitch_12b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    goto/16 :goto_10

    :pswitch_134
    invoke-static {}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v2, v11

    goto/16 :goto_10

    :pswitch_142
    invoke-static {}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v2, v10

    goto/16 :goto_10

    :pswitch_150
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v9

    goto/16 :goto_10

    :pswitch_156
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->e(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/f;

    move-result-object v8

    goto/16 :goto_10

    :pswitch_15c
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->e(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/f;

    move-result-object v7

    goto/16 :goto_10

    :pswitch_162
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_16d

    sget-object v4, Lcom/ksad/lottie/model/content/GradientType;->Linear:Lcom/ksad/lottie/model/content/GradientType;

    goto/16 :goto_10

    :cond_16d
    sget-object v4, Lcom/ksad/lottie/model/content/GradientType;->Radial:Lcom/ksad/lottie/model/content/GradientType;

    goto/16 :goto_10

    :pswitch_171
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->d(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/d;

    move-result-object v6

    goto/16 :goto_10

    :pswitch_177
    const/4 v2, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_17b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c8

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v16

    const/4 v15, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v18, 0x6b

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1b0

    const/16 v18, 0x70

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a6

    :cond_19a
    :goto_19a
    if-eqz v15, :cond_1c3

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1ba

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_17b

    :cond_1a6
    const-string v17, "p"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19a

    const/4 v15, 0x0

    goto :goto_19a

    :cond_1b0
    const-string v17, "k"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19a

    const/4 v15, 0x1

    goto :goto_19a

    :cond_1ba
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;I)Lcom/ksad/lottie/p/h/c;

    move-result-object v5

    goto :goto_17b

    :cond_1c3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_17b

    :cond_1c8
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_10

    :pswitch_1cd
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_1d3
    new-instance v2, Lcom/ksad/lottie/model/content/e;

    invoke-direct/range {v2 .. v14}, Lcom/ksad/lottie/model/content/e;-><init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/GradientType;Lcom/ksad/lottie/p/h/c;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/ksad/lottie/p/h/b;)V

    return-object v2

    nop

    :sswitch_data_1da
    .sparse-switch
        0x64 -> :sswitch_8f
        0x65 -> :sswitch_85
        0x67 -> :sswitch_7b
        0x6f -> :sswitch_71
        0x73 -> :sswitch_67
        0x74 -> :sswitch_5d
        0x77 -> :sswitch_53
        0xd77 -> :sswitch_49
        0xd7e -> :sswitch_3e
        0xd9f -> :sswitch_33
        0xdbf -> :sswitch_29
    .end sparse-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_1cd
        :pswitch_177
        :pswitch_171
        :pswitch_162
        :pswitch_15c
        :pswitch_156
        :pswitch_150
        :pswitch_142
        :pswitch_134
        :pswitch_12b
        :pswitch_9a
    .end packed-switch
.end method
