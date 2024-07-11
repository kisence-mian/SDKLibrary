.class public Lcom/sigmob/sdk/base/views/AdVideoPlayer;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/view/SurfaceView;

.field private b:Landroid/media/MediaPlayer;

.field private c:Landroid/view/SurfaceHolder;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->d:Ljava/lang/String;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->a:Landroid/view/SurfaceView;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->a:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->c:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method private e()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->g:I

    :cond_17
    return-void
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->e:I

    iput p2, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->f:I

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->g:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_e
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    :cond_14
    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->getDefaultSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->f:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->e:I

    if-le v0, v1, :cond_19

    if-le v2, v3, :cond_12

    goto :goto_21

    :cond_12
    int-to-float v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v2, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_21

    :cond_19
    if-le v2, v3, :cond_21

    int-to-float v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :cond_21
    :goto_21
    iget v2, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->f:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->e:I

    if-ne v2, v3, :cond_3a

    const/4 v0, -0x1

    if-ne v2, v0, :cond_36

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->setMeasuredDimension(II)V

    goto :goto_3d

    :cond_36
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->setMeasuredDimension(II)V

    :goto_3d
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->e()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_14
    return-void
.end method
