.class public Lcom/ksad/lottie/n/a/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/n/a/j;
.implements Lcom/ksad/lottie/n/a/m;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/RectF;

.field private final c:Lcom/ksad/lottie/f;

.field private final d:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ksad/lottie/n/a/s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/f;->b()Ljava/lang/String;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/o;->c:Lcom/ksad/lottie/f;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/f;->c()Lcom/ksad/lottie/p/h/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksad/lottie/p/h/m;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/f;->d()Lcom/ksad/lottie/p/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/f;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/f;->a()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/o;->f:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    return-void
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/n/a/o;->h:Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->c:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/o;->c()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 7
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
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v2, v0, Lcom/ksad/lottie/n/a/s;

    if-eqz v2, :cond_23

    check-cast v0, Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/s;->f()Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v2

    sget-object v3, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Simultaneously:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    if-ne v2, v3, :cond_23

    iput-object v0, p0, Lcom/ksad/lottie/n/a/o;->g:Lcom/ksad/lottie/n/a/s;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->g:Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/a/s;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    return-void
.end method

.method public b()Landroid/graphics/Path;
    .registers 16

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/high16 v13, 0x42b40000    # 90.0f

    const/high16 v12, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/ksad/lottie/n/a/o;->h:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    div-float v3, v2, v12

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v4, v0, v12

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->f:Lcom/ksad/lottie/n/b/a;

    if-nez v0, :cond_fc

    move v0, v1

    :goto_27
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v5, v0, v2

    if-lez v5, :cond_108

    :goto_2f
    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    add-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    sub-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v5, v2, v1

    if-lez v5, :cond_6e

    iget-object v6, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float v8, v7, v3

    mul-float v9, v2, v12

    sub-float/2addr v8, v9

    iget v10, v0, Landroid/graphics/PointF;->y:F

    add-float v11, v10, v4

    sub-float v9, v11, v9

    add-float/2addr v7, v3

    add-float/2addr v10, v4

    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v6, v7, v1, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6e
    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    add-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v5, :cond_96

    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float v7, v6, v3

    iget v8, v0, Landroid/graphics/PointF;->y:F

    add-float v9, v8, v4

    mul-float v10, v2, v12

    sub-float/2addr v9, v10

    sub-float/2addr v6, v3

    add-float/2addr v6, v10

    add-float/2addr v8, v4

    invoke-virtual {v1, v7, v9, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    invoke-virtual {v1, v6, v13, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_96
    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    add-float/2addr v7, v2

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v5, :cond_c0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float v7, v6, v3

    iget v8, v0, Landroid/graphics/PointF;->y:F

    sub-float v9, v8, v4

    sub-float/2addr v6, v3

    mul-float v10, v2, v12

    add-float/2addr v6, v10

    sub-float/2addr v8, v4

    add-float/2addr v8, v10

    invoke-virtual {v1, v7, v9, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v1, v6, v7, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_c0
    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    sub-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v5, :cond_e9

    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float v6, v5, v3

    mul-float/2addr v2, v12

    sub-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v7, v0, v4

    add-float/2addr v3, v5

    sub-float/2addr v0, v4

    add-float/2addr v0, v2

    invoke-virtual {v1, v6, v7, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->b:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_e9
    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/o;->g:Lcom/ksad/lottie/n/a/s;

    invoke-static {v0, v1}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Path;Lcom/ksad/lottie/n/a/s;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/lottie/n/a/o;->h:Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/o;->a:Landroid/graphics/Path;

    goto/16 :goto_c

    :cond_fc
    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_27

    :cond_108
    move v2, v0

    goto/16 :goto_2f
.end method
