.class public Lcom/sigmob/sdk/base/views/c;
.super Lcom/sigmob/sdk/base/views/b;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/c;-><init>(F)V

    return-void
.end method

.method private constructor <init>(F)V
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/b;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/c;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/c;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/c;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/c;->a:Landroid/graphics/Paint;

    sget-object v1, Lcom/sigmob/sdk/base/views/j;->f:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v0, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    add-float v1, v8, v0

    int-to-float v0, v7

    iget v2, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    sub-float v2, v0, v2

    int-to-float v0, v6

    iget v3, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    add-float v4, v8, v0

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/c;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    add-float v1, v8, v0

    iget v0, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    add-float v2, v8, v0

    int-to-float v0, v6

    iget v3, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    sub-float v3, v0, v3

    int-to-float v0, v7

    iget v4, p0, Lcom/sigmob/sdk/base/views/c;->b:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/c;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic getOpacity()I
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/b;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setAlpha(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/views/b;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/views/b;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
