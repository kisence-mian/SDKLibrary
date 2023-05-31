.class public Lcom/ksad/lottie/q/s;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/layer/Layer;
    .registers 36

    const-string v8, "UNSET"

    const/4 v5, 0x0

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v9, -0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v24, Lcom/ksad/lottie/model/layer/Layer$MatteType;->None:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    const/4 v13, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v26, v2

    move-wide/from16 v28, v6

    move-object/from16 v27, v5

    move-object/from16 v30, v8

    :goto_35
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ea

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_38e

    :cond_47
    :goto_47
    packed-switch v2, :pswitch_data_3e8

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_35

    :sswitch_4e
    const-string v6, "masksProperties"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0xa

    goto :goto_47

    :sswitch_59
    const-string v6, "refId"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x2

    goto :goto_47

    :sswitch_63
    const-string v6, "ind"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x1

    goto :goto_47

    :sswitch_6d
    const-string v6, "ty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x3

    goto :goto_47

    :sswitch_77
    const-string v6, "tt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x9

    goto :goto_47

    :sswitch_82
    const-string v6, "tm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x14

    goto :goto_47

    :sswitch_8d
    const-string v6, "sw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x5

    goto :goto_47

    :sswitch_97
    const-string v6, "st"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0xf

    goto :goto_47

    :sswitch_a2
    const-string v6, "sr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0xe

    goto :goto_47

    :sswitch_ad
    const-string v6, "sh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x6

    goto :goto_47

    :sswitch_b7
    const-string v6, "sc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x7

    goto :goto_47

    :sswitch_c1
    const-string v6, "op"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x13

    goto/16 :goto_47

    :sswitch_cd
    const-string v6, "nm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x0

    goto/16 :goto_47

    :sswitch_d8
    const-string v6, "ks"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x8

    goto/16 :goto_47

    :sswitch_e4
    const-string v6, "ip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x12

    goto/16 :goto_47

    :sswitch_f0
    const-string v6, "ef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0xd

    goto/16 :goto_47

    :sswitch_fc
    const-string v6, "cl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x15

    goto/16 :goto_47

    :sswitch_108
    const-string v6, "w"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x10

    goto/16 :goto_47

    :sswitch_114
    const-string v6, "t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0xc

    goto/16 :goto_47

    :sswitch_120
    const-string v6, "h"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0x11

    goto/16 :goto_47

    :sswitch_12c
    const-string v6, "shapes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v2, 0xb

    goto/16 :goto_47

    :sswitch_138
    const-string v6, "parent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v2, 0x4

    goto/16 :goto_47

    :pswitch_143
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    goto/16 :goto_35

    :pswitch_14b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v25

    goto/16 :goto_35

    :pswitch_156
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    move v3, v2

    goto/16 :goto_35

    :pswitch_15e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v2, v4

    move v4, v2

    goto/16 :goto_35

    :pswitch_166
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v20, v0

    goto/16 :goto_35

    :pswitch_175
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v19, v0

    goto/16 :goto_35

    :pswitch_184
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v18, v0

    goto/16 :goto_35

    :pswitch_18d
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v17, v0

    goto/16 :goto_35

    :pswitch_196
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_19e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d6

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_1a7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xdbf

    if-eq v7, v8, :cond_1c0

    :cond_1ba
    :goto_1ba
    if-eqz v2, :cond_1ca

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a7

    :cond_1c0
    const-string v7, "nm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ba

    const/4 v2, 0x0

    goto :goto_1ba

    :cond_1ca
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a7

    :cond_1d2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_19e

    :cond_1d6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    goto/16 :goto_35

    :pswitch_1f3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_1f6
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24a

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_220

    const/16 v7, 0x64

    if-eq v6, v7, :cond_216

    :cond_20d
    :goto_20d
    if-eqz v2, :cond_245

    const/4 v5, 0x1

    if-eq v2, v5, :cond_22a

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1f6

    :cond_216
    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20d

    const/4 v2, 0x0

    goto :goto_20d

    :cond_220
    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20d

    const/4 v2, 0x1

    goto :goto_20d

    :cond_22a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_237

    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/b;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/k;

    move-result-object v22

    :cond_237
    :goto_237
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_241

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_237

    :cond_241
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_1f6

    :cond_245
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/d;->b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/j;

    move-result-object v21

    goto :goto_1f6

    :cond_24a
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_35

    :pswitch_24f
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    :cond_252
    :goto_252
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_275

    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/g;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/b;

    move-result-object v2

    if-eqz v2, :cond_252

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_252

    :pswitch_264
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_267
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_275

    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/u;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/Mask;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_267

    :cond_275
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_35

    :pswitch_27a
    invoke-static {}, Lcom/ksad/lottie/model/layer/Layer$MatteType;->values()[Lcom/ksad/lottie/model/layer/Layer$MatteType;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v5

    aget-object v24, v2, v5

    goto/16 :goto_35

    :pswitch_286
    invoke-static/range {p0 .. p1}, Lcom/ksad/lottie/q/c;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/l;

    move-result-object v13

    goto/16 :goto_35

    :pswitch_28c
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_35

    :pswitch_296
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v15, v2

    goto/16 :goto_35

    :pswitch_2a3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int v14, v2

    goto/16 :goto_35

    :pswitch_2b0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-long v9, v2

    goto/16 :goto_35

    :pswitch_2b7
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    sget-object v5, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ge v2, v5, :cond_2cd

    invoke-static {}, Lcom/ksad/lottie/model/layer/Layer$LayerType;->values()[Lcom/ksad/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    aget-object v2, v5, v2

    move-object/from16 v27, v2

    goto/16 :goto_35

    :cond_2cd
    sget-object v2, Lcom/ksad/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    move-object/from16 v27, v2

    goto/16 :goto_35

    :pswitch_2d3
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_35

    :pswitch_2d9
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    int-to-long v6, v2

    move-wide/from16 v28, v6

    goto/16 :goto_35

    :pswitch_2e2
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    goto/16 :goto_35

    :cond_2ea
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V

    div-float v33, v4, v17

    div-float v31, v3, v17

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-lez v2, :cond_317

    new-instance v2, Lcom/ksad/lottie/s/a;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/ksad/lottie/s/a;-><init>(Lcom/ksad/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_317
    const/4 v2, 0x0

    cmpl-float v2, v31, v2

    if-lez v2, :cond_386

    :goto_31c
    new-instance v2, Lcom/ksad/lottie/s/a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v7, v33

    invoke-direct/range {v2 .. v8}, Lcom/ksad/lottie/s/a;-><init>(Lcom/ksad/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/ksad/lottie/s/a;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v7, v31

    invoke-direct/range {v2 .. v8}, Lcom/ksad/lottie/s/a;-><init>(Lcom/ksad/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, ".ai"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36f

    const-string v2, "ai"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_376

    :cond_36f
    const-string v2, "Convert your Illustrator layers to shape layers."

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    :cond_376
    new-instance v2, Lcom/ksad/lottie/model/layer/Layer;

    move-object/from16 v3, v32

    move-object/from16 v4, p1

    move-object/from16 v5, v30

    move-wide/from16 v6, v28

    move-object/from16 v8, v27

    invoke-direct/range {v2 .. v25}, Lcom/ksad/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/ksad/lottie/d;Ljava/lang/String;JLcom/ksad/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/ksad/lottie/p/h/l;IIIFFIILcom/ksad/lottie/p/h/j;Lcom/ksad/lottie/p/h/k;Ljava/util/List;Lcom/ksad/lottie/model/layer/Layer$MatteType;Lcom/ksad/lottie/p/h/b;)V

    return-object v2

    :cond_386
    invoke-virtual/range {p1 .. p1}, Lcom/ksad/lottie/d;->e()F

    move-result v2

    move/from16 v31, v2

    goto :goto_31c

    nop

    :sswitch_data_38e
    .sparse-switch
        -0x3b54f756 -> :sswitch_138
        -0x35db5b0e -> :sswitch_12c
        0x68 -> :sswitch_120
        0x74 -> :sswitch_114
        0x77 -> :sswitch_108
        0xc69 -> :sswitch_fc
        0xca1 -> :sswitch_f0
        0xd27 -> :sswitch_e4
        0xd68 -> :sswitch_d8
        0xdbf -> :sswitch_cd
        0xde1 -> :sswitch_c1
        0xe50 -> :sswitch_b7
        0xe55 -> :sswitch_ad
        0xe5f -> :sswitch_a2
        0xe61 -> :sswitch_97
        0xe64 -> :sswitch_8d
        0xe79 -> :sswitch_82
        0xe80 -> :sswitch_77
        0xe85 -> :sswitch_6d
        0x197df -> :sswitch_63
        0x675e90e -> :sswitch_59
        0x55ed639a -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_3e8
    .packed-switch 0x0
        :pswitch_2e2
        :pswitch_2d9
        :pswitch_2d3
        :pswitch_2b7
        :pswitch_2b0
        :pswitch_2a3
        :pswitch_296
        :pswitch_28c
        :pswitch_286
        :pswitch_27a
        :pswitch_264
        :pswitch_24f
        :pswitch_1f3
        :pswitch_196
        :pswitch_18d
        :pswitch_184
        :pswitch_175
        :pswitch_166
        :pswitch_15e
        :pswitch_156
        :pswitch_14b
        :pswitch_143
    .end packed-switch
.end method

.method public static a(Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/layer/Layer;
    .registers 25

    invoke-virtual/range {p0 .. p0}, Lcom/ksad/lottie/d;->a()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v0, Lcom/ksad/lottie/model/layer/Layer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/ksad/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/ksad/lottie/p/h/l;

    invoke-direct {v11}, Lcom/ksad/lottie/p/h/l;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/ksad/lottie/model/layer/Layer$MatteType;->None:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    const-string v3, "__container"

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v23}, Lcom/ksad/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/ksad/lottie/d;Ljava/lang/String;JLcom/ksad/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/ksad/lottie/p/h/l;IIIFFIILcom/ksad/lottie/p/h/j;Lcom/ksad/lottie/p/h/k;Ljava/util/List;Lcom/ksad/lottie/model/layer/Layer$MatteType;Lcom/ksad/lottie/p/h/b;)V

    return-object v0
.end method
