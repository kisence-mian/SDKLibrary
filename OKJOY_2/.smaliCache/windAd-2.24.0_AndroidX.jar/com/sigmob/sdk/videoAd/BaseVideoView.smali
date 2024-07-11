.class public Lcom/sigmob/sdk/videoAd/BaseVideoView;
.super Landroid/widget/VideoView;


# instance fields
.field protected final a:Landroid/media/MediaMetadataRetriever;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const-class v1, Landroid/view/View;

    const-string v2, "mContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_27

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "BaseVideoView onDestroy() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->suspend()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->stopPlayback()V

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/s;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->b()V

    invoke-super {p0}, Landroid/widget/VideoView;->destroyDrawingCache()V

    return-void
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->b:I

    iput p2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->c:I

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getDefaultSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->c:I

    iget v3, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->b:I

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
    iget v2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->c:I

    iget v3, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->b:I

    if-ne v2, v3, :cond_3a

    const/4 v0, -0x1

    if-ne v2, v0, :cond_36

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setMeasuredDimension(II)V

    goto :goto_3d

    :cond_36
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setMeasuredDimension(II)V

    :goto_3d
    return-void
.end method

.method public setVolume(F)V
    .registers 4

    :try_start_0
    const-string v0, "android.widget.VideoView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mMediaPlayer"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_24

    :catchall_1c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method
