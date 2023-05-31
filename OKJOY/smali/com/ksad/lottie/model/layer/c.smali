.class public Lcom/ksad/lottie/model/layer/c;
.super Lcom/ksad/lottie/model/layer/a;
.source ""


# instance fields
.field private final w:Landroid/graphics/Paint;

.field private final x:Landroid/graphics/Rect;

.field private final y:Landroid/graphics/Rect;

.field private z:Lcom/ksad/lottie/n/b/a;
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
.method constructor <init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;-><init>(Lcom/ksad/lottie/f;Lcom/ksad/lottie/model/layer/Layer;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/c;->w:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/c;->x:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/c;->y:Landroid/graphics/Rect;

    return-void
.end method

.method private e()Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->o:Lcom/ksad/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/a;->n:Lcom/ksad/lottie/f;

    invoke-virtual {v1, v0}, Lcom/ksad/lottie/f;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .registers 8

    invoke-super {p0, p1, p2}, Lcom/ksad/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/ksad/lottie/model/layer/c;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2b
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/ksad/lottie/model/layer/c;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/ksad/lottie/r/f;->a()F

    move-result v2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/c;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/c;->z:Lcom/ksad/lottie/n/b/a;

    if-eqz v0, :cond_26

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/c;->w:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/c;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/c;->y:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v0, v5, v5, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/c;->x:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/c;->y:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/ksad/lottie/model/layer/c;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d
.end method
