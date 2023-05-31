.class public Lcom/tds/common/widgets/image/RoundNetImageView;
.super Lcom/tds/common/widgets/image/NetworkImageView;
.source "RoundNetImageView.java"


# instance fields
.field paint:Landroid/graphics/Paint;

.field radius:I

.field rectDest:Landroid/graphics/Rect;

.field rectSrc:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0x32

    iput v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->radius:I

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0x32

    iput v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->radius:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    .line 34
    iput p2, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->radius:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tds/common/widgets/image/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0x32

    iput v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->radius:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/tds/common/widgets/image/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/16 v0, 0x32

    iput v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->radius:I

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    .line 45
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    if-lez v0, :cond_d

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_15

    .line 84
    :cond_d
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    :goto_15
    nop

    .line 85
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_29

    .line 86
    :cond_21
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    :goto_29
    nop

    .line 87
    .local v1, "height":I
    nop

    .line 88
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_35

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_37

    :cond_35
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 87
    :goto_37
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 90
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    return-object v2
.end method

.method private getRoundBitmapByShader(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .registers 23
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "radius"    # I
    .param p5, "boarder"    # I

    .line 97
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-nez v0, :cond_e

    .line 98
    const/4 v5, 0x0

    return-object v5

    .line 100
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 101
    .local v5, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 102
    .local v6, "height":I
    int-to-float v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    int-to-float v9, v5

    div-float/2addr v7, v9

    .line 103
    .local v7, "widthScale":F
    int-to-float v9, v2

    mul-float/2addr v9, v8

    int-to-float v8, v6

    div-float/2addr v9, v8

    .line 105
    .local v9, "heightScale":F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .local v8, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v8, v7, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 108
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 110
    .local v10, "desBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 113
    .local v12, "paint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/BitmapShader;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v14, v0, v15, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object v13, v14

    .line 115
    .local v13, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v13, v8}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 116
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v4

    int-to-float v0, v4

    move/from16 v16, v5

    .end local v5    # "width":I
    .local v16, "width":I
    sub-int v5, v1, v4

    int-to-float v5, v5

    sub-int v1, v2, v4

    int-to-float v1, v1

    invoke-direct {v14, v15, v0, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v14

    .line 120
    .local v0, "rect":Landroid/graphics/RectF;
    int-to-float v1, v3

    int-to-float v5, v3

    invoke-virtual {v11, v0, v1, v5, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 122
    if-lez v4, :cond_7a

    .line 124
    new-instance v1, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 125
    .local v1, "boarderPaint":Landroid/graphics/Paint;
    const v5, -0xff0100

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    int-to-float v5, v4

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    int-to-float v5, v3

    int-to-float v14, v3

    invoke-virtual {v11, v0, v5, v14, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 130
    .end local v1    # "boarderPaint":Landroid/graphics/Paint;
    :cond_7a
    return-object v10
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 53
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4c

    .line 55
    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 56
    .local v7, "originBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->radius:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/tds/common/widgets/image/RoundNetImageView;->getRoundBitmapByShader(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    .local v1, "drawBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->rectSrc:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-nez v2, :cond_2f

    .line 58
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->rectSrc:Landroid/graphics/Rect;

    .line 60
    :cond_2f
    iget-object v2, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->rectDest:Landroid/graphics/Rect;

    if-nez v2, :cond_42

    .line 61
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->rectDest:Landroid/graphics/Rect;

    .line 63
    :cond_42
    iget-object v2, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->rectSrc:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->rectDest:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 64
    .end local v1    # "drawBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "originBitmap":Landroid/graphics/Bitmap;
    goto :goto_4f

    .line 65
    :cond_4c
    invoke-super {p0, p1}, Lcom/tds/common/widgets/image/NetworkImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    :goto_4f
    return-void
.end method

.method public setBitmapAlpha(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 70
    iget-object v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 71
    iget-object v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/RoundNetImageView;->postInvalidate()V

    .line 74
    return-void
.end method

.method public setRadius(I)V
    .registers 2
    .param p1, "radius"    # I

    .line 48
    iput p1, p0, Lcom/tds/common/widgets/image/RoundNetImageView;->radius:I

    .line 49
    return-void
.end method
