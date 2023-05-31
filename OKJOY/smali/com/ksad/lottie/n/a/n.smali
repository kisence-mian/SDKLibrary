.class public Lcom/ksad/lottie/n/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/m;
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/n/a/j;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Lcom/ksad/lottie/f;

.field private final c:Lcom/ksad/lottie/model/content/PolystarShape$Type;

.field private final d:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
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

.field private final g:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ksad/lottie/n/a/s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Lcom/ksad/lottie/model/content/PolystarShape;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/n;->b:Lcom/ksad/lottie/f;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->c()Ljava/lang/String;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->i()Lcom/ksad/lottie/model/content/PolystarShape$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->c:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->f()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->g()Lcom/ksad/lottie/p/h/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksad/lottie/p/h/m;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->h()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->d()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->h:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->e()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->j:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->c:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/ksad/lottie/model/content/PolystarShape$Type;->Star:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_b5

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->a()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->g:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p3}, Lcom/ksad/lottie/model/content/PolystarShape;->b()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->i:Lcom/ksad/lottie/n/b/a;

    :goto_62
    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->h:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->c:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/ksad/lottie/model/content/PolystarShape$Type;->Star:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_8b

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->g:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_8b
    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->h:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->c:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    sget-object v1, Lcom/ksad/lottie/model/content/PolystarShape$Type;->Star:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    if-ne v0, v1, :cond_b4

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->g:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_b4
    return-void

    :cond_b5
    iput-object v2, p0, Lcom/ksad/lottie/n/a/n;->g:Lcom/ksad/lottie/n/b/a;

    iput-object v2, p0, Lcom/ksad/lottie/n/a/n;->i:Lcom/ksad/lottie/n/b/a;

    goto :goto_62
.end method

