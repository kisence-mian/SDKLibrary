.class public Lcom/sigmob/sdk/base/views/e;
.super Lcom/sigmob/sdk/base/views/a;


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

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/a;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/e;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v1, Lcom/sigmob/sdk/base/views/c$a;->a:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/e;->b:Landroid/graphics/Paint;

    sget v2, Lcom/sigmob/sdk/base/views/c$a;->b:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Lcom/sigmob/sdk/base/views/c$a;->c:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lcom/sigmob/sdk/common/f/d;->b(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->h:I

    return-void
.end method

.method private a()V
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/views/e;->c:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/e;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget v0, p0, Lcom/sigmob/sdk/base/views/e;->f:I

    if-lt p1, v0, :cond_9

    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->e:I

    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->f:I

    goto :goto_28

    :cond_9
    if-eqz p1, :cond_28

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Progress not monotonically increasing: last = %d, current = %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/e;->a()V

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->invalidateSelf()V

    return-void
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/sigmob/sdk/base/views/e;->c:I

    iput p2, p0, Lcom/sigmob/sdk/base/views/e;->d:I

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/sigmob/sdk/base/views/e;->g:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/e;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/e;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/e;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float v5, v1, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/e;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/e;->d:I

    if-lez v0, :cond_60

    iget v1, p0, Lcom/sigmob/sdk/base/views/e;->c:I

    if-ge v0, v1, :cond_60

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/e;->g:F

    mul-float v3, v0, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget v0, p0, Lcom/sigmob/sdk/base/views/e;->h:I

    int-to-float v0, v0

    add-float v5, v3, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/sigmob/sdk/base/views/e;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_60
    return-void
.end method

.method public bridge synthetic getOpacity()I
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/a;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setAlpha(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/views/a;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/views/a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
