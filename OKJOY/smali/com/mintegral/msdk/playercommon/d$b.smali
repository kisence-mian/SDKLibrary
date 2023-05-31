.class final Lcom/mintegral/msdk/playercommon/d$b;
.super Ljava/util/TimerTask;
.source "VideoNativePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/playercommon/d;B)V
    .registers 3

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/playercommon/d$b;-><init>(Lcom/mintegral/msdk/playercommon/d;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v1}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;I)I

    .line 210
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->b(Lcom/mintegral/msdk/playercommon/d;)I

    move-result v0

    div-int/lit16 v1, v0, 0x3e8

    .line 212
    const-string v0, "VideoFeedsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentPosition:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    .line 215
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lez v2, :cond_60

    .line 216
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 223
    :cond_60
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->c(Lcom/mintegral/msdk/playercommon/d;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 224
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Lcom/mintegral/msdk/playercommon/d;I)V

    .line 225
    const-string v2, "VideoFeedsPlayer"

    const-string v3, "onPlayStarted()"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->d(Lcom/mintegral/msdk/playercommon/d;)Z

    .line 229
    :cond_79
    if-ltz v1, :cond_8e

    if-lez v0, :cond_8e

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 230
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2, v1, v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;II)V

    .line 233
    :cond_8e
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->e(Lcom/mintegral/msdk/playercommon/d;)Z

    .line 234
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->f(Lcom/mintegral/msdk/playercommon/d;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 236
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$b;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->g(Lcom/mintegral/msdk/playercommon/d;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    .line 243
    :cond_a0
    :goto_a0
    return-void

    .line 240
    :catch_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a0
.end method
