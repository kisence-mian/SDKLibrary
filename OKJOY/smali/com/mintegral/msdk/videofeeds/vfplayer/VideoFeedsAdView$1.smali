.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$1;
.super Ljava/lang/Object;
.source "VideoFeedsAdView.java"

# interfaces
.implements Lcom/mintegral/msdk/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a()Ljava/lang/String;
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
    .line 324
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 327
    const/16 v0, 0x64

    if-ne p3, v0, :cond_1f

    .line 329
    :try_start_4
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/io/File;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(JZ)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_20

    .line 334
    :cond_1f
    :goto_1f
    return-void

    .line 331
    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public final onCacheError(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->a(Ljava/lang/String;)V

    .line 339
    return-void
.end method
