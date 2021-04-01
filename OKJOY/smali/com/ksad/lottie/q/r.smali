.class Lcom/ksad/lottie/q/r;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/ksad/lottie/d;",
            "F",
            "Lcom/ksad/lottie/q/j0",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<TT;>;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v3, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v1, v3, :cond_14

    const-string v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_17
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x6b

    if-eq v4, v5, :cond_30

    :cond_2a
    :goto_2a
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_17

    :cond_30
    const-string v4, "k"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v1, v2

    goto :goto_2a

    :cond_3a
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v1, v3, :cond_67

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v1, v3, :cond_58

    invoke-static {p0, p1, p2, p3, v2}, Lcom/ksad/lottie/q/q;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;Z)Lcom/ksad/lottie/s/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_17

    :cond_58
    :goto_58
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/ksad/lottie/q/q;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;Z)Lcom/ksad/lottie/s/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_67
    invoke-static {p0, p1, p2, p3, v2}, Lcom/ksad/lottie/q/q;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;FLcom/ksad/lottie/q/j0;Z)Lcom/ksad/lottie/s/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_6f
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    invoke-static {v0}, Lcom/ksad/lottie/q/r;->a(Ljava/util/List;)V

    goto :goto_13
.end method

.method public static a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ksad/lottie/s/a",
            "<*>;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_22

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/s/a;

    iget v1, v1, Lcom/ksad/lottie/s/a;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    move v1, v2

    goto :goto_6

    :cond_22
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/a;

    iget-object v1, v0, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_2f

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2f
    return-void
.end method
