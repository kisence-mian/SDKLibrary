.class Lcom/ksad/lottie/q/g0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/k;
    .registers 12

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    move v1, v2

    move-object v3, v0

    :goto_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0xd68

    if-eq v8, v9, :cond_40

    const/16 v9, 0xdbf

    if-eq v8, v9, :cond_36

    const v9, 0x197df

    if-eq v8, v9, :cond_2c

    :cond_22
    :goto_22
    if-eqz v4, :cond_54

    if-eq v4, v5, :cond_4f

    if-eq v4, v6, :cond_4a

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    :cond_2c
    const-string v8, "ind"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    move v4, v5

    goto :goto_22

    :cond_36
    const-string v8, "nm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    move v4, v2

    goto :goto_22

    :cond_40
    const-string v8, "ks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    move v4, v6

    goto :goto_22

    :cond_4a
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->g(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/h;

    move-result-object v0

    goto :goto_6

    :cond_4f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_6

    :cond_54
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_59
    new-instance v2, Lcom/ksad/lottie/model/content/k;

    invoke-direct {v2, v3, v1, v0}, Lcom/ksad/lottie/model/content/k;-><init>(Ljava/lang/String;ILcom/ksad/lottie/p/h/h;)V

    return-object v2
.end method
