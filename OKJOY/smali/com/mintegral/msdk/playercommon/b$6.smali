.class final Lcom/mintegral/msdk/playercommon/b$6;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/playercommon/b;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mintegral/msdk/playercommon/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/playercommon/b;I)V
    .registers 3

    .prologue
    .line 730
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/b$6;->b:Lcom/mintegral/msdk/playercommon/b;

    iput p2, p0, Lcom/mintegral/msdk/playercommon/b$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    .prologue
    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$6;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 735
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$6;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/b;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 736
    const-string v0, "VideoFeedsPlayer"

    const-string v1, "seekTo start"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/b$6;->b:Lcom/mintegral/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/b;->i(Lcom/mintegral/msdk/playercommon/b;)Z

    .line 739
    const-string v0, "VideoFeedsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==================seekTo \u6307\u5b9a\u8fdb\u5ea6 curposition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/playercommon/b$6;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    .line 743
    :goto_37
    return-void

    .line 741
    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_37
.end method
