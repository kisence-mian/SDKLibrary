.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;
.super Lcom/mintegral/msdk/widget/a;
.source "VideoFeedsAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V
    .registers 2

    .prologue
    .line 814
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/click/a;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 820
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videofeeds/c/d;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 821
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videofeeds/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/videofeeds/c/d;->a()V

    .line 823
    :cond_21
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/click/a;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3$1;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 865
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/click/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 867
    :cond_3e
    return-void
.end method
