.class Lcom/sigmob/sdk/videoAd/k$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/k$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;I)I

    new-instance v0, Lcom/sigmob/sdk/videoAd/k$13$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/k$13$1;-><init>(Lcom/sigmob/sdk/videoAd/k$13;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->h(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v0

    if-lez v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->h(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->h(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_50

    new-instance v0, Lcom/sigmob/sdk/videoAd/k$13$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/k$13$2;-><init>(Lcom/sigmob/sdk/videoAd/k$13;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    :cond_50
    const-string v0, ""

    :try_start_52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_78

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v3

    array-length v4, v3

    move-object v1, v0

    move v0, v2

    :goto_5f
    if-ge v0, v4, :cond_78

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_6a} :catch_77

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    :cond_6e
    const-string v0, "seek to 0"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_43

    :catch_77
    move-exception v0

    :cond_78
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->i(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->j(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/views/l;->b:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVolume(F)V

    :cond_99
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->l(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v1

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/k;->m(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/a;->k()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/sigmob/sdk/base/common/w;->a(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->f(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_f6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->n(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->n(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f6

    :cond_cb
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    instance-of v0, v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v0, :cond_f6

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v3, "_COMPLETED_"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v0, "_VIDEOTIME_"

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/k;->l(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->o(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->p(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->q(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/k;->s()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->a(II)V

    :cond_112
    new-instance v0, Lcom/sigmob/sdk/videoAd/k$13$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/k$13$3;-><init>(Lcom/sigmob/sdk/videoAd/k$13;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
