.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;
.super Ljava/lang/Object;
.source "VideoFeedsActivity.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


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
    .line 149
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 162
    return-void
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 153
    if-eqz p1, :cond_1e

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 154
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 155
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    :cond_1e
    return-void
.end method
