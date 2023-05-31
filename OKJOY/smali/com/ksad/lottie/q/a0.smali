.class Lcom/ksad/lottie/q/a0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/f;
    .registers 10

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x70

    if-eq v6, v7, :cond_48

    const/16 v7, 0xdbf

    if-eq v6, v7, :cond_3e

    const/16 v7, 0x72

    if-eq v6, v7, :cond_34

    const/16 v7, 0x73

    if-eq v6, v7, :cond_2a

    :cond_23
    :goto_23
    packed-switch v4, :pswitch_data_6c

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    :cond_2a
    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v4, 0x2

    goto :goto_23

    :cond_34
    const-string v6, "r"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v4, 0x3

    goto :goto_23

    :cond_3e
    const-string v6, "nm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v4, 0x0

    goto :goto_23

    :cond_48
    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v4, 0x1

    goto :goto_23

    :pswitch_52
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    goto :goto_4

    :pswitch_57
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->e(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/f;

    move-result-object v1

    goto :goto_4

    :pswitch_5c
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/a;->b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/m;

    move-result-object v2

    goto :goto_4

    :pswitch_61
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_66
    new-instance v4, Lcom/ksad/lottie/model/content/f;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/ksad/lottie/model/content/f;-><init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/m;Lcom/ksad/lottie/p/h/f;Lcom/ksad/lottie/p/h/b;)V

    return-object v4

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method
