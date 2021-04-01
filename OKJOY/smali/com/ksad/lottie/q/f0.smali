.class Lcom/ksad/lottie/q/f0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/j;
    .registers 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xd2b

    if-eq v5, v6, :cond_30

    const/16 v6, 0xdbf

    if-eq v5, v6, :cond_26

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_51

    if-eq v1, v2, :cond_3a

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_7

    :cond_26
    const-string v5, "nm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v1, 0x0

    goto :goto_1e

    :cond_30
    const-string v5, "it"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v1, v2

    goto :goto_1e

    :cond_3a
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/g;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/b;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_4d
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_7

    :cond_51
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_56
    new-instance v1, Lcom/ksad/lottie/model/content/j;

    invoke-direct {v1, v0, v3}, Lcom/ksad/lottie/model/content/j;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
