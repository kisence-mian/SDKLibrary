.class abstract Landroid/support/v7/app/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# static fields
.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private final mBarGap:F

.field private final mBarSize:F

.field private final mBarThickness:F

.field private final mMiddleArrowSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private final mSpin:Z

.field private final mTopBottomArrowSize:F

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v7/app/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->drawerArrowStyle:I

    sget v5, Landroid/support/v7/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 68
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    sget v4, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    sget v4, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSize:I

    .line 71
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_barSize:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarSize:F

    .line 72
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_topBottomBarArrowSize:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mTopBottomArrowSize:F

    .line 74
    sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarThickness:F

    .line 75
    sget v5, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarGap:F

    .line 76
    sget v5, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSpin:Z

    .line 77
    sget v3, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_middleBarArrowSize:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mMiddleArrowSize:F

    .line 79
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    return-void
.end method

.method private static lerp(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .line 190
    sub-float v0, p1, p0

    mul-float v0, v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/DrawerArrowDrawable;->isLayoutRtl()Z

    move-result v3

    .line 101
    .local v3, "isRtl":Z
    iget v4, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarSize:F

    iget v5, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mTopBottomArrowSize:F

    iget v6, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v4, v5, v6}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v4

    .line 102
    .local v4, "arrowSize":F
    iget v5, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarSize:F

    iget v6, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mMiddleArrowSize:F

    iget v7, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v5, v6, v7}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 104
    .local v5, "middleBarSize":F
    iget v6, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarThickness:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v8, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    const/4 v9, 0x0

    invoke-static {v9, v6, v8}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v6

    .line 106
    .local v6, "middleBarCut":F
    sget v8, Landroid/support/v7/app/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    iget v10, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v9, v8, v10}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    .line 109
    .local v8, "rotation":F
    if-eqz v3, :cond_38

    const/4 v10, 0x0

    goto :goto_3a

    :cond_38
    const/high16 v10, -0x3ccc0000    # -180.0f

    :goto_3a
    if-eqz v3, :cond_3f

    const/high16 v12, 0x43340000    # 180.0f

    goto :goto_40

    :cond_3f
    const/4 v12, 0x0

    :goto_40
    iget v13, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v10, v12, v13}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v10

    .line 110
    .local v10, "canvasRotate":F
    iget v12, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarGap:F

    iget v13, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mBarThickness:F

    add-float/2addr v12, v13

    iget v13, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    invoke-static {v12, v9, v13}, Landroid/support/v7/app/DrawerArrowDrawable;->lerp(FFF)F

    move-result v12

    .line 111
    .local v12, "topBottomBarOffset":F
    iget-object v13, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 113
    neg-float v13, v5

    div-float/2addr v13, v7

    .line 115
    .local v13, "arrowEdge":F
    iget-object v7, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float v14, v13, v6

    invoke-virtual {v7, v14, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 116
    iget-object v7, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    sub-float v14, v5, v6

    invoke-virtual {v7, v14, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 118
    float-to-double v14, v4

    move/from16 v16, v10

    .end local v10    # "canvasRotate":F
    .local v16, "canvasRotate":F
    float-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-float v9, v9

    .line 119
    .local v9, "arrowWidth":F
    float-to-double v14, v4

    move/from16 v17, v12

    .end local v12    # "topBottomBarOffset":F
    .local v17, "topBottomBarOffset":F
    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-float v11, v11

    .line 122
    .local v11, "arrowHeight":F
    iget-object v12, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move/from16 v14, v17

    .end local v17    # "topBottomBarOffset":F
    .local v14, "topBottomBarOffset":F
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    iget-object v12, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v12, v9, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 126
    iget-object v12, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v15, v14

    invoke-virtual {v12, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget-object v12, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v15, v11

    invoke-virtual {v12, v9, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 128
    iget-object v12, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    iget-object v7, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-boolean v7, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mSpin:Z

    if-eqz v7, :cond_cd

    .line 135
    iget-boolean v7, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mVerticalMirror:Z

    xor-int/2addr v7, v3

    if-eqz v7, :cond_bb

    const/4 v7, -0x1

    goto :goto_bc

    :cond_bb
    const/4 v7, 0x1

    :goto_bc
    int-to-float v7, v7

    mul-float v10, v16, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1, v10, v7, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_de

    .line 137
    :cond_cd
    if-eqz v3, :cond_de

    .line 138
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v1, v10, v7, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 140
    :cond_de
    :goto_de
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 141
    iget-object v7, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v10, v0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 174
    const/4 v0, -0x3

    return v0
.end method

.method public getProgress()F
    .registers 2

    .line 178
    iget v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isAutoMirrored()Z
    .registers 2

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method abstract isLayoutRtl()Z
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "i"    # I

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 159
    iget-object v0, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    return-void
.end method

.method public setProgress(F)V
    .registers 2
    .param p1, "progress"    # F

    .line 182
    iput p1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mProgress:F

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/app/DrawerArrowDrawable;->invalidateSelf()V

    .line 184
    return-void
.end method

.method protected setVerticalMirror(Z)V
    .registers 2
    .param p1, "verticalMirror"    # Z

    .line 93
    iput-boolean p1, p0, Landroid/support/v7/app/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 94
    return-void
.end method
