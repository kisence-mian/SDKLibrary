.class Lcom/ksad/lottie/q/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;)Lcom/ksad/lottie/p/c;
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v2, v1

    move-object v3, v1

    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x6f471c96

    if-eq v6, v7, :cond_4f

    const v7, -0x53f6d326

    if-eq v6, v7, :cond_45

    const v7, -0x4d298315

    if-eq v6, v7, :cond_3b

    const v7, 0x5c24c11

    if-eq v6, v7, :cond_31

    :cond_2a
    :goto_2a
    packed-switch v4, :pswitch_data_78

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    :cond_31
    const-string v6, "fName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v4, 0x1

    goto :goto_2a

    :cond_3b
    const-string v6, "fStyle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v4, 0x2

    goto :goto_2a

    :cond_45
    const-string v6, "ascent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v4, 0x3

    goto :goto_2a

    :cond_4f
    const-string v6, "fFamily"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v4, 0x0

    goto :goto_2a

    :pswitch_59
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_7

    :pswitch_5f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :pswitch_64
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :pswitch_69
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_6e
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance v4, Lcom/ksad/lottie/p/c;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/ksad/lottie/p/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object v4

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_59
    .end packed-switch
.end method
