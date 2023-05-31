.class public Lcom/sigmob/sdk/base/views/GifImageView;
.super Landroid/widget/ImageView;


# static fields
.field private static final a:I = 0x3e8


# instance fields
.field private b:I

.field private c:Landroid/graphics/Movie;

.field private d:J

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private volatile m:Z


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
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->e:I

    iput-boolean v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->l:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->m:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/sigmob/sdk/base/views/GifImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_15
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->h:F

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->f:F

    iget v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->h:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->g:F

    iget v3, p0, Lcom/sigmob/sdk/base/views/GifImageView;->i:F

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->l:Z

    if-eqz v0, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->postInvalidateOnAnimation()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->invalidate()V

    goto :goto_d
.end method

.method private c()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    iput-wide v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:J

    :cond_e
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x3e8

    :cond_18
    iget-wide v4, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->e:I

    return-void
.end method

.method private getGiftBytes()[B
    .registers 6

    const/16 v3, 0x400

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-array v0, v3, [B

    :goto_13
    const/4 v3, 0x0

    const/16 v4, 0x400

    :try_start_16
    invoke-virtual {v2, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_22
    .catchall {:try_start_16 .. :try_end_21} :catchall_43

    goto :goto_13

    :catch_22
    move-exception v0

    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_43

    if-eqz v2, :cond_2b

    :try_start_28
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_3e

    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_22
    .catchall {:try_start_30 .. :try_end_33} :catchall_43

    if-eqz v2, :cond_2b

    :try_start_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_2b

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    :catchall_43
    move-exception v0

    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    throw v0

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_49
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->m:Z

    return v0
.end method

.method public getMovie()Landroid/graphics/Movie;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->c()V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/GifImageView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->b()V

    :goto_d
    return-void

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_d
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    const/high16 v2, 0x40000000    # 2.0f

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->f:F

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->g:F

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v0, v0

    int-to-float v4, v2

    div-float/2addr v0, v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    div-float v0, v5, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->h:F

    div-float v0, v5, v1

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->i:F

    iput v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->j:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:I

    iget v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->j:I

    iget v1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/views/GifImageView;->setMeasuredDimension(II)V

    :goto_37
    return-void

    :cond_38
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_37
.end method

.method public onScreenStateChanged(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    if-ne p1, v0, :cond_c

    :goto_6
    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->l:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->b()V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_c

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->l:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->b()V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->l:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->b()V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setMovie(Landroid/graphics/Movie;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->requestLayout()V

    return-void
.end method

.method public setMovieResource(I)V
    .registers 5

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->b:I

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->getGiftBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->c:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->requestLayout()V

    return-void
.end method

.method public setMovieTime(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->e:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->invalidate()V

    return-void
.end method

.method public setPaused(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/GifImageView;->m:Z

    if-nez p1, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/GifImageView;->e:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/sdk/base/views/GifImageView;->d:J

    :cond_e
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/GifImageView;->invalidate()V

    return-void
.end method
