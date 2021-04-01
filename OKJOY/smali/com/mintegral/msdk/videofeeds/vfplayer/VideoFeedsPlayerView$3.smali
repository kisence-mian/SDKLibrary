.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;
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
    .line 215
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->d(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 221
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z

    .line 222
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->f(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    .line 229
    :goto_1e
    return-void

    .line 225
    :cond_1f
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z

    .line 226
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->g(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    goto :goto_1e
.end method
