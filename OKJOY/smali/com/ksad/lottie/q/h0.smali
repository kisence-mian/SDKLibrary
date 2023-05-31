.class Lcom/ksad/lottie/q/h0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/ShapeStroke;
    .registers 17

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    :goto_d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_150

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const/4 v0, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_15c

    :cond_1f
    :goto_1f
    packed-switch v0, :pswitch_data_17e

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_d

    :sswitch_26
    const-string v11, "nm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :sswitch_30
    const-string v11, "ml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x6

    goto :goto_1f

    :sswitch_3a
    const-string v11, "lj"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x5

    goto :goto_1f

    :sswitch_44
    const-string v11, "lc"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x4

    goto :goto_1f

    :sswitch_4e
    const-string v11, "w"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x2

    goto :goto_1f

    :sswitch_58
    const-string v11, "o"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x3

    goto :goto_1f

    :sswitch_62
    const-string v11, "d"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x7

    goto :goto_1f

    :sswitch_6c
    const-string v11, "c"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f

    :pswitch_76
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :cond_79
    :goto_79
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_101

    const/4 v10, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_84
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c2

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    const/4 v11, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v14, 0x6e

    if-eq v13, v14, :cond_ae

    const/16 v14, 0x76

    if-eq v13, v14, :cond_a4

    :cond_9b
    :goto_9b
    if-eqz v11, :cond_bd

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b8

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_84

    :cond_a4
    const-string v13, "v"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    const/4 v11, 0x1

    goto :goto_9b

    :cond_ae
    const-string v13, "n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    const/4 v11, 0x0

    goto :goto_9b

    :cond_b8
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    goto :goto_84

    :cond_bd
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    goto :goto_84

    :cond_c2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x64

    if-eq v12, v13, :cond_f7

    const/16 v13, 0x67

    if-eq v12, v13, :cond_ed

    const/16 v13, 0x6f

    if-eq v12, v13, :cond_e3

    move v10, v11

    :goto_d7
    if-eqz v10, :cond_156

    const/4 v11, 0x1

    if-eq v10, v11, :cond_df

    const/4 v11, 0x2

    if-ne v10, v11, :cond_79

    :cond_df
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    :cond_e3
    const-string v12, "o"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_159

    const/4 v10, 0x0

    goto :goto_d7

    :cond_ed
    const-string v12, "g"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_159

    const/4 v10, 0x2

    goto :goto_d7

    :cond_f7
    const-string v12, "d"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_159

    const/4 v10, 0x1

    goto :goto_d7

    :cond_101
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_d

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :pswitch_115
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v9, v10

    goto/16 :goto_d

    :pswitch_11c
    invoke-static {}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v0, v8

    goto/16 :goto_d

    :pswitch_12a
    invoke-static {}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    goto/16 :goto_d

    :pswitch_138
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->d(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/d;

    move-result-object v5

    goto/16 :goto_d

    :pswitch_13e
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_144
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/a;

    move-result-object v4

    goto/16 :goto_d

    :pswitch_14a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d

    :cond_150
    new-instance v0, Lcom/ksad/lottie/model/content/ShapeStroke;

    invoke-direct/range {v0 .. v9}, Lcom/ksad/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/b;Ljava/util/List;Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;F)V

    return-object v0

    :cond_156
    move-object v2, v0

    goto/16 :goto_79

    :cond_159
    move v10, v11

    goto/16 :goto_d7

    :sswitch_data_15c
    .sparse-switch
        0x63 -> :sswitch_6c
        0x64 -> :sswitch_62
        0x6f -> :sswitch_58
        0x77 -> :sswitch_4e
        0xd77 -> :sswitch_44
        0xd7e -> :sswitch_3a
        0xd9f -> :sswitch_30
        0xdbf -> :sswitch_26
    .end sparse-switch

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_14a
        :pswitch_144
        :pswitch_13e
        :pswitch_138
        :pswitch_12a
        :pswitch_11c
        :pswitch_115
        :pswitch_76
    .end packed-switch
.end method
