.class final Lcom/mintegral/msdk/video/module/MintegralVideoView$4;
.super Ljava/lang/Object;
.source "MintegralVideoView.java"

# interfaces
.implements Lcom/mintegral/msdk/videocommon/dialog/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralVideoView;->showAlertView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralVideoView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->d(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z

    .line 279
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setShowingAlertViewCover(Z)V

    .line 280
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->f(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V

    .line 282
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->d(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z

    .line 286
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setShowingAlertViewCover(Z)V

    .line 289
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$4;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/4 v1, 0x2

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 290
    return-void
.end method
