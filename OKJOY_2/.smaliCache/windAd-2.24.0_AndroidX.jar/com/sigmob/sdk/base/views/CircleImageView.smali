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
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->b:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->g:Landroid/graphics/Matrix;

    return-void
.end method

.method private a()Landroid/graphics/BitmapShader;
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-object v1

    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->a()Landroid/graphics/BitmapShader;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->c:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2d

    :cond_c
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->b:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    div-float v3, v0, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2d

    :cond_24
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->a:F

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->e:F

    iget p2, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->d:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/CircleImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CircleImageView;->h:Landroid/graphics/RectF;

    return-void
.end method
