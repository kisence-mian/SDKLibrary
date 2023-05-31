.class public Lcom/ksad/lottie/n/b/b;
.super Lcom/ksad/lottie/n/b/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/f",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Integer;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_41

    iget-object v1, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_41

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->e:Lcom/ksad/lottie/s/b;

    if-nez v0, :cond_23

    invoke-static {p2, v3, v4}, Lcom/ksad/lottie/r/b;->a(FII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_23
    iget v1, p1, Lcom/ksad/lottie/s/a;->e:F

    iget-object v2, p1, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->b()F

    move-result v6

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v7

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/ksad/lottie/s/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/b;->a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
