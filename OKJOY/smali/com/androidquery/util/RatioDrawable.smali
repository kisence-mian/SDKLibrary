.class public Lcom/androidquery/util/RatioDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RatioDrawable.java"


# instance fields
.field private adjusted:Z

.field private anchor:F

.field private m:Landroid/graphics/Matrix;

.field private ratio:F

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "iv"    # Landroid/widget/ImageView;
    .param p4, "ratio"    # F
    .param p5, "anchor"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 50
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    .line 51
    iput p4, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    .line 52
    iput p5, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    .line 54
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 59
    const/4 v1, 0x0

    invoke-direct {p0, p3, p2, v1}, Lcom/androidquery/util/RatioDrawable;->adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 61
    return-void
.end method

.method private adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 12
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "done"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/androidquery/util/RatioDrawable;->getWidth(Landroid/widget/ImageView;)I

    move-result v5

    .line 128
    .local v5, "vw":I
    if-gtz v5, :cond_7

    .line 150
    :cond_6
    :goto_6
    return-void

    .line 130
    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 131
    .local v1, "dw":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 134
    .local v0, "dh":I
    invoke-direct {p0, v1, v0, v5}, Lcom/androidquery/util/RatioDrawable;->targetHeight(III)I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    add-int v3, v6, v7

    .line 136
    .local v3, "th":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 137
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_6

    .line 139
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    .local v4, "vh":I
    if-eq v3, v4, :cond_2d

    .line 144
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_2d
    if-eqz p3, :cond_6

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/androidquery/util/RatioDrawable;->adjusted:Z

    goto :goto_6
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-direct {p0, p2, p3}, Lcom/androidquery/util/RatioDrawable;->getMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 109
    .local v1, "m":Landroid/graphics/Matrix;
    if-eqz v1, :cond_33

    .line 110
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    add-int v2, v3, v4

    .line 111
    .local v2, "vpad":I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 112
    .local v0, "hpad":I
    if-gtz v2, :cond_1f

    if-lez v0, :cond_2c

    .line 113
    :cond_1f
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 115
    :cond_2c
    invoke-virtual {p0}, Lcom/androidquery/util/RatioDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, p3, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 118
    .end local v0    # "hpad":I
    .end local v2    # "vpad":I
    :cond_33
    iget-boolean v3, p0, Lcom/androidquery/util/RatioDrawable;->adjusted:Z

    if-nez v3, :cond_3b

    .line 119
    const/4 v3, 0x1

    invoke-direct {p0, p2, p3, v3}, Lcom/androidquery/util/RatioDrawable;->adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 122
    :cond_3b
    return-void
.end method

.method private getMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .registers 13
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 168
    .local v1, "dw":I
    iget-object v8, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    if-ne v1, v8, :cond_f

    .line 169
    iget-object v8, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 203
    :goto_e
    return-object v8

    .line 172
    :cond_f
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 173
    .local v0, "dh":I
    invoke-direct {p0, p1}, Lcom/androidquery/util/RatioDrawable;->getWidth(Landroid/widget/ImageView;)I

    move-result v7

    .line 174
    .local v7, "vw":I
    invoke-direct {p0, v1, v0, v7}, Lcom/androidquery/util/RatioDrawable;->targetHeight(III)I

    move-result v6

    .line 176
    .local v6, "vh":I
    if-lez v1, :cond_23

    if-lez v0, :cond_23

    if-lez v7, :cond_23

    if-gtz v6, :cond_25

    :cond_23
    const/4 v8, 0x0

    goto :goto_e

    .line 178
    :cond_25
    iget-object v8, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    if-eqz v8, :cond_2d

    iget v8, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    if-eq v1, v8, :cond_54

    .line 181
    :cond_2d
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 183
    .local v3, "dy":F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 185
    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-lt v8, v9, :cond_57

    .line 187
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 188
    .local v4, "scale":F
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v2, v8, v9

    .line 197
    :goto_48
    iget-object v8, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 198
    iget-object v8, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 200
    iput v1, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    .line 203
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "scale":F
    :cond_54
    iget-object v8, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    goto :goto_e

    .line 191
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_57
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v4, v8, v9

    .line 192
    .restart local v4    # "scale":F
    invoke-direct {p0, v1, v0}, Lcom/androidquery/util/RatioDrawable;->getYOffset(II)F

    move-result v5

    .line 194
    .local v5, "sy":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    mul-float v3, v8, v5

    goto :goto_48
.end method

.method private getWidth(Landroid/widget/ImageView;)I
    .registers 6
    .param p1, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 68
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_9

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    :cond_9
    if-gtz v1, :cond_f

    .line 71
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 74
    :cond_f
    if-lez v1, :cond_1d

    .line 75
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 78
    :cond_1d
    return v1
.end method

.method private getYOffset(II)F
    .registers 9
    .param p1, "vwidth"    # I
    .param p2, "vheight"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 209
    iget v1, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15

    .line 210
    iget v1, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    sub-float v1, v3, v1

    div-float/2addr v1, v5

    .line 218
    :goto_14
    return v1

    .line 213
    :cond_15
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 215
    .local v0, "ratio":F
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 216
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 218
    const/high16 v1, 0x3e800000    # 0.25f

    sub-float v2, v4, v0

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    goto :goto_14
.end method

.method private targetHeight(III)I
    .registers 7
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "vw"    # I

    .prologue
    .line 155
    iget v0, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    .line 157
    .local v0, "r":F
    iget v1, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-nez v1, :cond_f

    .line 158
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 161
    :cond_f
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_d

    .line 86
    iget-object v2, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "iv":Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .restart local v1    # "iv":Landroid/widget/ImageView;
    :cond_d
    iget v2, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_16

    if-nez v1, :cond_1a

    .line 91
    :cond_16
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    :goto_19
    return-void

    .line 95
    :cond_1a
    invoke-virtual {p0}, Lcom/androidquery/util/RatioDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v1, v0}, Lcom/androidquery/util/RatioDrawable;->draw(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_19
.end method
