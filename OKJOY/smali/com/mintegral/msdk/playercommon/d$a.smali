.class final Lcom/mintegral/msdk/playercommon/d$a;
.super Ljava/util/TimerTask;
.source "VideoNativePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/d;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/playercommon/d;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/playercommon/d;B)V
    .registers 3

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/playercommon/d$a;-><init>(Lcom/mintegral/msdk/playercommon/d;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 255
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    iget-object v1, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v1}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;I)I

    .line 256
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->b(Lcom/mintegral/msdk/playercommon/d;)I

    move-result v0

    div-int/lit8 v1, v0, 0x64

    .line 260
    const/4 v0, 0x0

    .line 261
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lez v2, :cond_4c

    .line 262
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    .line 265
    :cond_4c
    if-ltz v1, :cond_61

    if-lez v0, :cond_61

    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/d;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 266
    iget-object v2, p0, Lcom/mintegral/msdk/playercommon/d$a;->a:Lcom/mintegral/msdk/playercommon/d;

    invoke-static {v2, v1, v0}, Lcom/mintegral/msdk/playercommon/d;->b(Lcom/mintegral/msdk/playercommon/d;II)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    .line 274
    :cond_61
    :goto_61
    return-void

    .line 271
    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61
.end method
