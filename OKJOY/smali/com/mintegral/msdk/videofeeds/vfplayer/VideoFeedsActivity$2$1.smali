.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2$1;
.super Ljava/lang/Object;
.source "VideoFeedsActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;

    iget-object v0, v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/videofeeds/c/d;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 246
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;

    iget-object v0, v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/videofeeds/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/videofeeds/c/d;->a()V

    .line 248
    :cond_15
    return-void
.end method

.method public final onAdFramesLoaded(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    return-void
.end method

.method public final onAdLoadError(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 231
    return-void
.end method

.method public final onAdLoaded(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public final onLoggingImpression(I)V
    .registers 2

    .prologue
    .line 241
    return-void
.end method
