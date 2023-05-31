.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;
.super Ljava/lang/Object;
.source "VideoFeedsAdView.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


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
    .line 619
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 632
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 623
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 624
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 625
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 627
    :cond_1e
    return-void
.end method
