.class Lcom/ksad/lottie/q/e0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/i;
    .registers 13

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move v0, v3

    move-object v5, v1

    move v2, v6

    move-object v4, v1

    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x179b7bc2

    if-eq v9, v10, :cond_5a

    const/16 v10, 0x63

    if-eq v9, v10, :cond_50

    const/16 v10, 0x6f

    if-eq v9, v10, :cond_46

    const/16 v10, 0x72

    if-eq v9, v10, :cond_3c

    const/16 v10, 0xdbf

    if-eq v9, v10, :cond_32

    :cond_2b
    :goto_2b
    packed-switch v7, :pswitch_data_8a

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    :cond_32
    const-string v9, "nm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v7, v6

    goto :goto_2b

    :cond_3c
    const-string v9, "r"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v7, 0x4

    goto :goto_2b

    :cond_46
    const-string v9, "o"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v7, 0x2

    goto :goto_2b

    :cond_50
    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v7, v3

    goto :goto_2b

    :cond_5a
    const-string v9, "fillEnabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v7, 0x3

    goto :goto_2b

    :pswitch_64
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_7

    :pswitch_69
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2

    goto :goto_7

    :pswitch_6e
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->d(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/d;

    move-result-object v5

    goto :goto_7

    :pswitch_73
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/a;

    move-result-object v4

    goto :goto_7

    :pswitch_78
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_7d
    if-ne v0, v3, :cond_87

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_81
    new-instance v0, Lcom/ksad/lottie/model/content/i;

    invoke-direct/range {v0 .. v5}, Lcom/ksad/lottie/model/content/i;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/d;)V

    return-object v0

    :cond_87
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_81

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
    .end packed-switch
.end method