.method private c()V
    .registers 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->f:Lcom/ksad/lottie/n/b/a;

    if-nez v2, :cond_100

    const-wide/16 v2, 0x0

    :goto_1c
    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    int-to-double v12, v4

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v12

    double-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v14, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->h:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v16

    double-to-float v7, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v16

    double-to-float v8, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v0, v3

    move-wide/from16 v18, v0

    add-double v4, v10, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    const/4 v2, 0x0

    move v9, v2

    move-wide v10, v4

    move v3, v7

    move v4, v8

    :goto_74
    int-to-double v6, v9

    cmpg-double v2, v6, v12

    if-gez v2, :cond_115

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v16

    double-to-float v7, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v16

    move-wide/from16 v0, v20

    double-to-float v8, v0

    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_10d

    float-to-double v0, v4

    move-wide/from16 v20, v0

    float-to-double v0, v3

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v2, v0

    float-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v2, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v5, v0

    float-to-double v0, v8

    move-wide/from16 v20, v0

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v6, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v6, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v21, v15, v14

    const/high16 v22, 0x3e800000    # 0.25f

    mul-float v21, v21, v22

    mul-float v22, v21, v2

    mul-float v5, v5, v21

    mul-float v6, v6, v21

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    sub-float v3, v3, v22

    sub-float/2addr v4, v5

    add-float v5, v7, v6

    add-float v6, v8, v20

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_f6
    add-double v4, v10, v18

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide v10, v4

    move v3, v7

    move v4, v8

    goto/16 :goto_74

    :cond_100
    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    goto/16 :goto_1c

    :cond_10d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_f6

    :cond_115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private d()V
    .registers 34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->f:Lcom/ksad/lottie/n/b/a;

    if-nez v2, :cond_121

    const-wide/16 v2, 0x0

    :goto_16
    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double v6, v6, v16

    double-to-float v0, v6

    move/from16 v22, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v15, v22, v5

    float-to-int v5, v4

    int-to-float v5, v5

    sub-float v23, v4, v5

    const/4 v4, 0x0

    cmpl-float v24, v23, v4

    if-eqz v24, :cond_20e

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v23

    mul-float/2addr v4, v15

    float-to-double v4, v4

    add-double/2addr v2, v4

    move-wide v4, v2

    :goto_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->h:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->g:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ksad/lottie/n/a/n;->i:Lcom/ksad/lottie/n/b/a;

    if-eqz v3, :cond_20b

    invoke-virtual {v3}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    move v9, v2

    :goto_73
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->j:Lcom/ksad/lottie/n/b/a;

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v13, v2, v3

    :cond_88
    const/4 v6, 0x0

    if-eqz v24, :cond_12e

    sub-float v2, v11, v12

    mul-float v2, v2, v23

    add-float v6, v12, v2

    float-to-double v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v2

    move-wide/from16 v0, v18

    double-to-float v8, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v2, v2, v18

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v2, v22, v23

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v4

    move v10, v6

    move v4, v7

    move v5, v8

    :goto_b3
    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v26, v16, v18

    const/4 v6, 0x0

    move-wide/from16 v16, v2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v5

    :goto_c7
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v28, v0

    cmpg-double v2, v28, v26

    if-gez v2, :cond_1e7

    if-eqz v19, :cond_14d

    move v2, v11

    :goto_d3
    const/4 v3, 0x0

    cmpl-float v4, v10, v3

    if-eqz v4, :cond_14f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v6, v26, v6

    cmpl-double v3, v28, v6

    if-nez v3, :cond_14f

    mul-float v3, v22, v23

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move v14, v3

    :goto_e6
    if-eqz v4, :cond_f1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v26, v4

    cmpl-double v3, v28, v4

    if-nez v3, :cond_f1

    move v2, v10

    :cond_f1
    float-to-double v2, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v7, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v8, v2

    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-nez v2, :cond_151

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_151

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_10f
    float-to-double v2, v14

    add-double v2, v2, v16

    xor-int/lit8 v5, v19, 0x1

    add-int/lit8 v4, v18, 0x1

    move-wide/from16 v16, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v8

    move/from16 v21, v7

    goto :goto_c7

    :cond_121
    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    goto/16 :goto_16

    :cond_12e
    float-to-double v2, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v2

    move-wide/from16 v0, v18

    double-to-float v8, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v2, v2, v18

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v2, v15

    add-double/2addr v2, v4

    move v10, v6

    move v4, v7

    move v5, v8

    goto/16 :goto_b3

    :cond_14d
    move v2, v12

    goto :goto_d3

    :cond_14f
    move v14, v15

    goto :goto_e6

    :cond_151
    move/from16 v0, v20

    float-to-double v2, v0

    move/from16 v0, v21

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v5, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v25, v0

    float-to-double v2, v8

    float-to-double v0, v7

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v30, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v2, v2, v30

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v31, v0

    if-eqz v19, :cond_1cc

    move v4, v9

    :goto_195
    if-eqz v19, :cond_1ce

    move v6, v13

    :goto_198
    if-eqz v19, :cond_1d0

    move v3, v12

    :goto_19b
    if-eqz v19, :cond_1d2

    move v2, v11

    :goto_19e
    mul-float/2addr v3, v4

    const v4, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v3, v4

    mul-float/2addr v5, v3

    mul-float v4, v3, v25

    mul-float/2addr v2, v6

    const v3, 0x3ef4e26d    # 0.47829f

    mul-float/2addr v2, v3

    mul-float v3, v2, v30

    mul-float v2, v2, v31

    if-eqz v24, :cond_204

    if-nez v18, :cond_1d4

    mul-float v5, v5, v23

    mul-float v4, v4, v23

    move v6, v2

    move/from16 v32, v3

    move v3, v5

    move/from16 v5, v32

    :goto_1bd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    sub-float v3, v21, v3

    sub-float v4, v20, v4

    add-float/2addr v5, v7

    add-float/2addr v6, v8

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_10f

    :cond_1cc
    move v4, v13

    goto :goto_195

    :cond_1ce
    move v6, v9

    goto :goto_198

    :cond_1d0
    move v3, v11

    goto :goto_19b

    :cond_1d2
    move v2, v12

    goto :goto_19e

    :cond_1d4
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v30, v26, v30

    cmpl-double v6, v28, v30

    if-nez v6, :cond_204

    mul-float v3, v3, v23

    mul-float v2, v2, v23

    move v6, v2

    move/from16 v32, v3

    move v3, v5

    move/from16 v5, v32

    goto :goto_1bd

    :cond_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-void

    :cond_204
    move v6, v2

    move/from16 v32, v3

    move v3, v5

    move/from16 v5, v32

    goto :goto_1bd

    :cond_20b
    move v9, v2

    goto/16 :goto_73

    :cond_20e
    move-wide v4, v2

    goto/16 :goto_42
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/lottie/n/a/n;->l:Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->b:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/ksad/lottie/n/a/n;->e()V

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

    iput-object v0, p0, Lcom/ksad/lottie/n/a/n;->k:Lcom/ksad/lottie/n/a/s;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->k:Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/a/s;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_27
    return-void
.end method

.method public b()Landroid/graphics/Path;
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/ksad/lottie/n/a/n;->l:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget-object v0, Lcom/ksad/lottie/n/a/n$a;->a:[I

    iget-object v1, p0, Lcom/ksad/lottie/n/a/n;->c:Lcom/ksad/lottie/model/content/PolystarShape$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    :goto_1c
    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/n;->k:Lcom/ksad/lottie/n/a/s;

    invoke-static {v0, v1}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Path;Lcom/ksad/lottie/n/a/s;)V

    iput-boolean v2, p0, Lcom/ksad/lottie/n/a/n;->l:Z

    iget-object v0, p0, Lcom/ksad/lottie/n/a/n;->a:Landroid/graphics/Path;

    goto :goto_7

    :cond_2d
    invoke-direct {p0}, Lcom/ksad/lottie/n/a/n;->c()V

    goto :goto_1c

    :cond_31
    invoke-direct {p0}, Lcom/ksad/lottie/n/a/n;->d()V

    goto :goto_1c
.end method
