.class public Lcom/ksad/lottie/q/t;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/util/JsonReader;)Lcom/ksad/lottie/d;
    .registers 24

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v20

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v10, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v10}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v13}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    new-instance v22, Lcom/ksad/lottie/d;

    invoke-direct/range {v22 .. v22}, Lcom/ksad/lottie/d;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    :cond_38
    :goto_38
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13a

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_15c

    :cond_4a
    :goto_4a
    packed-switch v4, :pswitch_data_186

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_38

    :sswitch_51
    const-string v6, "fonts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/16 v4, 0x8

    goto :goto_4a

    :sswitch_5c
    const-string v6, "chars"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/16 v4, 0x9

    goto :goto_4a

    :sswitch_67
    const-string v6, "op"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x3

    goto :goto_4a

    :sswitch_71
    const-string v6, "ip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x2

    goto :goto_4a

    :sswitch_7b
    const-string v6, "fr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x4

    goto :goto_4a

    :sswitch_85
    const-string v6, "w"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x0

    goto :goto_4a

    :sswitch_8f
    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x5

    goto :goto_4a

    :sswitch_99
    const-string v6, "h"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x1

    goto :goto_4a

    :sswitch_a3
    const-string v6, "layers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x6

    goto :goto_4a

    :sswitch_ad
    const-string v6, "assets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v4, 0x7

    goto :goto_4a

    :pswitch_b7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v13}, Lcom/ksad/lottie/q/t;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Landroid/support/v4/util/SparseArrayCompat;)V

    goto/16 :goto_38

    :pswitch_c0
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/ksad/lottie/q/t;->a(Landroid/util/JsonReader;Ljava/util/Map;)V

    goto/16 :goto_38

    :pswitch_c7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v11, v12}, Lcom/ksad/lottie/q/t;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_38

    :pswitch_d0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v10}, Lcom/ksad/lottie/q/t;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Ljava/util/List;Landroid/support/v4/util/LongSparseArray;)V

    goto/16 :goto_38

    :pswitch_db
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/ksad/lottie/r/f;->a(IIIIII)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "Lottie only supports bodymovin >= 4.4.0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    goto/16 :goto_38

    :pswitch_10c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v17, v4

    goto/16 :goto_38

    :pswitch_115
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3c23d70a    # 0.01f

    sub-float/2addr v4, v5

    move/from16 v18, v4

    goto/16 :goto_38

    :pswitch_122
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v19, v4

    goto/16 :goto_38

    :pswitch_12b
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    move v15, v4

    goto/16 :goto_38

    :pswitch_132
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    move/from16 v16, v4

    goto/16 :goto_38

    :cond_13a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    move/from16 v0, v16

    int-to-float v4, v0

    mul-float v4, v4, v20

    float-to-int v4, v4

    int-to-float v5, v15

    mul-float v5, v5, v20

    float-to-int v6, v5

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v4, v22

    move/from16 v6, v19

    move/from16 v7, v18

    move/from16 v8, v17

    move-object/from16 v9, v21

    invoke-virtual/range {v4 .. v14}, Lcom/ksad/lottie/d;->a(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/support/v4/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/support/v4/util/SparseArrayCompat;Ljava/util/Map;)V

    return-object v22

    :sswitch_data_15c
    .sparse-switch
        -0x53ef8c7d -> :sswitch_ad
        -0x42252abe -> :sswitch_a3
        0x68 -> :sswitch_99
        0x76 -> :sswitch_8f
        0x77 -> :sswitch_85
        0xccc -> :sswitch_7b
        0xd27 -> :sswitch_71
        0xde1 -> :sswitch_67
        0x5a3d7dd -> :sswitch_5c
        0x5d17e04 -> :sswitch_51
    .end sparse-switch

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_132
        :pswitch_12b
        :pswitch_122
        :pswitch_115
        :pswitch_10c
        :pswitch_db
        :pswitch_d0
        :pswitch_c7
        :pswitch_c0
        :pswitch_b7
    .end packed-switch
.end method

.method private static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Landroid/support/v4/util/SparseArrayCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/ksad/lottie/d;",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/ksad/lottie/p/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/j;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/d;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_15
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Ljava/util/List;Landroid/support/v4/util/LongSparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/ksad/lottie/d;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/s;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->d()Lcom/ksad/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Image:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->b()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksad/lottie/c;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_42
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Ljava/util/Map;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/ksad/lottie/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/g;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v7}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_1b
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const/4 v0, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x42252abe

    if-eq v9, v10, :cond_7c

    const/16 v10, 0x68

    if-eq v9, v10, :cond_72

    const/16 v10, 0x70

    if-eq v9, v10, :cond_68

    const/16 v10, 0x75

    if-eq v9, v10, :cond_5e

    const/16 v10, 0x77

    if-eq v9, v10, :cond_54

    const/16 v10, 0xd1b

    if-eq v9, v10, :cond_4a

    :cond_43
    :goto_43
    packed-switch v0, :pswitch_data_da

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1b

    :cond_4a
    const-string v9, "id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v0, 0x0

    goto :goto_43

    :cond_54
    const-string v9, "w"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v0, 0x2

    goto :goto_43

    :cond_5e
    const-string v9, "u"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v0, 0x5

    goto :goto_43

    :cond_68
    const-string v9, "p"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v0, 0x4

    goto :goto_43

    :cond_72
    const-string v9, "h"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v0, 0x3

    goto :goto_43

    :cond_7c
    const-string v9, "layers"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const/4 v0, 0x1

    goto :goto_43

    :pswitch_86
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1b

    :pswitch_8b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :pswitch_90
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    goto :goto_1b

    :pswitch_95
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_1b

    :pswitch_9a
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_9d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/s;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9d

    :cond_b2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_1b

    :pswitch_b7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1b

    :cond_bd
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v4, :cond_d0

    new-instance v0, Lcom/ksad/lottie/g;

    invoke-direct/range {v0 .. v5}, Lcom/ksad/lottie/g;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ksad/lottie/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_d0
    invoke-interface {p2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_d5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_9a
        :pswitch_95
        :pswitch_90
        :pswitch_8b
        :pswitch_86
    .end packed-switch
.end method

.method private static a(Landroid/util/JsonReader;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/p/c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_1d

    :cond_17
    :goto_17
    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    :cond_1d
    const-string v2, "list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    :cond_27
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_2a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p0}, Lcom/ksad/lottie/q/k;->a(Landroid/util/JsonReader;)Lcom/ksad/lottie/p/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_3c
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_3

    :cond_40
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method
