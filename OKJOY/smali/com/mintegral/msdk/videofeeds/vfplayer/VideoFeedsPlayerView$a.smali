.class final Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;
.super Ljava/lang/Object;
.source "VideoFeedsPlayerView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V
    .registers 2

    .prologue
    .line 513
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;B)V
    .registers 3

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .prologue
    .line 559
    :try_start_0
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->p(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->s(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 562
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->start()V

    .line 565
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 569
    :goto_22
    return-void

    .line 567
    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 518
    :try_start_0
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 520
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 521
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/b;->a(Landroid/view/SurfaceHolder;)V

    .line 530
    :cond_1f
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 531
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->o(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->p(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->q(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_48

    .line 532
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->start()V

    .line 536
    :cond_48
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->r(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 541
    :goto_4d
    return-void

    .line 539
    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 547
    :try_start_0
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "surfaceDestroyed "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z

    .line 549
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->b()V

    .line 550
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;->a:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showPlayEndView()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 554
    :goto_1b
    return-void

    .line 552
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method
