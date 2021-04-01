.class public Lcom/ksad/lottie/n/b/i;
.super Lcom/ksad/lottie/n/b/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksad/lottie/n/b/f",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Landroid/graphics/PointF;

.field private final h:[F

.field private i:Lcom/ksad/lottie/n/b/h;

.field private j:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/f;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/i;->g:Landroid/graphics/PointF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ksad/lottie/n/b/i;->h:[F

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/PointF;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, Lcom/ksad/lottie/n/b/h;

    invoke-virtual {v4}, Lcom/ksad/lottie/n/b/h;->d()Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_10

    iget-object v0, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->e:Lcom/ksad/lottie/s/b;

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/ksad/lottie/n/b/i;->i:Lcom/ksad/lottie/n/b/h;

    if-eq v0, v4, :cond_21

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/i;->j:Landroid/graphics/PathMeasure;

    iput-object v4, p0, Lcom/ksad/lottie/n/b/i;->i:Lcom/ksad/lottie/n/b/h;

    :cond_21
    iget-object v0, p0, Lcom/ksad/lottie/n/b/i;->j:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/ksad/lottie/n/b/i;->h:[F

    invoke-virtual {v0, v1, v2, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v0, p0, Lcom/ksad/lottie/n/b/i;->g:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ksad/lottie/n/b/i;->h:[F

    aget v2, v1, v3

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/i;->g:Landroid/graphics/PointF;

    goto :goto_f

    :cond_3c
    iget v1, v4, Lcom/ksad/lottie/s/a;->e:F

    iget-object v2, v4, Lcom/ksad/lottie/s/a;->f:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v4, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    iget-object v4, v4, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->b()F

    move-result v5

    invoke-virtual {p0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v7

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/ksad/lottie/s/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    throw v8
.end method

.method public bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/i;->a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
