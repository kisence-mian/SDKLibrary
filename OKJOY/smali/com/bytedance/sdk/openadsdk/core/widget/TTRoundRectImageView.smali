.class public Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;
.super Landroid/widget/ImageView;
.source "TTRoundRectImageView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->b:I

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->c:I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->a:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->d:Landroid/graphics/Matrix;

    .line 41
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 89
    if-nez p1, :cond_5

    const/4 v0, 0x0

    .line 101
    :goto_4
    return-object v0

    .line 90
    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_10

    .line 91
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 95
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_37

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getWidth()I

    move-result v0

    .line 96
    :goto_1a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_3c

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getHeight()I

    move-result v1

    .line 97
    :goto_24
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 98
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    .line 101
    goto :goto_4

    .line 95
    :cond_37
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1a

    .line 96
    :cond_3c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_24
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_76

    .line 63
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_72

    .line 65
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2c

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_48

    .line 69
    :cond_2c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 69
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 73
    :cond_48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->c:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 86
    :goto_71
    return-void

    .line 81
    :cond_72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_71

    .line 84
    :cond_76
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_71
.end method

.method public setXRound(I)V
    .registers 2

    .prologue
    .line 44
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->b:I

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->postInvalidate()V

    .line 46
    return-void
.end method

.method public setYRound(I)V
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->c:I

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRoundRectImageView;->postInvalidate()V

    .line 51
    return-void
.end method
