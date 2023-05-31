.class Lcom/ksad/lottie/q/i0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/ShapeTrimPath;
    .registers 12

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v4, v5

    move-object v3, v5

    move-object v2, v5

    move-object v1, v5

    :goto_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x65

    if-eq v8, v9, :cond_58

    const/16 v9, 0x6d

    if-eq v8, v9, :cond_4e

    const/16 v9, 0x6f

    if-eq v8, v9, :cond_44

    const/16 v9, 0x73

    if-eq v8, v9, :cond_3a

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_30

    :cond_29
    :goto_29
    packed-switch v0, :pswitch_data_86

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    :cond_30
    const-string v8, "nm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v0, 0x3

    goto :goto_29

    :cond_3a
    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    move v0, v6

    goto :goto_29

    :cond_44
    const-string v8, "o"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v0, 0x2

    goto :goto_29

    :cond_4e
    const-string v8, "m"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v0, 0x4

    goto :goto_29

    :cond_58
    const-string v8, "e"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/4 v0, 0x1

    goto :goto_29

    :pswitch_62
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->forId(I)Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    goto :goto_6

    :pswitch_6b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :pswitch_70
    invoke-static {p0, p1, v6}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v5

    goto :goto_6

    :pswitch_75
    invoke-static {p0, p1, v6}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v4

    goto :goto_6

    :pswitch_7a
    invoke-static {p0, p1, v6}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v3

    goto :goto_6

    :cond_7f
    new-instance v0, Lcom/ksad/lottie/model/content/ShapeTrimPath;

    invoke-direct/range {v0 .. v5}, Lcom/ksad/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    return-object v0

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_75
        :pswitch_70
        :pswitch_6b
        :pswitch_62
    .end packed-switch
.end method
