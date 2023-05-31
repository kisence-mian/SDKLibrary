.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;
.super Ljava/lang/Object;
.source "VideoFeedsAdView.java"

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;)V
    .registers 2

    .prologue
    .line 823
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 863
    return-void
.end method

.method public final onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 860
    return-void
.end method

.method public final onDownloadProgress(I)V
    .registers 2

    .prologue
    .line 856
    return-void
.end method

.method public final onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 852
    return-void
.end method

.method public final onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 845
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;

    iget-object v0, v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->i(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 846
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;

    iget-object v0, v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->i(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->hideTrackProgress()V

    .line 848
    :cond_15
    return-void
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .registers 2

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public final onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 835
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;

    iget-object v0, v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V

    .line 836
    return-void
.end method

.method public final onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 2

    .prologue
    .line 831
    return-void
.end method

.method public final onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 826
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;

    iget-object v0, v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->g(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V

    .line 827
    return-void
.end method
