.class public Lcom/ksad/lottie/n/b/c;
.super Lcom/ksad/lottie/n/b/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/f",
        "<",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Float;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    iget-object v1, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_3e

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->e:Lcom/ksad/lottie/s/b;

    if-nez v0, :cond_24

    move-object v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0, p2}, Lcom/ksad/lottie/r/e;->c(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_24
    iget v1, p1, Lcom/ksad/lottie/s/a;->e:F

    iget-object v2, p1, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    iget-object v4, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->b()F

    move-result v6

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v7

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/ksad/lottie/s/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/c;->a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
