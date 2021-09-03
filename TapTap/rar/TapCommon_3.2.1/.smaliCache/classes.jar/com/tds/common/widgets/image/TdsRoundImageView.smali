.class public Lcom/tds/common/widgets/image/TdsRoundImageView;
.super Landroid/widget/ImageView;
.source "TdsRoundImageView.java"


# instance fields
.field private borderColor:I

.field private borderRadii:[F

.field private borderRectF:Landroid/graphics/RectF;

.field private borderWidth:I

.field private context:Landroid/content/Context;

.field private cornerBottomLeftRadius:I

.field private cornerBottomRightRadius:I

.field private cornerRadius:I

.field private cornerTopLeftRadius:I

.field private cornerTopRightRadius:I

.field private height:I

.field private innerBorderColor:I

.field private innerBorderWidth:I

.field private isCircle:Z

.field private isCoverSrc:Z

.field private maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radius:F

.field private srcPath:Landroid/graphics/Path;

.field private srcRadii:[F

.field private srcRectF:Landroid/graphics/RectF;

.field private width:I

.field private xfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderColor:I

    .line 26
    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->innerBorderColor:I

    .line 63
    iput-object p1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    .line 65
    const/16 v0, 0x8

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRadii:[F

    .line 66
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRadii:[F

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRectF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_40

    .line 75
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->xfermode:Landroid/graphics/Xfermode;

    goto :goto_50

    .line 77
    :cond_40
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->xfermode:Landroid/graphics/Xfermode;

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcPath:Landroid/graphics/Path;

    .line 81
    :goto_50
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadii()V

    .line 82
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->clearInnerBorderWidth()V

    .line 83
    return-void
.end method

.method private calculateRadii()V
    .registers 17

    .line 205
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCircle:Z

    if-eqz v1, :cond_7

    .line 206
    return-void

    .line 208
    :cond_7
    iget v1, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerRadius:I

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v1, :cond_26

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v3, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRadii:[F

    array-length v4, v3

    if-ge v1, v4, :cond_25

    .line 210
    iget v4, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerRadius:I

    int-to-float v5, v4

    aput v5, v3, v1

    .line 211
    iget-object v3, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRadii:[F

    int-to-float v4, v4

    iget v5, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v1

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v1    # "i":I
    :cond_25
    goto :goto_71

    .line 214
    :cond_26
    iget-object v1, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRadii:[F

    iget v3, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerTopLeftRadius:I

    int-to-float v4, v3

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v6, 0x0

    aput v4, v1, v6

    .line 215
    iget v4, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerTopRightRadius:I

    int-to-float v7, v4

    const/4 v8, 0x3

    aput v7, v1, v8

    const/4 v9, 0x2

    aput v7, v1, v9

    .line 216
    iget v7, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerBottomRightRadius:I

    int-to-float v10, v7

    const/4 v11, 0x5

    aput v10, v1, v11

    const/4 v12, 0x4

    aput v10, v1, v12

    .line 217
    iget v10, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerBottomLeftRadius:I

    int-to-float v13, v10

    const/4 v14, 0x7

    aput v13, v1, v14

    const/4 v15, 0x6

    aput v13, v1, v15

    .line 219
    iget-object v1, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRadii:[F

    int-to-float v3, v3

    iget v13, v0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    int-to-float v15, v13

    div-float/2addr v15, v2

    sub-float/2addr v3, v15

    aput v3, v1, v5

    aput v3, v1, v6

    .line 220
    int-to-float v3, v4

    int-to-float v4, v13

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v1, v8

    aput v3, v1, v9

    .line 221
    int-to-float v3, v7

    int-to-float v4, v13

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v1, v11

    aput v3, v1, v12

    .line 222
    int-to-float v3, v10

    int-to-float v4, v13

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v1, v14

    const/4 v2, 0x6

    aput v3, v1, v2

    .line 224
    :goto_71
    return-void
.end method

.method private calculateRadiiAndRectF(Z)V
    .registers 3
    .param p1, "reset"    # Z

    .line 227
    if-eqz p1, :cond_5

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerRadius:I

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadii()V

    .line 231
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->initBorderRectF()V

    .line 232
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->invalidate()V

    .line 233
    return-void
.end method

.method private clearInnerBorderWidth()V
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCircle:Z

    if-nez v0, :cond_7

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->innerBorderWidth:I

    .line 242
    :cond_7
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 140
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCircle:Z

    if-eqz v0, :cond_27

    .line 141
    iget v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_14

    .line 142
    iget v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderColor:I

    iget v3, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->radius:F

    int-to-float v4, v0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/tds/common/widgets/image/TdsRoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    .line 144
    :cond_14
    iget v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->innerBorderWidth:I

    if-lez v0, :cond_36

    .line 145
    iget v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->innerBorderColor:I

    iget v3, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->radius:F

    iget v4, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/tds/common/widgets/image/TdsRoundImageView;->drawCircleBorder(Landroid/graphics/Canvas;IIF)V

    goto :goto_36

    .line 149
    :cond_27
    iget v6, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    if-lez v6, :cond_36

    .line 150
    iget v7, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderColor:I

    iget-object v8, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRectF:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRadii:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/tds/common/widgets/image/TdsRoundImageView;->drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V

    .line 153
    :cond_36
    :goto_36
    return-void
.end method

.method private drawCircleBorder(Landroid/graphics/Canvas;IIF)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "borderWidth"    # I
    .param p3, "borderColor"    # I
    .param p4, "radius"    # F

    .line 156
    invoke-direct {p0, p2, p3}, Lcom/tds/common/widgets/image/TdsRoundImageView;->initBorderPaint(II)V

    .line 157
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, p4, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 158
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method private drawRectFBorder(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "borderWidth"    # I
    .param p3, "borderColor"    # I
    .param p4, "rectF"    # Landroid/graphics/RectF;
    .param p5, "radii"    # [F

    .line 163
    invoke-direct {p0, p2, p3}, Lcom/tds/common/widgets/image/TdsRoundImageView;->initBorderPaint(II)V

    .line 164
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p4, p5, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 165
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 166
    return-void
.end method

.method private initBorderPaint(II)V
    .registers 5
    .param p1, "borderWidth"    # I
    .param p2, "borderColor"    # I

    .line 169
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 170
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    return-void
.end method

.method private initBorderRectF()V
    .registers 8

    .line 179
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCircle:Z

    if-nez v0, :cond_1d

    .line 180
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    iget v5, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    int-to-float v6, v6

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v6, v1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    :cond_1d
    return-void
.end method

.method private initSrcRectF()V
    .registers 8

    .line 189
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCircle:Z

    if-eqz v0, :cond_28

    .line 190
    iget v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    iget v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->radius:F

    .line 191
    iget-object v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    int-to-float v4, v3

    div-float/2addr v4, v1

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    int-to-float v6, v5

    div-float/2addr v6, v1

    sub-float/2addr v6, v0

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v3, v0

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3c

    .line 194
    :cond_28
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 195
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCoverSrc:Z

    if-eqz v0, :cond_3c

    .line 196
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderRectF:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRectF:Landroid/graphics/RectF;

    .line 199
    :cond_3c
    :goto_3c
    return-void
.end method


# virtual methods
.method public isCircle(Z)V
    .registers 2
    .param p1, "isCircle"    # Z

    .line 251
    iput-boolean p1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCircle:Z

    .line 252
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->clearInnerBorderWidth()V

    .line 253
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->initSrcRectF()V

    .line 254
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->invalidate()V

    .line 255
    return-void
.end method

.method public isCoverSrc(Z)V
    .registers 2
    .param p1, "isCoverSrc"    # Z

    .line 245
    iput-boolean p1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCoverSrc:Z

    .line 246
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->initSrcRectF()V

    .line 247
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->invalidate()V

    .line 248
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 98
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 99
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCoverSrc:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v0, :cond_35

    .line 100
    iget v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    iget v3, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    mul-int/lit8 v4, v3, 0x2

    sub-int v4, v0, v4

    iget v5, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->innerBorderWidth:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    int-to-float v7, v0

    div-float/2addr v4, v7

    .line 101
    .local v4, "sx":F
    iget v7, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v7, v3

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v6

    int-to-float v5, v7

    div-float/2addr v3, v5

    .line 103
    .local v3, "sy":F
    int-to-float v0, v0

    div-float/2addr v0, v2

    int-to-float v5, v7

    div-float/2addr v5, v2

    invoke-virtual {p1, v4, v3, v0, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 105
    .end local v3    # "sy":F
    .end local v4    # "sx":F
    :cond_35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 107
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 108
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->isCircle:Z

    if-eqz v0, :cond_58

    .line 109
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    iget v3, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_63

    .line 111
    :cond_58
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 114
    :goto_63
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->xfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v0, v2, :cond_85

    .line 118
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a3

    .line 120
    :cond_85
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 122
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 123
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->srcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 126
    :goto_a3
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 129
    iget v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->maskColor:I

    if-eqz v0, :cond_b8

    .line 130
    iget-object v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 134
    :cond_b8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 136
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/TdsRoundImageView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 137
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 88
    iput p1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->width:I

    .line 89
    iput p2, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->height:I

    .line 91
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->initBorderRectF()V

    .line 92
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->initSrcRectF()V

    .line 93
    return-void
.end method

.method public setBorderColor(I)V
    .registers 2
    .param p1, "borderColor"    # I

    .line 263
    iput p1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderColor:I

    .line 264
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->invalidate()V

    .line 265
    return-void
.end method

.method public setBorderWidth(I)V
    .registers 4
    .param p1, "borderWidth"    # I

    .line 258
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->borderWidth:I

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadiiAndRectF(Z)V

    .line 260
    return-void
.end method

.method public setCornerBottomLeftRadius(I)V
    .registers 4
    .param p1, "cornerBottomLeftRadius"    # I

    .line 294
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerBottomLeftRadius:I

    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadiiAndRectF(Z)V

    .line 296
    return-void
.end method

.method public setCornerBottomRightRadius(I)V
    .registers 4
    .param p1, "cornerBottomRightRadius"    # I

    .line 299
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerBottomRightRadius:I

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadiiAndRectF(Z)V

    .line 301
    return-void
.end method

.method public setCornerRadius(I)V
    .registers 4
    .param p1, "cornerRadius"    # I

    .line 279
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerRadius:I

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadiiAndRectF(Z)V

    .line 281
    return-void
.end method

.method public setCornerTopLeftRadius(I)V
    .registers 4
    .param p1, "cornerTopLeftRadius"    # I

    .line 284
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerTopLeftRadius:I

    .line 285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadiiAndRectF(Z)V

    .line 286
    return-void
.end method

.method public setCornerTopRightRadius(I)V
    .registers 4
    .param p1, "cornerTopRightRadius"    # I

    .line 289
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->cornerTopRightRadius:I

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->calculateRadiiAndRectF(Z)V

    .line 291
    return-void
.end method

.method public setInnerBorderColor(I)V
    .registers 2
    .param p1, "innerBorderColor"    # I

    .line 274
    iput p1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->innerBorderColor:I

    .line 275
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->invalidate()V

    .line 276
    return-void
.end method

.method public setInnerBorderWidth(I)V
    .registers 4
    .param p1, "innerBorderWidth"    # I

    .line 268
    iget-object v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->innerBorderWidth:I

    .line 269
    invoke-direct {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->clearInnerBorderWidth()V

    .line 270
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->invalidate()V

    .line 271
    return-void
.end method

.method public setMaskColor(I)V
    .registers 2
    .param p1, "maskColor"    # I

    .line 304
    iput p1, p0, Lcom/tds/common/widgets/image/TdsRoundImageView;->maskColor:I

    .line 305
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/TdsRoundImageView;->invalidate()V

    .line 306
    return-void
.end method
