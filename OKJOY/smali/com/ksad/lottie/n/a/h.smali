.class public Lcom/ksad/lottie/n/a/h;
.super Lcom/ksad/lottie/n/a/a;
.source ""


# instance fields
.field private final n:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/graphics/RectF;

.field private final q:Lcom/ksad/lottie/model/content/GradientType;

.field private final r:I

.field private final s:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Lcom/ksad/lottie/model/content/c;",
            "Lcom/ksad/lottie/model/content/c;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/e;)V
    .registers 14

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->a()Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->f()Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->h()F

    move-result v5

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->j()Lcom/ksad/lottie/p/h/d;

    move-result-object v6

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->l()Lcom/ksad/lottie/p/h/b;

    move-result-object v7

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->g()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->b()Lcom/ksad/lottie/p/h/b;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/ksad/lottie/n/a/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Ljava/util/List;Lcom/ksad/lottie/p/h/b;)V

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/h;->n:Landroid/support/v4/util/LongSparseArray;

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/h;->o:Landroid/support/v4/util/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->i()Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->e()Lcom/ksad/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/h;->q:Lcom/ksad/lottie/model/content/GradientType;

    invoke-virtual {p1}, Lcom/ksad/lottie/f;->e()Lcom/ksad/lottie/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->c()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ksad/lottie/n/a/h;->r:I

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->d()Lcom/ksad/lottie/p/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/c;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/h;->s:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->s:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->s:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->k()Lcom/ksad/lottie/p/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/f;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/h;->t:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->t:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->t:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/e;->c()Lcom/ksad/lottie/p/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/f;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/h;->u:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->u:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->u:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    return-void
.end method

.method private b()I
    .registers 5

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->t:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v0

    iget v1, p0, Lcom/ksad/lottie/n/a/h;->r:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->u:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v0

    iget v2, p0, Lcom/ksad/lottie/n/a/h;->r:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->s:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v0

    iget v3, p0, Lcom/ksad/lottie/n/a/h;->r:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/16 v0, 0x11

    if-eqz v1, :cond_30

    mul-int/lit16 v0, v1, 0x20f

    :cond_30
    if-eqz v2, :cond_35

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    :cond_35
    if-eqz v3, :cond_3a

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v3

    :cond_3a
    return v0
.end method

.method private c()Landroid/graphics/LinearGradient;
    .registers 12

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/h;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/h;->n:Landroid/support/v4/util/LongSparseArray;

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->t:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/h;->u:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/ksad/lottie/n/a/h;->s:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksad/lottie/model/content/c;

    invoke-virtual {v2}, Lcom/ksad/lottie/model/content/c;->a()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/ksad/lottie/model/content/c;->b()[F

    move-result-object v6

    iget-object v2, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v10

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v10

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    float-to-int v3, v0

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v10

    add-float/2addr v0, v4

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v4

    float-to-int v4, v0

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v10

    add-float/2addr v0, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v2

    int-to-float v2, v3

    int-to-float v3, v4

    int-to-float v4, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/h;->n:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v8, v9, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_11
.end method

.method private d()Landroid/graphics/RadialGradient;
    .registers 13

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/h;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/h;->o:Landroid/support/v4/util/LongSparseArray;

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->t:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/h;->u:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/ksad/lottie/n/a/h;->s:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksad/lottie/model/content/c;

    invoke-virtual {v2}, Lcom/ksad/lottie/model/content/c;->a()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/ksad/lottie/model/content/c;->b()[F

    move-result-object v5

    iget-object v2, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v10

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v10

    add-float/2addr v3, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    float-to-int v6, v0

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v10

    add-float/2addr v0, v3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v10

    add-float/2addr v3, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v2

    int-to-double v10, v0

    sub-int v0, v1, v6

    int-to-double v0, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v3, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, v2

    int-to-float v2, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/h;->o:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v8, v9, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_11
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 6

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->p:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Lcom/ksad/lottie/n/a/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/h;->q:Lcom/ksad/lottie/model/content/GradientType;

    sget-object v1, Lcom/ksad/lottie/model/content/GradientType;->Linear:Lcom/ksad/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/h;->c()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_14
    invoke-super {p0, p1, p2, p3}, Lcom/ksad/lottie/n/a/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/h;->d()Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_14
.end method
