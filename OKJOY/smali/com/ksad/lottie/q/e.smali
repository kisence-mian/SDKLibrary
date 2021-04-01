.class Lcom/ksad/lottie/q/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;I)Lcom/ksad/lottie/model/content/a;
    .registers 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    if-ne p2, v7, :cond_81

    move-object v3, v0

    move-object v4, v0

    :goto_8
    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v2

    :goto_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const/4 v6, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_58

    const/16 v10, 0x70

    if-eq v9, v10, :cond_4e

    const/16 v10, 0x73

    if-eq v9, v10, :cond_44

    const/16 v10, 0xdbf

    if-eq v9, v10, :cond_3a

    :cond_2b
    :goto_2b
    packed-switch v6, :pswitch_data_84

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_c

    :cond_32
    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    :goto_35
    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v1

    goto :goto_c

    :cond_3a
    const-string v9, "nm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v6, v1

    goto :goto_2b

    :cond_44
    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v6, 0x2

    goto :goto_2b

    :cond_4e
    const-string v9, "p"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v6, v2

    goto :goto_2b

    :cond_58
    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v6, v7

    goto :goto_2b

    :pswitch_62
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    if-ne v0, v7, :cond_32

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_8

    :pswitch_6c
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->e(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/f;

    move-result-object v3

    goto :goto_c

    :pswitch_71
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/a;->b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/m;

    move-result-object v4

    goto :goto_c

    :pswitch_76
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_7b
    new-instance v1, Lcom/ksad/lottie/model/content/a;

    invoke-direct {v1, v5, v4, v3, v0}, Lcom/ksad/lottie/model/content/a;-><init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/f;Z)V

    return-object v1

    :cond_81
    move-object v3, v0

    move-object v4, v0

    goto :goto_35

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_62
    .end packed-switch
.end method
