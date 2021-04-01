.class public Lcom/ksad/lottie/n/b/j;
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ksad/lottie/n/b/f;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/j;->g:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/PointF;
    .registers 11
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

    iget-object v3, p1, Lcom/ksad/lottie/s/a;->b:Ljava/lang/Object;

    if-eqz v3, :cond_3c

    iget-object v4, p1, Lcom/ksad/lottie/s/a;->c:Ljava/lang/Object;

    if-eqz v4, :cond_3c

    check-cast v3, Landroid/graphics/PointF;

    check-cast v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/ksad/lottie/n/b/a;->e:Lcom/ksad/lottie/s/b;

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/ksad/lottie/n/b/j;->g:Landroid/graphics/PointF;

    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v2, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, v3, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/j;->g:Landroid/graphics/PointF;

    return-object v0

    :cond_26
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

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/ksad/lottie/s/a;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/n/b/j;->a(Lcom/ksad/lottie/s/a;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
