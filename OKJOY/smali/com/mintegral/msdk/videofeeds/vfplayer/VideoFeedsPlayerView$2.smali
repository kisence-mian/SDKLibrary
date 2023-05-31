.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;
.super Ljava/lang/Object;
.source "VideoFeedsPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 185
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    .line 191
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->start()V

    .line 197
    :goto_12
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    .line 201
    :goto_17
    return-void

    .line 194
    :cond_18
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "\u70b9\u51fb\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->playVideo(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_12

    .line 199
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
