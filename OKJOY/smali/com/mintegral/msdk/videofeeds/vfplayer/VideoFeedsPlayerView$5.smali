.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;
.super Ljava/util/TimerTask;
.source "VideoFeedsPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V
    .registers 2

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 264
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "\u9690\u85cf\u8fdb\u5ea6\u6761"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->k(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5$1;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method
