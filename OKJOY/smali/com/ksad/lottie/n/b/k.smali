.class public Lcom/ksad/lottie/n/b/k;
.super Lcom/ksad/lottie/n/b/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/f",
        "<",
        "Lcom/ksad/lottie/s/c;",
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
            "Lcom/ksad/lottie/s/c;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/s/a;F)Lcom/ksad/lottie/s/c;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Lcom/ksad/lottie/s/c;",
            ">;F)",
            "Lcom/ksad/lottie/s/c;"
        }
    .end annotation

    iget-object v3, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    if-eqz v3, :cond_44

    iget-object v4, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    if-eqz v4, :cond_44

    check-cast v3, Lcom/ksad/lottie/s/c;

    check-cast v4, Lcom/ksad/lottie/s/c;

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->e:Lcom/ksad/lottie/s/b;

    if-nez v0, :cond_2e

    new-instance v0, Lcom/ksad/lottie/s/c;

    invoke-virtual {v3}, Lcom/ksad/lottie/s/c;->a()F

    move-result v1

    invoke-virtual {v4}, Lcom/ksad/lottie/s/c;->a()F

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v1

    invoke-virtual {v3}, Lcom/ksad/lottie/s/c;->b()F

    move-result v2

    invoke-virtual {v4}, Lcom/ksad/lottie/s/c;->b()F

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ksad/lottie/s/c;-><init>(FF)V

    return-object v0

    :cond_2e
    iget v1, p1, Lcom/ksad/lottie/s/a;->e:F

    iget-object v2, p1, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->b()F

    move-result v6

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v7

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/ksad/lottie/s/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/k;->a(Lcom/ksad/lottie/s/a;F)Lcom/ksad/lottie/s/c;

    move-result-object v0

    return-object v0
.end method
