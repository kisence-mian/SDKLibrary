.class public Lcom/ksad/lottie/n/b/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Lcom/ksad/lottie/n/b/a;
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
            "<",
            "Lcom/ksad/lottie/s/c;",
            "Lcom/ksad/lottie/s/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ksad/lottie/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/n/b/a",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/ksad/lottie/n/b/a;
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


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/p/h/l;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->b()Lcom/ksad/lottie/p/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/e;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->b:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->e()Lcom/ksad/lottie/p/h/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/ksad/lottie/p/h/m;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->g()Lcom/ksad/lottie/p/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/g;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->f()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->d()Lcom/ksad/lottie/p/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/d;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->h()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->h()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->g:Lcom/ksad/lottie/n/b/a;

    :goto_4d
    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->c()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Lcom/ksad/lottie/p/h/l;->c()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/b/o;->h:Lcom/ksad/lottie/n/b/a;

    :goto_5d
    return-void

    :cond_5e
    iput-object v1, p0, Lcom/ksad/lottie/n/b/o;->g:Lcom/ksad/lottie/n/b/a;

    goto :goto_4d

    :cond_61
    iput-object v1, p0, Lcom/ksad/lottie/n/b/o;->h:Lcom/ksad/lottie/n/b/a;

    goto :goto_5d
.end method


# virtual methods
.method public a(F)Landroid/graphics/Matrix;
    .registers 12

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/ksad/lottie/n/b/o;->b:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/ksad/lottie/n/b/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v2}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksad/lottie/s/c;

    iget-object v3, p0, Lcom/ksad/lottie/n/b/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v3}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/ksad/lottie/s/c;->a()F

    move-result v4

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Lcom/ksad/lottie/s/c;->b()F

    move-result v2

    float-to-double v8, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v2, v6

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    mul-float v2, v3, p1

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public a()Lcom/ksad/lottie/n/b/a;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->h:Lcom/ksad/lottie/n/b/a;

    return-object v0
.end method

.method public a(Lcom/ksad/lottie/model/layer/a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->b:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->g:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_20

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_20
    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->h:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_27

    invoke-virtual {p1, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_27
    return-void
.end method

.method public a(Lcom/ksad/lottie/n/b/a$a;)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->b:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->g:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_20
    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->h:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_27
    return-void
.end method

.method public b()Landroid/graphics/Matrix;
    .registers 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1c

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_25

    :cond_1c
    iget-object v1, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_25
    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v1, v0, v3

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3a
    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/s/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/s/c;->a()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_52

    invoke-virtual {v0}, Lcom/ksad/lottie/s/c;->b()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5f

    :cond_52
    iget-object v1, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/ksad/lottie/s/c;->a()F

    move-result v2

    invoke-virtual {v0}, Lcom/ksad/lottie/s/c;->b()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_5f
    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->b:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_73

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7e

    :cond_73
    iget-object v1, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_7e
    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public b(F)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->b:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->c:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->d:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->e:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->f:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->g:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    :cond_20
    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->h:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/n/b/a;->a(F)V

    :cond_27
    return-void
.end method

.method public c()Lcom/ksad/lottie/n/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->f:Lcom/ksad/lottie/n/b/a;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/n/b/a;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/n/b/o;->g:Lcom/ksad/lottie/n/b/a;

    return-object v0
.end method
