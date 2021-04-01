.class Lcom/ksad/lottie/q/m;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/d;
    .registers 14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const/4 v0, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_e6

    :cond_19
    :goto_19
    packed-switch v0, :pswitch_data_104

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    :sswitch_20
    const-string v9, "nm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v0, 0x0

    goto :goto_19

    :sswitch_2a
    const-string v9, "t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v0, 0x3

    goto :goto_19

    :sswitch_34
    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v0, 0x4

    goto :goto_19

    :sswitch_3e
    const-string v9, "r"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v0, 0x6

    goto :goto_19

    :sswitch_48
    const-string v9, "o"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v0, 0x2

    goto :goto_19

    :sswitch_52
    const-string v9, "g"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :sswitch_5c
    const-string v9, "e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v0, 0x5

    goto :goto_19

    :pswitch_66
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_70

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_7

    :cond_70
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_7

    :pswitch_73
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->e(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/f;

    move-result-object v7

    goto :goto_7

    :pswitch_78
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->e(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/f;

    move-result-object v6

    goto :goto_7

    :pswitch_7d
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_87

    sget-object v2, Lcom/ksad/lottie/model/content/GradientType;->Linear:Lcom/ksad/lottie/model/content/GradientType;

    goto :goto_7

    :cond_87
    sget-object v2, Lcom/ksad/lottie/model/content/GradientType;->Radial:Lcom/ksad/lottie/model/content/GradientType;

    goto/16 :goto_7

    :pswitch_8b
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->d(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/d;

    move-result-object v5

    goto/16 :goto_7

    :pswitch_91
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_95
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d3

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x6b

    if-eq v10, v11, :cond_bf

    const/16 v11, 0x70

    if-eq v10, v11, :cond_b5

    :cond_ac
    :goto_ac
    if-eqz v8, :cond_ce

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c9

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_95

    :cond_b5
    const-string v10, "p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    const/4 v8, 0x0

    goto :goto_ac

    :cond_bf
    const-string v10, "k"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ac

    const/4 v8, 0x1

    goto :goto_ac

    :cond_c9
    invoke-static {p0, p1, v0}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;I)Lcom/ksad/lottie/p/h/c;

    move-result-object v4

    goto :goto_95

    :cond_ce
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_95

    :cond_d3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_7

    :pswitch_d8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_de
    new-instance v0, Lcom/ksad/lottie/model/content/d;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/ksad/lottie/model/content/d;-><init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/ksad/lottie/p/h/c;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    return-object v0

    :sswitch_data_e6
    .sparse-switch
        0x65 -> :sswitch_5c
        0x67 -> :sswitch_52
        0x6f -> :sswitch_48
        0x72 -> :sswitch_3e
        0x73 -> :sswitch_34
        0x74 -> :sswitch_2a
        0xdbf -> :sswitch_20
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_91
        :pswitch_8b
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_66
    .end packed-switch
.end method
