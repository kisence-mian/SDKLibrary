.class final Lcom/mintegral/msdk/playercommon/PlayerView$a;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/playercommon/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/playercommon/PlayerView;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/playercommon/PlayerView;)V
    .registers 2

    .prologue
    .line 364
    iput-object p1, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/playercommon/PlayerView;B)V
    .registers 3

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/playercommon/PlayerView$a;-><init>(Lcom/mintegral/msdk/playercommon/PlayerView;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .prologue
    .line 397
    :try_start_0
    const-string v0, "PlayerView"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->d(Lcom/mintegral/msdk/playercommon/PlayerView;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->e(Lcom/mintegral/msdk/playercommon/PlayerView;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_37

    .line 401
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->a(Lcom/mintegral/msdk/playercommon/PlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->k()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 402
    const-string v0, "PlayerView"

    const-string v1, "surfaceChanged  start===="

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->resumeStar()V

    .line 411
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->a(Lcom/mintegral/msdk/playercommon/PlayerView;Z)Z

    .line 415
    :goto_3d
    return-void

    .line 405
    :cond_3e
    const-string v0, "PlayerView"

    const-string v1, "surfaceChanged  PLAY===="

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->playVideo(I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_37

    .line 413
    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 369
    :try_start_0
    const-string v0, "PlayerView"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->a(Lcom/mintegral/msdk/playercommon/PlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 371
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/playercommon/PlayerView;->a(Lcom/mintegral/msdk/playercommon/PlayerView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 372
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->a(Lcom/mintegral/msdk/playercommon/PlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/b;->a(Landroid/view/SurfaceHolder;)V

    .line 375
    :cond_1f
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->b(Lcom/mintegral/msdk/playercommon/PlayerView;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 379
    :goto_24
    return-void

    .line 377
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 385
    :try_start_0
    const-string v0, "PlayerView"

    const-string v1, "surfaceDestroyed "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->a(Lcom/mintegral/msdk/playercommon/PlayerView;Z)Z

    .line 387
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->c(Lcom/mintegral/msdk/playercommon/PlayerView;)Z

    .line 388
    iget-object v0, p0, Lcom/mintegral/msdk/playercommon/PlayerView$a;->a:Lcom/mintegral/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/playercommon/PlayerView;->a(Lcom/mintegral/msdk/playercommon/PlayerView;)Lcom/mintegral/msdk/playercommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->b()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 392
    :goto_1b
    return-void

    .line 390
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method
