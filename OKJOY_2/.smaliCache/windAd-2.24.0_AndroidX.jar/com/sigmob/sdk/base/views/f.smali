.class public Lcom/sigmob/sdk/base/views/f;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/f$a;
    }
.end annotation


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
    .registers 8

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/base/views/f;->c:I

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/f;->g:[I

    iput p3, p0, Lcom/sigmob/sdk/base/views/f;->d:I

    iput p5, p0, Lcom/sigmob/sdk/base/views/f;->b:I

    iput p6, p0, Lcom/sigmob/sdk/base/views/f;->e:I

    iput p7, p0, Lcom/sigmob/sdk/base/views/f;->f:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/f;->a:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p2, p5

    int-to-float p3, p6

    int-to-float p5, p7

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method synthetic constructor <init>(I[IIIIIILcom/sigmob/sdk/base/views/f$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/sigmob/sdk/base/views/f;-><init>(I[IIIIII)V

    return-void
.end method

.method public static a(Landroid/view/View;IIIIII)V
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/base/views/f$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/f$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/f$a;->f(I)Lcom/sigmob/sdk/base/views/f$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/f$a;->a(I)Lcom/sigmob/sdk/base/views/f$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/base/views/f$a;->b(I)Lcom/sigmob/sdk/base/views/f$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/sigmob/sdk/base/views/f$a;->c(I)Lcom/sigmob/sdk/base/views/f$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/sigmob/sdk/base/views/f$a;->d(I)Lcom/sigmob/sdk/base/views/f$a;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/sigmob/sdk/base/views/f$a;->e(I)Lcom/sigmob/sdk/base/views/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/f$a;->a()Lcom/sigmob/sdk/base/views/f;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p2, p3, :cond_30

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_33

    :cond_30
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/f;->g:[I

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_3c

    array-length v4, v1

    if-ne v4, v2, :cond_16

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3c

    :cond_16
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v6, v4, v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v8, v4, v3

    iget-object v9, p0, Lcom/sigmob/sdk/base/views/f;->g:[I

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3c
    :goto_3c
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/f;->c:I

    if-ne v1, v2, :cond_58

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sigmob/sdk/base/views/f;->d:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/f;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcom/sigmob/sdk/base/views/f;->d:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_9a

    :cond_58
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v3

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/f;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_9a
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/f;->b:I

    add-int/2addr p1, v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/f;->e:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    add-int/2addr p2, v1

    iget v3, p0, Lcom/sigmob/sdk/base/views/f;->f:I

    sub-int/2addr p2, v3

    int-to-float p2, p2

    sub-int/2addr p3, v1

    sub-int/2addr p3, v2

    int-to-float p3, p3

    sub-int/2addr p4, v1

    sub-int/2addr p4, v3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/f;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/f;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
