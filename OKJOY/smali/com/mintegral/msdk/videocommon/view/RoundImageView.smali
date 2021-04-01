.class public Lcom/mintegral/msdk/videocommon/view/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:Landroid/graphics/Matrix;

.field private f:Landroid/graphics/BitmapShader;

.field private g:I

.field private h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->e:Landroid/graphics/Matrix;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->c:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    const/high16 v0, 0x40a00000    # 5.0f

    .line 67
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 65
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->b:I

    .line 68
    iput v2, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    .line 70
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    .line 108
    :goto_a
    return-void

    .line 1168
    :cond_b
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1169
    if-eqz v0, :cond_50

    .line 1202
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_62

    .line 1203
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1204
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1175
    :goto_1b
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->f:Landroid/graphics/BitmapShader;

    .line 1177
    iget v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    if-nez v1, :cond_7d

    .line 1179
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1180
    iget v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1188
    :goto_3d
    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1190
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->f:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1192
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->f:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    :cond_50
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    if-ne v0, v7, :cond_9f

    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1206
    :cond_62
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1207
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1208
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1209
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1210
    invoke-virtual {v0, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1211
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 1212
    goto :goto_1b

    .line 1182
    :cond_7d
    iget v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    if-ne v1, v7, :cond_af

    .line 1184
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 1185
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 1184
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3d

    .line 105
    :cond_9f
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->d:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_af
    move v0, v2

    goto :goto_3d
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 87
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    if-nez v0, :cond_22

    .line 88
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->g:I

    .line 89
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->g:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->d:I

    .line 90
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->g:I

    iget v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->setMeasuredDimension(II)V

    .line 92
    :cond_22
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .prologue
    .line 133
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_23

    move-object v0, p1

    .line 134
    check-cast v0, Landroid/os/Bundle;

    .line 135
    check-cast p1, Landroid/os/Bundle;

    const-string v1, "state_instance"

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 135
    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 137
    const-string v1, "state_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    .line 138
    const-string v1, "state_border_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->b:I

    .line 143
    :goto_22
    return-void

    .line 140
    :cond_23
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_22
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    const-string v1, "state_instance"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    const-string v1, "state_type"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v1, "state_border_radius"

    iget v2, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 118
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 119
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->h:Landroid/graphics/RectF;

    .line 120
    :cond_1a
    return-void
.end method

.method public setBorderRadius(I)V
    .registers 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    .line 147
    iget v1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->b:I

    if-eq v1, v0, :cond_12

    .line 148
    iput v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->b:I

    .line 149
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->invalidate()V

    .line 151
    :cond_12
    return-void
.end method

.method public setType(I)V
    .registers 4

    .prologue
    .line 154
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    if-eq v0, p1, :cond_15

    .line 155
    iput p1, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    .line 156
    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    if-eqz v0, :cond_12

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->a:I

    .line 159
    :cond_12
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/view/RoundImageView;->requestLayout()V

    .line 162
    :cond_15
    return-void
.end method
