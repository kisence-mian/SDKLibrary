.class Lcom/ksad/lottie/q/z;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/PolystarShape;
    .registers 15

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v6, v8

    move-object v9, v8

    move-object v7, v8

    move-object v5, v8

    move-object v4, v8

    move-object v3, v8

    move-object v2, v8

    move-object v1, v8

    :goto_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    const/4 v0, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_bc

    :cond_1c
    :goto_1c
    packed-switch v0, :pswitch_data_e2

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    :sswitch_23
    const-string v12, "sy"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :sswitch_2d
    const-string v12, "pt"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v0, 0x2

    goto :goto_1c

    :sswitch_37
    const-string v12, "os"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v0, 0x6

    goto :goto_1c

    :sswitch_41
    const-string v12, "or"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v0, 0x5

    goto :goto_1c

    :sswitch_4b
    const-string v12, "nm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    move v0, v10

    goto :goto_1c

    :sswitch_55
    const-string v12, "is"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/16 v0, 0x8

    goto :goto_1c

    :sswitch_60
    const-string v12, "ir"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v0, 0x7

    goto :goto_1c

    :sswitch_6a
    const-string v12, "r"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v0, 0x4

    goto :goto_1c

    :sswitch_74
    const-string v12, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/4 v0, 0x3

    goto :goto_1c

    :pswitch_7e
    invoke-static {p0, p1, v10}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v8

    goto :goto_a

    :pswitch_83
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v6

    goto :goto_a

    :pswitch_88
    invoke-static {p0, p1, v10}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v9

    goto/16 :goto_a

    :pswitch_8e
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v7

    goto/16 :goto_a

    :pswitch_94
    invoke-static {p0, p1, v10}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v5

    goto/16 :goto_a

    :pswitch_9a
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/a;->b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/m;

    move-result-object v4

    goto/16 :goto_a

    :pswitch_a0
    invoke-static {p0, p1, v10}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_a6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/ksad/lottie/model/content/PolystarShape$Type;->forValue(I)Lcom/ksad/lottie/model/content/PolystarShape$Type;

    move-result-object v2

    goto/16 :goto_a

    :pswitch_b0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_b6
    new-instance v0, Lcom/ksad/lottie/model/content/PolystarShape;

    invoke-direct/range {v0 .. v9}, Lcom/ksad/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/PolystarShape$Type;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    return-object v0

    :sswitch_data_bc
    .sparse-switch
        0x70 -> :sswitch_74
        0x72 -> :sswitch_6a
        0xd29 -> :sswitch_60
        0xd2a -> :sswitch_55
        0xdbf -> :sswitch_4b
        0xde3 -> :sswitch_41
        0xde4 -> :sswitch_37
        0xe04 -> :sswitch_2d
        0xe66 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_a6
        :pswitch_a0
        :pswitch_9a
        :pswitch_94
        :pswitch_8e
        :pswitch_88
        :pswitch_83
        :pswitch_7e
    .end packed-switch
.end method
