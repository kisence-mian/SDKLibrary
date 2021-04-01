.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;
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
    .line 232
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->h(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 237
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z

    .line 238
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->i(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_feeds_sound_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 240
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->g()V

    .line 250
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->g(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    .line 251
    return-void

    .line 244
    :cond_3c
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z

    .line 245
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->i(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_feeds_sound_open"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 247
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->h()V

    goto :goto_36
.end method
