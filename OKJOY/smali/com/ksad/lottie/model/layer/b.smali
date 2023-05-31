.class public Lcom/ksad/lottie/model/layer/b;
.super Lcom/ksad/lottie/model/layer/a;
.source ""


# instance fields
.field private w:Lcom/ksad/lottie/n/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/a;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Landroid/graphics/RectF;

.field private final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;Ljava/util/List;Lcom/ksad/lottie/d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksad/lottie/f;",
            "Lcom/ksad/lottie/model/layer/Layer;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;",
            "Lcom/ksad/lottie/d;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/b;->z:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->s()Lcom/ksad/lottie/p/h/b;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/ksad/lottie/p/h/b;->a()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/b;->w:Lcom/ksad/lottie/n/b/a;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->w:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/n/b/a;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->w:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0, p0}, Lcom/ksad/lottie/n/b/a;->a(Lcom/ksad/lottie/n/b/a$a;)V

    :goto_30
    new-instance v6, Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p4}, Lcom/ksad/lottie/d;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move-object v3, v1

    :goto_45
    if-ltz v5, :cond_87

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/Layer;

    invoke-static {v0, p1, p4}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/model/layer/Layer;Lcom/ksad/lottie/f;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/layer/a;

    move-result-object v2

    if-nez v2, :cond_5c

    :cond_53
    move-object v0, v3

    :goto_54
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move-object v3, v0

    goto :goto_45

    :cond_59
    iput-object v1, p0, Lcom/ksad/lottie/model/layer/b;->w:Lcom/ksad/lottie/n/b/a;

    goto :goto_30

    :cond_5c
    invoke-virtual {v2}, Lcom/ksad/lottie/model/layer/a;->b()Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ksad/lottie/model/layer/Layer;->b()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v3, :cond_6e

    invoke-virtual {v3, v2}, Lcom/ksad/lottie/model/layer/a;->a(Lcom/ksad/lottie/model/layer/a;)V

    move-object v0, v1

    goto :goto_54

    :cond_6e
    iget-object v7, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    invoke-interface {v7, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v7, Lcom/ksad/lottie/model/layer/b$a;->a:[I

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->f()Lcom/ksad/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_85

    const/4 v7, 0x2

    if-ne v0, v7, :cond_53

    :cond_85
    move-object v0, v2

    goto :goto_54

    :cond_87
    move v2, v4

    :goto_88
    invoke-virtual {v6}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_b2

    invoke-virtual {v6, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/a;

    if-nez v0, :cond_9e

    :cond_9a
    :goto_9a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_88

    :cond_9e
    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/a;->b()Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->h()J

    move-result-wide v4

    invoke-virtual {v6, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/model/layer/a;

    if-eqz v1, :cond_9a

    invoke-virtual {v0, v1}, Lcom/ksad/lottie/model/layer/a;->b(Lcom/ksad/lottie/model/layer/a;)V

    goto :goto_9a

    :cond_b2
    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 6
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/ksad/lottie/model/layer/a;->a(F)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->w:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->n:Lcom/ksad/lottie/f;

    invoke-virtual {v0}, Lcom/ksad/lottie/f;->e()Lcom/ksad/lottie/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/d;->c()F

    move-result v1

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->w:Lcom/ksad/lottie/n/b/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    long-to-float v0, v2

    div-float p1, v0, v1

    :cond_24
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->t()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->t()F

    move-result v0

    div-float/2addr p1, v0

    :cond_36
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->p()F

    move-result v0

    sub-float v2, p1, v0

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_47
    if-ltz v1, :cond_58

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/a;

    invoke-virtual {v0, v2}, Lcom/ksad/lottie/model/layer/a;->a(F)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_47

    :cond_58
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 9

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_5e

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/a;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v3}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_2e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    :cond_32
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/ksad/lottie/model/layer/b;->y:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2e

    :cond_5e
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8

    const/4 v3, 0x0

    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->j()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/ksad/lottie/model/layer/Layer;->i()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->z:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2a
    if-ltz v1, :cond_4c

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/b;->z:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->z:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    :cond_3b
    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/b;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_48
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2a

    :cond_4c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string v0, "CompositionLayer#draw"

    invoke-static {v0}, Lcom/ksad/lottie/c;->c(Ljava/lang/String;)F

    return-void
.end method
