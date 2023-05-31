.class Lcom/ksad/lottie/q/p;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;)I
    .registers 7
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const-wide v4, 0x406fe00000000000L    # 255.0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    :goto_1a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    :cond_24
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .registers 6

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v1, v2

    :goto_d
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_19

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_d

    :cond_19
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    new-instance v2, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method static b(Landroid/util/JsonReader;)F
    .registers 5

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ksad/lottie/q/p$a;->a:[I

    invoke-virtual {v0}, Landroid/util/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_41

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_1a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1a

    :cond_24
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    :goto_27
    return v0

    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value for token of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_27
.end method

.method private static b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .registers 6

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v1, v2

    :goto_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    :cond_14
    new-instance v2, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private static c(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .registers 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move v1, v0

    :goto_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2f

    const/16 v6, 0x79

    if-eq v5, v6, :cond_25

    :cond_1d
    :goto_1d
    if-eqz v2, :cond_3e

    if-eq v2, v3, :cond_39

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6

    :cond_25
    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v2, v3

    goto :goto_1d

    :cond_2f
    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v2, 0x0

    goto :goto_1d

    :cond_39
    invoke-static {p0}, Lcom/ksad/lottie/q/p;->b(Landroid/util/JsonReader;)F

    move-result v0

    goto :goto_6

    :cond_3e
    invoke-static {p0}, Lcom/ksad/lottie/q/p;->b(Landroid/util/JsonReader;)F

    move-result v1

    goto :goto_6

    :cond_43
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance v2, Landroid/graphics/PointF;

    mul-float/2addr v1, p1

    mul-float/2addr v0, p1

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method static d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;
    .registers 5

    sget-object v0, Lcom/ksad/lottie/q/p$a;->a:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/p;->c(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown point starts with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/p;->a(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_19

    :cond_3c
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/p;->b(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_19
.end method

.method static e(Landroid/util/JsonReader;F)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "F)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/p;->d(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_8

    :cond_1e
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method
