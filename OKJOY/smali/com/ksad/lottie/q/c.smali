.class public Lcom/ksad/lottie/q/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/l;
    .registers 16

    const/4 v8, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_32

    move v10, v8

    :goto_e
    if-eqz v10, :cond_13

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :cond_13
    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    move-object v0, v7

    :goto_19
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    const/4 v1, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_fe

    :cond_2b
    :goto_2b
    packed-switch v1, :pswitch_data_120

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_19

    :cond_32
    move v10, v9

    goto :goto_e

    :sswitch_34
    const-string v12, "so"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v1, 0x6

    goto :goto_2b

    :sswitch_3e
    const-string v12, "rz"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v1, 0x3

    goto :goto_2b

    :sswitch_48
    const-string v12, "eo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v1, 0x7

    goto :goto_2b

    :sswitch_52
    const-string v12, "s"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v1, 0x2

    goto :goto_2b

    :sswitch_5c
    const-string v12, "r"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v1, 0x4

    goto :goto_2b

    :sswitch_66
    const-string v12, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    move v1, v8

    goto :goto_2b

    :sswitch_70
    const-string v12, "o"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v1, 0x5

    goto :goto_2b

    :sswitch_7a
    const-string v12, "a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    move v1, v9

    goto :goto_2b

    :pswitch_84
    invoke-static {p0, p1, v9}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v7

    goto :goto_19

    :pswitch_89
    invoke-static {p0, p1, v9}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v6

    goto :goto_19

    :pswitch_8e
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->d(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/d;

    move-result-object v1

    move-object v5, v1

    goto :goto_19

    :pswitch_94
    const-string v1, "Lottie doesn\'t support 3D layers."

    invoke-virtual {p1, v1}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    :pswitch_99
    invoke-static {p0, p1, v9}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v4

    goto/16 :goto_19

    :pswitch_9f
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->f(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/g;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_19

    :pswitch_a6
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/a;->b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/m;

    move-result-object v2

    goto/16 :goto_19

    :pswitch_ac
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_af
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v11, "k"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/a;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/e;

    move-result-object v0

    goto :goto_af

    :cond_c6
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_af

    :cond_ca
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_19

    :cond_cf
    if-eqz v10, :cond_d4

    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    :cond_d4
    if-nez v0, :cond_fb

    const-string v0, "LOTTIE"

    const-string v1, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ksad/lottie/p/h/e;

    invoke-direct {v1}, Lcom/ksad/lottie/p/h/e;-><init>()V

    :goto_e2
    if-nez v3, :cond_ee

    new-instance v3, Lcom/ksad/lottie/p/h/g;

    new-instance v0, Lcom/ksad/lottie/s/c;

    invoke-direct {v0, v13, v13}, Lcom/ksad/lottie/s/c;-><init>(FF)V

    invoke-direct {v3, v0}, Lcom/ksad/lottie/p/h/g;-><init>(Lcom/ksad/lottie/s/c;)V

    :cond_ee
    if-nez v5, :cond_f5

    new-instance v5, Lcom/ksad/lottie/p/h/d;

    invoke-direct {v5}, Lcom/ksad/lottie/p/h/d;-><init>()V

    :cond_f5
    new-instance v0, Lcom/ksad/lottie/p/h/l;

    invoke-direct/range {v0 .. v7}, Lcom/ksad/lottie/p/h/l;-><init>(Lcom/ksad/lottie/p/h/e;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/g;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    return-object v0

    :cond_fb
    move-object v1, v0

    goto :goto_e2

    nop

    :sswitch_data_fe
    .sparse-switch
        0x61 -> :sswitch_7a
        0x6f -> :sswitch_70
        0x70 -> :sswitch_66
        0x72 -> :sswitch_5c
        0x73 -> :sswitch_52
        0xcaa -> :sswitch_48
        0xe48 -> :sswitch_3e
        0xe5c -> :sswitch_34
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_a6
        :pswitch_9f
        :pswitch_94
        :pswitch_99
        :pswitch_8e
        :pswitch_89
        :pswitch_84
    .end packed-switch
.end method
