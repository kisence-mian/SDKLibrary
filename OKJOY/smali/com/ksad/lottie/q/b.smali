.class public Lcom/ksad/lottie/q/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/k;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v0, v1

    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x61

    if-eq v4, v5, :cond_1e

    :cond_18
    :goto_18
    if-eqz v2, :cond_28

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    :cond_1e
    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    goto :goto_18

    :cond_28
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/b;->b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/k;

    move-result-object v0

    goto :goto_5

    :cond_2d
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-nez v0, :cond_37

    new-instance v0, Lcom/ksad/lottie/p/h/k;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ksad/lottie/p/h/k;-><init>(Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    :cond_37
    return-object v0
.end method

.method private static b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/k;
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x74

    if-eq v6, v7, :cond_4b

    const/16 v7, 0xcbd

    if-eq v6, v7, :cond_41

    const/16 v7, 0xe50

    if-eq v6, v7, :cond_37

    const/16 v7, 0xe64

    if-eq v6, v7, :cond_2d

    :cond_26
    :goto_26
    packed-switch v4, :pswitch_data_72

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    :cond_2d
    const-string v6, "sw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x2

    goto :goto_26

    :cond_37
    const-string v6, "sc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x1

    goto :goto_26

    :cond_41
    const-string v6, "fc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x0

    goto :goto_26

    :cond_4b
    const-string v6, "t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v4, 0x3

    goto :goto_26

    :pswitch_55
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    goto :goto_7

    :pswitch_5a
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v1

    goto :goto_7

    :pswitch_5f
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/a;

    move-result-object v2

    goto :goto_7

    :pswitch_64
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/a;

    move-result-object v3

    goto :goto_7

    :cond_69
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance v4, Lcom/ksad/lottie/p/h/k;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/ksad/lottie/p/h/k;-><init>(Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/a;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    return-object v4

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
    .end packed-switch
.end method
