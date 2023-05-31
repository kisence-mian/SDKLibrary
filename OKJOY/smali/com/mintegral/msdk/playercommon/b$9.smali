.class final Lcom/mintegral/msdk/playercommon/b$9;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/b;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/b;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->g(Lcom/mintegral/msdk/playercommon/b;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 363
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->e(Lcom/mintegral/msdk/playercommon/b;)V

    .line 364
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->h(Lcom/mintegral/msdk/playercommon/b;)Z

    .line 365
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 366
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->i(Lcom/mintegral/msdk/playercommon/b;)Z

    .line 367
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->j(Lcom/mintegral/msdk/playercommon/b;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 368
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v1}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/b;->b(Lcom/mintegral/msdk/playercommon/b;I)V

    .line 369
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayStarted()\uff0cgetCurrentPosition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->k(Lcom/mintegral/msdk/playercommon/b;)Z

    .line 372
    :cond_5b
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 374
    :cond_64
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->l(Lcom/mintegral/msdk/playercommon/b;)V

    .line 375
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->m(Lcom/mintegral/msdk/playercommon/b;)V

    .line 376
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onprepare mCurrentPosition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/b;->b(Lcom/mintegral/msdk/playercommon/b;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onprepare \u5f00\u59cb\u64ad\u653e mHasPrepare\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/b$9;->a:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/b;->f(Lcom/mintegral/msdk/playercommon/b;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_98} :catch_99

    .line 381
    :cond_98
    :goto_98
    return-void

    .line 379
    :catch_99
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_98
.end method
