.class public Lcom/tapsdk/moment/view/TTMGifView;
.super Landroid/view/View;
.source "TTMGifView.java"


# static fields
.field private static final DEFAULT_MOVIEW_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimationTime:I

.field private mLeft:F

.field private mMeasuredMovieHeight:I

.field private mMeasuredMovieWidth:I

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieResourceId:I

.field private mMovieStart:J

.field private volatile mPaused:Z

.field private mScale:F

.field private mTop:F

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tapsdk/moment/view/TTMGifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/tapsdk/moment/view/TTMGifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mCurrentAnimationTime:I

    .line 52
    iput-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mPaused:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mVisible:Z

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/tapsdk/moment/view/TTMGifView;->setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method private drawMovieFrame(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 229
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 230
    iget-object v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mCurrentAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 232
    iget v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 233
    iget-object v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    iget v1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mLeft:F

    iget v2, p0, Lcom/tapsdk/moment/view/TTMGifView;->mScale:F

    div-float/2addr v1, v2

    iget v3, p0, Lcom/tapsdk/moment/view/TTMGifView;->mTop:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    return-void
.end method

.method private invalidateView()V
    .registers 2

    .line 201
    iget-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mVisible:Z

    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->postInvalidateOnAnimation()V

    .line 204
    :cond_7
    return-void
.end method

.method private setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tapsdk/moment/view/TTMGifView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method private updateAnimationTime()V
    .registers 8

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 212
    .local v0, "now":J
    iget-wide v2, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovieStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 213
    iput-wide v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovieStart:J

    .line 216
    :cond_e
    iget-object v2, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    .line 218
    .local v2, "dur":I
    if-nez v2, :cond_18

    .line 219
    const/16 v2, 0x3e8

    .line 222
    :cond_18
    iget-wide v3, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovieStart:J

    sub-long v3, v0, v3

    int-to-long v5, v2

    rem-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/tapsdk/moment/view/TTMGifView;->mCurrentAnimationTime:I

    .line 223
    return-void
.end method


# virtual methods
.method public getMovie()Landroid/graphics/Movie;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method public isPaused()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mPaused:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 183
    iget-object v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_15

    .line 184
    iget-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mPaused:Z

    if-nez v0, :cond_12

    .line 185
    invoke-direct {p0}, Lcom/tapsdk/moment/view/TTMGifView;->updateAnimationTime()V

    .line 186
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/TTMGifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    .line 187
    invoke-direct {p0}, Lcom/tapsdk/moment/view/TTMGifView;->invalidateView()V

    goto :goto_15

    .line 189
    :cond_12
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/view/TTMGifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    .line 192
    :cond_15
    :goto_15
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 170
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 175
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMeasuredMovieWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mLeft:F

    .line 176
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMeasuredMovieHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mTop:F

    .line 178
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    iput-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mVisible:Z

    .line 179
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 120
    iget-object v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_49

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    .line 122
    .local v0, "movieWidth":I
    iget-object v1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    .line 127
    .local v1, "movieHeight":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 128
    .local v2, "scaleH":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 130
    .local v3, "measureModeWidth":I
    if-eqz v3, :cond_20

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 132
    .local v4, "maximumWidth":I
    if-le v0, v4, :cond_20

    .line 133
    int-to-float v5, v0

    int-to-float v6, v4

    div-float v2, v5, v6

    .line 140
    .end local v4    # "maximumWidth":I
    :cond_20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 141
    .local v4, "scaleW":F
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 143
    .local v5, "measureModeHeight":I
    if-eqz v5, :cond_32

    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 145
    .local v6, "maximumHeight":I
    if-le v1, v6, :cond_32

    .line 146
    int-to-float v7, v1

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 153
    .end local v6    # "maximumHeight":I
    :cond_32
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/tapsdk/moment/view/TTMGifView;->mScale:F

    .line 155
    int-to-float v7, v0

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMeasuredMovieWidth:I

    .line 156
    int-to-float v8, v1

    mul-float/2addr v8, v6

    float-to-int v6, v8

    iput v6, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMeasuredMovieHeight:I

    .line 158
    invoke-virtual {p0, v7, v6}, Lcom/tapsdk/moment/view/TTMGifView;->setMeasuredDimension(II)V

    .line 160
    .end local v0    # "movieWidth":I
    .end local v1    # "movieHeight":I
    .end local v2    # "scaleH":F
    .end local v3    # "measureModeWidth":I
    .end local v4    # "scaleW":F
    .end local v5    # "measureModeHeight":I
    goto :goto_54

    .line 164
    :cond_49
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tapsdk/moment/view/TTMGifView;->setMeasuredDimension(II)V

    .line 166
    :goto_54
    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 3
    .param p1, "screenState"    # I

    .line 240
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 241
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mVisible:Z

    .line 242
    invoke-direct {p0}, Lcom/tapsdk/moment/view/TTMGifView;->invalidateView()V

    .line 243
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 248
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 249
    if-nez p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mVisible:Z

    .line 250
    invoke-direct {p0}, Lcom/tapsdk/moment/view/TTMGifView;->invalidateView()V

    .line 251
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 255
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 256
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mVisible:Z

    .line 257
    invoke-direct {p0}, Lcom/tapsdk/moment/view/TTMGifView;->invalidateView()V

    .line 258
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;)V
    .registers 2
    .param p1, "movie"    # Landroid/graphics/Movie;

    .line 86
    iput-object p1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    .line 87
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->requestLayout()V

    .line 88
    return-void
.end method

.method public setMovieResource(I)V
    .registers 4
    .param p1, "movieResId"    # I

    .line 80
    iput p1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovieResourceId:I

    .line 81
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovieResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovie:Landroid/graphics/Movie;

    .line 82
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->requestLayout()V

    .line 83
    return-void
.end method

.method public setMovieTime(I)V
    .registers 2
    .param p1, "time"    # I

    .line 95
    iput p1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mCurrentAnimationTime:I

    .line 96
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->invalidate()V

    .line 97
    return-void
.end method

.method public setPaused(Z)V
    .registers 6
    .param p1, "paused"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/tapsdk/moment/view/TTMGifView;->mPaused:Z

    .line 106
    if-nez p1, :cond_e

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/tapsdk/moment/view/TTMGifView;->mCurrentAnimationTime:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapsdk/moment/view/TTMGifView;->mMovieStart:J

    .line 110
    :cond_e
    invoke-virtual {p0}, Lcom/tapsdk/moment/view/TTMGifView;->invalidate()V

    .line 111
    return-void
.end method
