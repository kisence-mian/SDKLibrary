.class public Lcom/sigmob/sdk/base/views/GifImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Movie;

.field private c:J

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Z

.field private volatile l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/base/views/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/views/GifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:Z

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->l:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-lt p1, p3, :cond_15

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/sigmob/sdk/base/views/GifImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_15
    return-void
.end method

.method private a()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:Z

    if-eqz v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->postInvalidateOnAnimation()V

    goto :goto_11

    :cond_e
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->invalidate()V

    :cond_11
    :goto_11
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->g:F

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->e:F

    iget v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->g:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->f:F

    iget v3, p0, Lcom/sigmob/sdk/base/views/GifImageView;->h:F

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    iput-wide v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:J

    :cond_e
    iget-object v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_18

    const/16 v2, 0x3e8

    :cond_18
    iget-wide v3, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:I

    return-void
.end method

.method private getGiftBytes()[B
    .registers 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_13
    const/4 v4, 0x0

    :try_start_14
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1f

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_31

    if-eqz v1, :cond_3e

    :try_start_24
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_3e

    :catchall_28
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_3e

    :catchall_31
    move-exception v2

    :try_start_32
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_43

    if-eqz v1, :cond_3e

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_28

    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_43
    move-exception v0

    if-eqz v1, :cond_52

    :try_start_46
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_52

    :catchall_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_52
    :goto_52
    throw v0
.end method


# virtual methods
.method public getMovie()Landroid/graphics/Movie;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->b()V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/GifImageView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->a()V

    goto :goto_11

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_11
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->i:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->e:F

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getHeight()I

    move-result p1

    iget p3, p0, Lcom/sigmob/sdk/base/views/GifImageView;->j:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->f:F

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v0, v0

    int-to-float v3, p1

    div-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->g:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->h:F

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->i:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->j:I

    iget p2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->i:I

    invoke-virtual {p0, p2, p1}, Lcom/sigmob/sdk/base/views/GifImageView;->setMeasuredDimension(II)V

    goto :goto_36

    :cond_33
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_36
    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->a()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->a()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->a()V

    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->requestLayout()V

    return-void
.end method

.method public setMovieResource(I)V
    .registers 4

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->a:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getGiftBytes()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->requestLayout()V

    return-void
.end method

.method public setMovieTime(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->invalidate()V

    return-void
.end method

.method public setPaused(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->l:Z

    if-nez p1, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:J

    :cond_e
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->invalidate()V

    return-void
.end method
