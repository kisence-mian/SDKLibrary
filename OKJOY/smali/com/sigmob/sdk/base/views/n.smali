.class public Lcom/sigmob/sdk/base/views/n;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final i:I = 0x1


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:[I

.field private h:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(I[IIIIII)V
    .registers 12

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/base/views/n;->c:I

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/n;->g:[I

    iput p3, p0, Lcom/sigmob/sdk/base/views/n;->d:I

    iput p5, p0, Lcom/sigmob/sdk/base/views/n;->b:I

    iput p6, p0, Lcom/sigmob/sdk/base/views/n;->e:I

    iput p7, p0, Lcom/sigmob/sdk/base/views/n;->f:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    int-to-float v1, p5

    int-to-float v2, p6

    int-to-float v3, p7

    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method synthetic constructor <init>(I[IIIIIILcom/sigmob/sdk/base/views/n$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/sigmob/sdk/base/views/n;-><init>(I[IIIIII)V

    return-void
.end method

.method public static a(Landroid/view/View;IIIIII)V
    .registers 10

    new-instance v0, Lcom/sigmob/sdk/base/views/o;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/o;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/o;->g(I)Lcom/sigmob/sdk/base/views/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/o;->b(I)Lcom/sigmob/sdk/base/views/o;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/base/views/o;->c(I)Lcom/sigmob/sdk/base/views/o;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/sigmob/sdk/base/views/o;->d(I)Lcom/sigmob/sdk/base/views/o;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/sigmob/sdk/base/views/o;->e(I)Lcom/sigmob/sdk/base/views/o;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/sigmob/sdk/base/views/o;->f(I)Lcom/sigmob/sdk/base/views/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/o;->a()Lcom/sigmob/sdk/base/views/n;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_30

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2f
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->g:[I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->g:[I

    array-length v0, v0

    if-ne v0, v10, :cond_39

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->g:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_19
    :goto_19
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/sigmob/sdk/base/views/n;->c:I

    if-ne v0, v10, :cond_5d

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/n;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/n;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/n;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/n;->d:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_38
    return-void

    :cond_39
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v9

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v9

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/n;->g:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_19

    :cond_5d
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v9

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v9

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_38
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/n;->b:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/sigmob/sdk/base/views/n;->e:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/n;->b:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/sigmob/sdk/base/views/n;->f:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/n;->b:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/sigmob/sdk/base/views/n;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sigmob/sdk/base/views/n;->b:I

    sub-int v4, p4, v4

    iget v5, p0, Lcom/sigmob/sdk/base/views/n;->f:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/n;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/n;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
