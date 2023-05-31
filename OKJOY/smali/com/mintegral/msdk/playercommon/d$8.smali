.class final Lcom/mintegral/msdk/playercommon/d$8;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/d;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer;

.field final synthetic b:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/d;Landroid/media/MediaPlayer;)V
    .registers 3

    .prologue
    .line 385
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$8;->b:Lcom/mintegral/msdk/playercommon/d;

    iput-object p2, p0, Lcom/mintegral/msdk/playercommon/d$8;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$8;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->i(Lcom/mintegral/msdk/playercommon/d;)Z

    .line 390
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$8;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->j(Lcom/mintegral/msdk/playercommon/d;)V

    .line 391
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$8;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->k(Lcom/mintegral/msdk/playercommon/d;)V

    .line 393
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$8;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1e

    .line 394
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$8;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 395
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$8;->b:Lcom/mintegral/msdk/playercommon/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;Z)Z

    .line 397
    :cond_1e
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onprepare mCurrentPosition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$8;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->b(Lcom/mintegral/msdk/playercommon/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onprepare \u5f00\u59cb\u64ad\u653e mHasPrepare\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$8;->b:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->h(Lcom/mintegral/msdk/playercommon/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    .line 401
    :goto_48
    return-void

    .line 399
    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48
.end method
