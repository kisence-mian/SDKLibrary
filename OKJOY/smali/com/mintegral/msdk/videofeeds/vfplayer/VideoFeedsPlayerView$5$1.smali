.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5$1;
.super Ljava/lang/Object;
.source "VideoFeedsPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;

    iget-object v0, v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    return-void
.end method
