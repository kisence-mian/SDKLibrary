.class public Lcom/ksad/lottie/n/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/d;
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/n/a/j;


# instance fields
.field private final a:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/RectF;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/ksad/lottie/model/content/GradientType;

.field private final i:Lcom/ksad/lottie/n/b/a;
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

.field private final j:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/ksad/lottie/n/b/a;
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

.field private final l:Lcom/ksad/lottie/n/b/a;
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

.field private m:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/ksad/lottie/f;

.field private final o:I


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->a:Landroid/support/v4/util/LongSparseArray;

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->b:Landroid/support/v4/util/LongSparseArray;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->f:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->g:Ljava/util/List;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/d;->e()Ljava/lang/String;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/g;->n:Lcom/ksad/lottie/f;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/d;->d()Lcom/ksad/lottie/model/content/GradientType;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->h:Lcom/ksad/lottie/model/content/GradientType;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/d;->b()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p1}, Lcom/ksad/lottie/f;->e()Lcom/ksad/lottie/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->c()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ksad/lottie/n/a/g;->o:I

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/d;->c()Lcom/ksad/lottie/p/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/c;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->i:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/d;->f()Lcom/ksad/lottie/p/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/d;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->j:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/d;->g()Lcom/ksad/lottie/p/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/f;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->k:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->k:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->k:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/d;->a()Lcom/ksad/lottie/p/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/f;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/g;->l:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->l:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->l:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    return-void
.end method

.method private b()I
    .registers 5

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->k:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v0

    iget v1, p0, Lcom/ksad/lottie/n/a/g;->o:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->l:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v0

    iget v2, p0, Lcom/ksad/lottie/n/a/g;->o:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->c()F

    move-result v0

    iget v3, p0, Lcom/ksad/lottie/n/a/g;->o:I

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
    .registers 11

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/g;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->a:Landroid/support/v4/util/LongSparseArray;

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->k:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->l:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/c;->a()[I

    move-result-object v5

    invoke-virtual {v0}, Lcom/ksad/lottie/model/content/c;->b()[F

    move-result-object v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->a:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v8, v9, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_f
.end method

.method private d()Landroid/graphics/RadialGradient;
    .registers 13

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/g;->b()I

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->b:Landroid/support/v4/util/LongSparseArray;

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_10

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->k:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->l:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/model/content/c;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/content/c;->a()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/ksad/lottie/model/content/c;->b()[F

    move-result-object v5

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v6, v0

    sub-float v0, v3, v2

    float-to-double v10, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v3, v6

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v8, v9, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_f
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->n:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    :goto_e
    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    iget-object v3, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->h:Lcom/ksad/lottie/model/content/GradientType;

    sget-object v1, Lcom/ksad/lottie/model/content/GradientType;->Linear:Lcom/ksad/lottie/model/content/GradientType;

    if-ne v0, v1, :cond_88

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/g;->c()Landroid/graphics/LinearGradient;

    move-result-object v0

    :goto_3c
    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->m:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5a
    int-to-float v0, p3

    div-float v1, v0, v4

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->e:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-static {v0, v2, v3}, Lcom/ksad/lottie/r/e;->a(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    return-void

    :cond_88
    invoke-direct {p0}, Lcom/ksad/lottie/n/a/g;->d()Landroid/graphics/RadialGradient;

    move-result-object v0

    goto :goto_3c
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 8

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    :goto_9
    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v3, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_26
    iget-object v0, p0, Lcom/ksad/lottie/n/a/g;->d:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v2, v0, Lcom/ksad/lottie/n/a/m;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/ksad/lottie/n/a/g;->g:Ljava/util/List;

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1d
    return-void
.end method
