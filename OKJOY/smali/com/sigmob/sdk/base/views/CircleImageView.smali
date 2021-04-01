.class public Lcom/sigmob/sdk/base/views/CircleImageView;
.super Landroid/widget/ImageView;


# instance fields
.field protected a:F

.field protected b:Z

.field private c:Landroid/graphics/BitmapShader;

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Matrix;

.field private h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/base/views/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/views/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->b:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->g:Landroid/graphics/Matrix;

    return-void
.end method

.method private a()Landroid/graphics/BitmapShader;
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->a()Landroid/graphics/BitmapShader;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->c:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->c:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->c:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->b:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_2a
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->a:F

    iget v2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->a:F

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->e:F

    iget v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    iget v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->e:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->h:Landroid/graphics/RectF;

    return-void
.end method
