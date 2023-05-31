.class public abstract Lcom/ksad/lottie/n/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/b/a$a;
.implements Lcom/ksad/lottie/n/a/j;
.implements Lcom/ksad/lottie/n/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/n/a/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PathMeasure;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/RectF;

.field private final e:Lcom/ksad/lottie/f;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:[F

.field final h:Landroid/graphics/Paint;

.field private final i:Lcom/ksad/lottie/n/b/a;
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/b/a",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Lcom/ksad/lottie/n/b/a;
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


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/ksad/lottie/p/h/d;Lcom/ksad/lottie/p/h/b;Ljava/util/List;Lcom/ksad/lottie/p/h/b;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/f;",
            "Lcom/ksad/lottie/model/layer/a;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lcom/ksad/lottie/p/h/d;",
            "Lcom/ksad/lottie/p/h/b;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/p/h/b;",
            ">;",
            "Lcom/ksad/lottie/p/h/b;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->a:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->d:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->f:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/a;->e:Lcom/ksad/lottie/f;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lcom/ksad/lottie/p/h/d;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p7}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->i:Lcom/ksad/lottie/n/b/a;

    if-nez p9, :cond_85

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->l:Lcom/ksad/lottie/n/b/a;

    :goto_58
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->g:[F

    move v1, v2

    :goto_6c
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8c

    iget-object v3, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {p8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/p/h/b;

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6c

    :cond_85
    invoke-virtual {p9}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/n/a/a;->l:Lcom/ksad/lottie/n/b/a;

    goto :goto_58

    :cond_8c
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    move v1, v2

    :goto_97
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ae

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_97

    :cond_ae
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->l:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_b5

    invoke-virtual {p2, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    :cond_b5
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :goto_bf
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d3

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    :cond_d3
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->l:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_da

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_da
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/ksad/lottie/n/a/a$b;Landroid/graphics/Matrix;)V
    .registers 16

    const/4 v11, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->b(Lcom/ksad/lottie/n/a/a$b;)Lcom/ksad/lottie/n/a/s;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_27
    if-ltz v1, :cond_40

    iget-object v4, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_27

    :cond_40
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->a:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    move v1, v0

    :goto_4e
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_4e

    :cond_5f
    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->b(Lcom/ksad/lottie/n/a/a$b;)Lcom/ksad/lottie/n/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/s;->d()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v4, 0x43b40000    # 360.0f

    div-float v4, v0, v4

    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->b(Lcom/ksad/lottie/n/a/a$b;)Lcom/ksad/lottie/n/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/s;->e()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float v7, v0, v4

    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->b(Lcom/ksad/lottie/n/a/a$b;)Lcom/ksad/lottie/n/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/s;->c()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    add-float v8, v0, v4

    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v6, v2

    :goto_ae
    if-ltz v5, :cond_140

    iget-object v4, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->a:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    cmpl-float v0, v8, v1

    if-lez v0, :cond_106

    sub-float v4, v8, v1

    add-float v0, v6, v9

    cmpg-float v0, v4, v0

    if-gez v0, :cond_106

    cmpg-float v0, v6, v4

    if-gez v0, :cond_106

    cmpl-float v0, v7, v1

    if-lez v0, :cond_104

    sub-float v0, v7, v1

    div-float/2addr v0, v9

    :goto_ec
    div-float/2addr v4, v9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v10, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    invoke-static {v10, v0, v4, v2}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Path;FFF)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_fd
    :goto_fd
    add-float v4, v6, v9

    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v6, v4

    goto :goto_ae

    :cond_104
    move v0, v2

    goto :goto_ec

    :cond_106
    add-float v10, v6, v9

    cmpg-float v0, v10, v7

    if-ltz v0, :cond_fd

    cmpl-float v0, v6, v8

    if-gtz v0, :cond_fd

    cmpg-float v0, v10, v8

    if-gtz v0, :cond_120

    cmpg-float v0, v7, v6

    if-gez v0, :cond_120

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_fd

    :cond_120
    cmpg-float v0, v7, v6

    if-gez v0, :cond_137

    move v4, v2

    :goto_125
    cmpl-float v0, v8, v10

    if-lez v0, :cond_13c

    move v0, v3

    :goto_12a
    iget-object v10, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    invoke-static {v10, v4, v0, v2}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Path;FFF)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->c:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_fd

    :cond_137
    sub-float v0, v7, v6

    div-float/2addr v0, v9

    move v4, v0

    goto :goto_125

    :cond_13c
    sub-float v0, v8, v6

    div-float/2addr v0, v9

    goto :goto_12a

    :cond_140
    const-string v0, "StrokeContent#applyTrimPath"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto/16 :goto_16
.end method

.method private a(Landroid/graphics/Matrix;)V
    .registers 8

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    :goto_17
    return-void

    :cond_18
    invoke-static {p1}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Matrix;)F

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_60

    iget-object v3, p0, Lcom/ksad/lottie/n/a/a;->g:[F

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->g:[F

    aget v3, v0, v1

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4a

    aput v5, v0, v1

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->g:[F

    aget v3, v0, v1

    mul-float/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    :cond_55
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->g:[F

    aget v3, v0, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4a

    aput v4, v0, v1

    goto :goto_4a

    :cond_60
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->l:Lcom/ksad/lottie/n/b/a;

    if-nez v0, :cond_77

    const/4 v0, 0x0

    :goto_65
    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget-object v3, p0, Lcom/ksad/lottie/n/a/a;->g:[F

    invoke-direct {v2, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const-string v0, "StrokeContent#applyDashPattern"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto :goto_17

    :cond_77
    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_65
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->e:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->invalidateSelf()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 9

    const/4 v1, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    int-to-float v0, p3

    div-float v2, v0, v3

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->j:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v2, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-static {v0, v1, v3}, Lcom/ksad/lottie/r/e;->a(III)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p2}, Lcom/ksad/lottie/r/f;->a(Landroid/graphics/Matrix;)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_50

    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    :goto_4f
    return-void

    :cond_50
    invoke-direct {p0, p2}, Lcom/ksad/lottie/n/a/a;->a(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->m:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_62

    iget-object v2, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_62
    move v2, v1

    :goto_63
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c5

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/a$b;

    invoke-static {v0}, Lcom/ksad/lottie/n/a/a$b;->b(Lcom/ksad/lottie/n/a/a$b;)Lcom/ksad/lottie/n/a/s;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-direct {p0, p1, v0, p2}, Lcom/ksad/lottie/n/a/a;->a(Landroid/graphics/Canvas;Lcom/ksad/lottie/n/a/a$b;Landroid/graphics/Matrix;)V

    :goto_7c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_63

    :cond_80
    const-string v1, "StrokeContent#buildPath"

    invoke-static {v1}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-static {v0}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_95
    if-ltz v3, :cond_ae

    iget-object v4, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v1}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v4, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_95

    :cond_ae
    const-string v0, "StrokeContent#buildPath"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    const-string v0, "StrokeContent#drawPath"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v0, "StrokeContent#drawPath"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto :goto_7c

    :cond_c5
    const-string v0, "StrokeContent#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    goto :goto_4f
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 10

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v0, "StrokeContent#getBounds"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v2, v3

    :goto_e
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_44

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/a$b;

    move v4, v3

    :goto_1f
    invoke-static {v0}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_40

    iget-object v5, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    invoke-static {v0}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v1}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v5, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1f

    :cond_40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    :cond_44
    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->i:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/ksad/lottie/n/a/a;->d:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v6

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v6

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v0, "StrokeContent#getBounds"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 11
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

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move-object v2, v5

    :goto_9
    if-ltz v1, :cond_25

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v3, v0, Lcom/ksad/lottie/n/a/s;

    if-eqz v3, :cond_23

    check-cast v0, Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/s;->f()Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v3

    sget-object v4, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    if-ne v3, v4, :cond_23

    :goto_1f
    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    goto :goto_9

    :cond_23
    move-object v0, v2

    goto :goto_1f

    :cond_25
    if-eqz v2, :cond_2a

    invoke-virtual {v2, p0}, Lcom/ksad/lottie/n/a/s;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :cond_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v3, v5

    :goto_32
    if-ltz v4, :cond_73

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v1, v0, Lcom/ksad/lottie/n/a/s;

    if-eqz v1, :cond_5e

    move-object v1, v0

    check-cast v1, Lcom/ksad/lottie/n/a/s;

    invoke-virtual {v1}, Lcom/ksad/lottie/n/a/s;->f()Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v6

    sget-object v7, Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/ksad/lottie/model/content/ShapeTrimPath$Type;

    if-ne v6, v7, :cond_5e

    if-eqz v3, :cond_50

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    new-instance v3, Lcom/ksad/lottie/n/a/a$b;

    invoke-direct {v3, v1, v5}, Lcom/ksad/lottie/n/a/a$b;-><init>(Lcom/ksad/lottie/n/a/s;Lcom/ksad/lottie/n/a/a$a;)V

    invoke-virtual {v1, p0}, Lcom/ksad/lottie/n/a/s;->a(Lcom/ksad/lottie/n/b/a$a;)V

    move-object v1, v3

    :goto_59
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move-object v3, v1

    goto :goto_32

    :cond_5e
    instance-of v1, v0, Lcom/ksad/lottie/n/a/m;

    if-eqz v1, :cond_7d

    if-nez v3, :cond_7b

    new-instance v1, Lcom/ksad/lottie/n/a/a$b;

    invoke-direct {v1, v2, v5}, Lcom/ksad/lottie/n/a/a$b;-><init>(Lcom/ksad/lottie/n/a/s;Lcom/ksad/lottie/n/a/a$a;)V

    :goto_69
    invoke-static {v1}, Lcom/ksad/lottie/n/a/a$b;->a(Lcom/ksad/lottie/n/a/a$b;)Ljava/util/List;

    move-result-object v3

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_73
    if-eqz v3, :cond_7a

    iget-object v0, p0, Lcom/ksad/lottie/n/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7a
    return-void

    :cond_7b
    move-object v1, v3

    goto :goto_69

    :cond_7d
    move-object v1, v3

    goto :goto_59
.end method
