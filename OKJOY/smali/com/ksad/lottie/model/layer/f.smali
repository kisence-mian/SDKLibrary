.class public Lcom/ksad/lottie/model/layer/f;
.super Lcom/ksad/lottie/model/layer/a;
.source ""


# instance fields
.field private final A:Lcom/ksad/lottie/model/layer/Layer;

.field private B:Lcom/ksad/lottie/n/b/a;
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

.field private final w:Landroid/graphics/RectF;

.field private final x:Landroid/graphics/Paint;

.field private final y:[F

.field private final z:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/f;->w:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/f;->x:Landroid/graphics/Paint;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    iput-object p2, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->x:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->x:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->x:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/ksad/lottie/model/layer/Layer;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 7

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->w:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->o()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/ksad/lottie/model/layer/Layer;->n()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->w:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->w:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 12

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->m()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    int-to-float v1, p3

    div-float/2addr v1, v4

    int-to-float v0, v0

    div-float v2, v0, v4

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->u:Lcom/ksad/lottie/n/b/o;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/o;->c()Lcom/ksad/lottie/n/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v1, v0

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->B:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_44

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/f;->x:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_44
    if-lez v1, :cond_12

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    aput v3, v0, v5

    aput v3, v0, v6

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->o()I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->o()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->n()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->A:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/layer/Layer;->n()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    aget v2, v1, v5

    aget v1, v1, v6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    aget v2, v1, v7

    const/4 v3, 0x3

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    const/4 v2, 0x4

    aget v2, v1, v2

    const/4 v3, 0x5

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    const/4 v2, 0x6

    aget v2, v1, v2

    const/4 v3, 0x7

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->y:[F

    aget v2, v1, v5

    aget v1, v1, v6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/f;->z:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/f;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_12
.end method
