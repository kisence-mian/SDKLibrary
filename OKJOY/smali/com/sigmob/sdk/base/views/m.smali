.class public Lcom/sigmob/sdk/base/views/m;
.super Lcom/sigmob/sdk/base/views/b;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/b;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/m;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->a:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->a:Landroid/graphics/Paint;

    sget-object v1, Lcom/sigmob/sdk/base/views/k;->e:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/m;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->b:Landroid/graphics/Paint;

    sget v1, Lcom/sigmob/sdk/base/views/k;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->b:Landroid/graphics/Paint;

    sget-object v1, Lcom/sigmob/sdk/base/views/k;->h:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/m;->h:I

    return-void
.end method

.method private d()V
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->c:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/m;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/m;->f:I

    return-void
.end method

.method public a(I)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->f:I

    if-lt p1, v0, :cond_c

    iput p1, p0, Lcom/sigmob/sdk/base/views/m;->e:I

    iput p1, p0, Lcom/sigmob/sdk/base/views/m;->f:I

    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->invalidateSelf()V

    return-void

    :cond_c
    if-eqz p1, :cond_8

    const-string v0, "Progress not monotonically increasing: last = %d, current = %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sigmob/sdk/base/views/m;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/m;->d()V

    goto :goto_8
.end method

.method public a(II)V
    .registers 5

    iput p1, p0, Lcom/sigmob/sdk/base/views/m;->c:I

    iput p2, p0, Lcom/sigmob/sdk/base/views/m;->d:I

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/m;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sigmob/sdk/base/views/m;->g:F

    return-void
.end method

.method public b()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->g:F

    return v0
.end method

.method public c()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->e:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/m;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/m;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/m;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->d:I

    if-lez v0, :cond_60

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->d:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/m;->c:I

    if-ge v0, v1, :cond_60

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/m;->g:F

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/sigmob/sdk/base/views/m;->h:I

    int-to-float v0, v0

    add-float v3, v1, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/m;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/m;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_60
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
