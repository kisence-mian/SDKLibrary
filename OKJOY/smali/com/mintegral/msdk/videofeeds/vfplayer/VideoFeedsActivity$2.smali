.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;
.super Lcom/mintegral/msdk/widget/a;
.source "VideoFeedsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->d(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/click/a;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 221
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->d(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/click/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    new-instance v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2$1;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2$1;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    .line 251
    :cond_24
    return-void
.end method
