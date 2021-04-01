.class public Lcom/sigmob/sdk/videoAd/BaseVideoView;
.super Landroid/widget/VideoView;


# static fields
.field private static final b:I = 0x1

.field private static final c:I = -0x80000000


# instance fields
.field protected final a:Landroid/media/MediaMetadataRetriever;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method private b()V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const-class v0, Landroid/view/View;

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "BaseVideoView onDestroy() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->suspend()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->stopPlayback()V

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/ai;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->b()V

    invoke-super {p0}, Landroid/widget/VideoView;->destroyDrawingCache()V

    return-void
.end method

.method public a(II)V
    .registers 3

    iput p1, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->d:I

    iput p2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->e:I

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->getDefaultSize(II)I

    move-result v1

    if-le v1, v0, :cond_33

    iget v2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->e:I

    iget v3, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->d:I

    if-le v2, v3, :cond_28

    :cond_11
    :goto_11
    iget v2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->e:I

    iget v3, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->d:I

    if-ne v2, v3, :cond_48

    iget v0, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_44

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setMeasuredDimension(II)V

    :goto_27
    return-void

    :cond_28
    iget v1, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_11

    :cond_33
    iget v2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->e:I

    iget v3, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->d:I

    if-le v2, v3, :cond_11

    iget v0, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->d:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sigmob/sdk/videoAd/BaseVideoView;->e:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_11

    :cond_44
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    goto :goto_27

    :cond_48
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setMeasuredDimension(II)V

    goto :goto_27
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

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b
.end method
