.class public final Lcom/ksad/lottie/r/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Landroid/graphics/PathMeasure;

.field private static final b:Landroid/graphics/Path;

.field private static final c:Landroid/graphics/Path;

.field private static final d:[F

.field private static final e:F

.field private static f:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lcom/ksad/lottie/r/f;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/ksad/lottie/r/f;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/ksad/lottie/r/f;->c:Landroid/graphics/Path;

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/ksad/lottie/r/f;->d:[F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/ksad/lottie/r/f;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/ksad/lottie/r/f;->f:F

    return-void
.end method

.method public static a()F
    .registers 2

    sget v0, Lcom/ksad/lottie/r/f;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/ksad/lottie/r/f;->f:F

    :cond_14
    sget v0, Lcom/ksad/lottie/r/f;->f:F

    return v0
.end method

.method public static a(Landroid/graphics/Matrix;)F
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/ksad/lottie/r/f;->d:[F

    aput v1, v0, v2

    aput v1, v0, v3

    sget v1, Lcom/ksad/lottie/r/f;->e:F

    aput v1, v0, v4

    aput v1, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object v0, Lcom/ksad/lottie/r/f;->d:[F

    aget v1, v0, v4

    aget v2, v0, v2

    sub-float/2addr v1, v2

    aget v2, v0, v5

    aget v0, v0, v3

    sub-float v0, v2, v0

    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(FFFF)I
    .registers 7

    const/4 v2, 0x0

    const/16 v0, 0x11

    cmpl-float v1, p0, v2

    if-eqz v1, :cond_c

    const/16 v0, 0x20f

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    :cond_c
    cmpl-float v1, p1, v2

    if-eqz v1, :cond_15

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    :cond_15
    cmpl-float v1, p2, v2

    if-eqz v1, :cond_1e

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    :cond_1e
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_27

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    :cond_27
    return v0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .registers 11

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_39

    if-eqz p3, :cond_39

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_21

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_39

    :cond_21
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_38
    return-object v0

    :cond_39
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_38
.end method

.method public static a(Landroid/graphics/Path;FFF)V
    .registers 12

    const/4 v7, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ksad/lottie/r/f;->a:Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    sget-object v0, Lcom/ksad/lottie/r/f;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    cmpl-float v0, p1, v3

    if-nez v0, :cond_23

    cmpl-float v0, p2, v6

    if-nez v0, :cond_23

    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    :goto_22
    return-void

    :cond_23
    cmpg-float v0, v2, v3

    if-ltz v0, :cond_38

    sub-float v0, p2, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3e

    :cond_38
    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto :goto_22

    :cond_3e
    mul-float v0, v2, p1

    mul-float v1, v2, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v4, p3, v2

    add-float v0, v3, v4

    add-float/2addr v1, v4

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_61

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_61

    invoke-static {v0, v2}, Lcom/ksad/lottie/r/e;->a(FF)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v2}, Lcom/ksad/lottie/r/e;->a(FF)I

    move-result v1

    int-to-float v1, v1

    :cond_61
    cmpg-float v3, v0, v6

    if-gez v3, :cond_6a

    invoke-static {v0, v2}, Lcom/ksad/lottie/r/e;->a(FF)I

    move-result v0

    int-to-float v0, v0

    :cond_6a
    cmpg-float v3, v1, v6

    if-gez v3, :cond_73

    invoke-static {v1, v2}, Lcom/ksad/lottie/r/e;->a(FF)I

    move-result v1

    int-to-float v1, v1

    :cond_73
    cmpl-float v3, v0, v1

    if-nez v3, :cond_80

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto :goto_22

    :cond_80
    if-ltz v3, :cond_83

    sub-float/2addr v0, v2

    :cond_83
    sget-object v3, Lcom/ksad/lottie/r/f;->b:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    sget-object v3, Lcom/ksad/lottie/r/f;->a:Landroid/graphics/PathMeasure;

    sget-object v4, Lcom/ksad/lottie/r/f;->b:Landroid/graphics/Path;

    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v3, v1, v2

    if-lez v3, :cond_b3

    sget-object v0, Lcom/ksad/lottie/r/f;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget-object v0, Lcom/ksad/lottie/r/f;->a:Landroid/graphics/PathMeasure;

    rem-float/2addr v1, v2

    sget-object v2, Lcom/ksad/lottie/r/f;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v6, v1, v2, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    sget-object v0, Lcom/ksad/lottie/r/f;->b:Landroid/graphics/Path;

    sget-object v1, Lcom/ksad/lottie/r/f;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_a7
    :goto_a7
    sget-object v0, Lcom/ksad/lottie/r/f;->b:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    const-string v0, "applyTrimPathIfNeeded"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto/16 :goto_22

    :cond_b3
    cmpg-float v1, v0, v6

    if-gez v1, :cond_a7

    sget-object v1, Lcom/ksad/lottie/r/f;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    sget-object v1, Lcom/ksad/lottie/r/f;->a:Landroid/graphics/PathMeasure;

    add-float/2addr v0, v2

    sget-object v3, Lcom/ksad/lottie/r/f;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2, v3, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    sget-object v0, Lcom/ksad/lottie/r/f;->b:Landroid/graphics/Path;

    sget-object v1, Lcom/ksad/lottie/r/f;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_a7
.end method

.method public static a(Landroid/graphics/Path;Lcom/ksad/lottie/n/a/s;)V
    .registers 6
    .param p1    # Lcom/ksad/lottie/n/a/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/ksad/lottie/n/a/s;->e()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v1, v0, v2

    invoke-virtual {p1}, Lcom/ksad/lottie/n/a/s;->c()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v2, v0, v2

    invoke-virtual {p1}, Lcom/ksad/lottie/n/a/s;->d()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v0, v3

    invoke-static {p0, v1, v2, v0}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Path;FFF)V

    goto :goto_4
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public static a(IIIIII)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p0, p3, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-gt p0, p3, :cond_5

    if-ge p1, p4, :cond_c

    move v0, v1

    goto :goto_5

    :cond_c
    if-gt p1, p4, :cond_5

    if-ge p2, p5, :cond_5

    move v0, v1

    goto :goto_5
.end method
