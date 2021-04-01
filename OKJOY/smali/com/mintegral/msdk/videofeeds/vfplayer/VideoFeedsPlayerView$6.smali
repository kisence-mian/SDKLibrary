.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;
.super Ljava/lang/Object;
.source "VideoFeedsPlayerView.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 339
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 345
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->l(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    if-nez v1, :cond_20

    .line 347
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "campaign is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_1f
    return-void

    .line 351
    :cond_20
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 352
    const-string v2, "2000044"

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 354
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->l(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->l(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->d(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->l(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_1f

    .line 361
    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 369
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;->b:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    :cond_13
    return-void
.end method
