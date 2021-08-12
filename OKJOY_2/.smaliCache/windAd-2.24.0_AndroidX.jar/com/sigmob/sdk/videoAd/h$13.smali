.class Lcom/sigmob/sdk/videoAd/h$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 8

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;I)I

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->c(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->f(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/g;->a(I)V

    :cond_20
    new-instance v0, Lcom/sigmob/sdk/videoAd/h$13$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/h$13$1;-><init>(Lcom/sigmob/sdk/videoAd/h$13;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->i(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/h;->i(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->i(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_63

    :cond_5b
    const-string v0, "seek to 0"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_70

    new-instance v0, Lcom/sigmob/sdk/videoAd/h$13$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/h$13$2;-><init>(Lcom/sigmob/sdk/videoAd/h$13;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    :cond_70
    :try_start_70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_8e

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    array-length v2, v0
    :try_end_7b
    .catchall {:try_start_70 .. :try_end_7b} :catchall_8d

    const-string v3, ""

    move v4, v1

    :goto_7e
    if-ge v4, v2, :cond_8e

    :try_start_80
    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_8d

    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    :catchall_8d
    move-exception v0

    :cond_8e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->j(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->k(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/views/d;->b:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVolume(F)V

    :cond_af
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/h;->f(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->m(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/a;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/common/p;->a(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->g(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-nez v0, :cond_109

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->n(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v0

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->n(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_109

    :cond_e1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    instance-of v2, v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    if-eqz v2, :cond_109

    check-cast v0, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    const-string v2, "_COMPLETED_"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/h;->f(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_VIDEOTIME_"

    invoke-virtual {v0, v3, v2}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->o(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->p(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->q(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/views/VideoProgressBarWidget;->a(II)V

    :cond_125
    new-instance v0, Lcom/sigmob/sdk/videoAd/h$13$3;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/h$13$3;-><init>(Lcom/sigmob/sdk/videoAd/h$13;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
