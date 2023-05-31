.class public Lcom/ksad/lottie/r/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(DDD)D
    .registers 8
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static a(FFF)F
    .registers 4

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static a(FF)I
    .registers 4

    float-to-int v0, p0

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcom/ksad/lottie/r/e;->b(II)I

    move-result v0

    return v0
.end method

.method private static a(II)I
    .registers 5

    div-int v1, p0, p1

    xor-int v0, p0, p1

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    rem-int v2, p0, p1

    if-nez v0, :cond_12

    if-eqz v2, :cond_12

    add-int/lit8 v0, v1, -0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    move v0, v1

    goto :goto_f
.end method

.method public static a(IIF)I
    .registers 5
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(III)I
    .registers 4

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 6

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static a(Lcom/ksad/lottie/model/content/h;Landroid/graphics/Path;)V
    .registers 12

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lcom/ksad/lottie/model/content/h;->b()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v8, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x0

    move v7, v0

    :goto_19
    invoke-virtual {p0}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_68

    invoke-virtual {p0}, Lcom/ksad/lottie/model/content/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/p/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/p/a;->a()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ksad/lottie/p/a;->b()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ksad/lottie/p/a;->c()Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v2, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {v4, v9}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget v0, v9, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4c
    iget v0, v9, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_19

    :cond_57
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v9, Landroid/graphics/PointF;->x:F

    iget v6, v9, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_4c

    :cond_68
    invoke-virtual {p0}, Lcom/ksad/lottie/model/content/h;->c()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_71
    return-void
.end method

.method private static b(II)I
    .registers 3

    invoke-static {p0, p1}, Lcom/ksad/lottie/r/e;->a(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method public static b(FFF)Z
    .registers 4

    cmpl-float v0, p0, p1

    if-ltz v0, :cond_a

    cmpg-float v0, p0, p2

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static c(FFF)F
    .registers 4
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method
