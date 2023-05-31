.class public Lcom/ksad/lottie/q/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/e;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_2a

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_10
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/w;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/n/b/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1e
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    invoke-static {v0}, Lcom/ksad/lottie/q/r;->a(Ljava/util/List;)V

    :goto_24
    new-instance v1, Lcom/ksad/lottie/p/h/e;

    invoke-direct {v1, v0}, Lcom/ksad/lottie/p/h/e;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_2a
    new-instance v1, Lcom/ksad/lottie/s/a;

    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v2

    invoke-static {p0, v2}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ksad/lottie/s/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method static b(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/m;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Lcom/ksad/lottie/d;",
            ")",
            "Lcom/ksad/lottie/p/h/m",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v8, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v6, v8, :cond_74

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    const/4 v6, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/16 v10, 0x6b

    if-eq v9, v10, :cond_46

    const/16 v10, 0x78

    if-eq v9, v10, :cond_3c

    const/16 v10, 0x79

    if-eq v9, v10, :cond_32

    :cond_28
    :goto_28
    if-eqz v6, :cond_6f

    if-eq v6, v2, :cond_62

    if-eq v6, v7, :cond_50

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_b

    :cond_32
    const-string v9, "y"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    move v6, v7

    goto :goto_28

    :cond_3c
    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    move v6, v2

    goto :goto_28

    :cond_46
    const-string v9, "k"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    move v6, v1

    goto :goto_28

    :cond_50
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v8, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v6, v8, :cond_5d

    :cond_58
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    move v0, v2

    goto :goto_b

    :cond_5d
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v3

    goto :goto_b

    :cond_62
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v8, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v6, v8, :cond_58

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->c(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/b;

    move-result-object v4

    goto :goto_b

    :cond_6f
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/a;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/e;

    move-result-object v5

    goto :goto_b

    :cond_74
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v0, :cond_7e

    const-string v0, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    :cond_7e
    if-eqz v5, :cond_81

    :goto_80
    return-object v5

    :cond_81
    new-instance v5, Lcom/ksad/lottie/p/h/i;

    invoke-direct {v5, v4, v3}, Lcom/ksad/lottie/p/h/i;-><init>(Lcom/ksad/lottie/p/h/b;Lcom/ksad/lottie/p/h/b;)V

    goto :goto_80
.end method
