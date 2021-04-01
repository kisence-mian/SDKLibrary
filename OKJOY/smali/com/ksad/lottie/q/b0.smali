.class Lcom/ksad/lottie/q/b0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/g;
    .registers 11

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x63

    if-eq v7, v8, :cond_49

    const/16 v8, 0x6f

    if-eq v7, v8, :cond_3f

    const/16 v8, 0xdbf

    if-eq v7, v8, :cond_35

    const/16 v8, 0xe7e

    if-eq v7, v8, :cond_2b

    :cond_24
    :goto_24
    packed-switch v4, :pswitch_data_6e

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_5

    :cond_2b
    const-string v7, "tr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v4, 0x3

    goto :goto_24

    :cond_35
    const-string v7, "nm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v4, v5

    goto :goto_24

    :cond_3f
    const-string v7, "o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v4, 0x2

    goto :goto_24

    :cond_49
    const-string v7, "c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v4, 0x1

    goto :goto_24

    :pswitch_53
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/c;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/l;

    move-result-object v0

    goto :goto_5

    :pswitch_58
    invoke-static {p0, p1, v5}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v1

    goto :goto_5

    :pswitch_5d
    invoke-static {p0, p1, v5}, Lcom/ksad/lottie/q/d;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;Z)Lcom/ksad/lottie/p/h/b;

    move-result-object v2

    goto :goto_5

    :pswitch_62
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_67
    new-instance v4, Lcom/ksad/lottie/model/content/g;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/ksad/lottie/model/content/g;-><init>(Ljava/lang/String;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/l;)V

    return-object v4

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
    .end packed-switch
.end method
