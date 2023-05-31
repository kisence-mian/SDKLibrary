.class public Lcom/ksad/lottie/n/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/m;
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/n/a/j;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Lcom/ksad/lottie/f;

.field private final c:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

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

.field private final e:Lcom/ksad/lottie/model/content/a;

.field private f:Lcom/ksad/lottie/n/a/s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/a;->a()Ljava/lang/String;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/e;->b:Lcom/ksad/lottie/f;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/a;->c()Lcom/ksad/lottie/p/h/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/f;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/e;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/a;->b()Lcom/ksad/lottie/p/h/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksad/lottie/p/h/m;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/e;->d:Lcom/ksad/lottie/n/b/a;

    iput-object p3, p0, Lcom/ksad/lottie/n/a/e;->e:Lcom/ksad/lottie/model/content/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/e;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/e;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/e;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/e;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    return-void
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/n/a/e;->g:Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/e;->b:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/e;->c()V

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

    iput-object v0, p0, Lcom/ksad/lottie/n/a/e;->f:Lcom/ksad/lottie/n/a/s;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/e;->f:Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/a/s;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    return-void
.end method

.method public b()Landroid/graphics/Path;
    .registers 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ksad/lottie/n/a/e;->g:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    :goto_a
    return-object v1

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v1, v2

    const v1, 0x3f0d6239    # 0.55228f

    mul-float v18, v14, v1

    const v1, 0x3f0d6239    # 0.55228f

    mul-float v8, v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->e:Lcom/ksad/lottie/model/content/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/content/a;->d()Z

    move-result v1

    if-eqz v1, :cond_ba

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    neg-float v3, v10

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/4 v2, 0x0

    sub-float v2, v2, v18

    neg-float v4, v14

    const/4 v5, 0x0

    sub-float/2addr v5, v8

    const/4 v7, 0x0

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    add-float/2addr v8, v1

    const/4 v11, 0x0

    move v7, v4

    move v9, v2

    move v12, v10

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    add-float v12, v18, v1

    const/16 v17, 0x0

    move v13, v10

    move v15, v8

    move/from16 v16, v14

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/16 v18, 0x0

    move v15, v5

    move/from16 v16, v12

    move/from16 v17, v3

    move/from16 v19, v3

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_88
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/e;->f:Lcom/ksad/lottie/n/a/s;

    invoke-static {v1, v2}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Path;Lcom/ksad/lottie/n/a/s;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/ksad/lottie/n/a/e;->g:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    goto/16 :goto_a

    :cond_ba
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    neg-float v13, v10

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    add-float v12, v18, v1

    const/4 v1, 0x0

    sub-float v15, v1, v8

    const/16 v17, 0x0

    move/from16 v16, v14

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    add-float v6, v8, v1

    const/4 v9, 0x0

    move v5, v14

    move v7, v12

    move v8, v10

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    sub-float v3, v1, v18

    neg-float v5, v14

    const/4 v8, 0x0

    move v4, v10

    move v7, v5

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ksad/lottie/n/a/e;->a:Landroid/graphics/Path;

    const/4 v9, 0x0

    move v6, v15

    move v7, v3

    move v8, v13

    move v10, v13

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_88
.end method
