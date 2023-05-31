.class final Lcom/mintegral/msdk/playercommon/b$a;
.super Ljava/util/TimerTask;
.source "VideoFeedsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/b;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/playercommon/b;)V
    .registers 2

    .prologue
    .line 214
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/playercommon/b;B)V
    .registers 3

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/playercommon/b$a;-><init>(Lcom/mintegral/msdk/playercommon/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 222
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v1}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;I)I

    .line 223
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->b(Lcom/mintegral/msdk/playercommon/b;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 224
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 226
    const-string v0, "VideoFeedsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentPosition:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurrentPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v3}, Lcom/mintegral/msdk/playercommon/b;->b(Lcom/mintegral/msdk/playercommon/b;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    .line 229
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lez v2, :cond_76

    .line 230
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 232
    :cond_76
    if-ltz v1, :cond_8b

    if-lez v0, :cond_8b

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 233
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v2, v1, v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;II)V

    .line 236
    :cond_8b
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->c(Lcom/mintegral/msdk/playercommon/b;)Z

    .line 237
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->d(Lcom/mintegral/msdk/playercommon/b;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 239
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$a;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->e(Lcom/mintegral/msdk/playercommon/b;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_9e

    .line 246
    :cond_9d
    :goto_9d
    return-void

    .line 243
    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d
.end method
