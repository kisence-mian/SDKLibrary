.class final Lcom/mintegral/msdk/video/module/MintegralVideoView$2;
.super Ljava/lang/Object;
.source "MintegralVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/video/module/MintegralVideoView;->a()V
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
    .line 209
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$2;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 213
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$2;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->b(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Lcom/mintegral/msdk/playercommon/PlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/playercommon/PlayerView;->isSilent()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 215
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 217
    :cond_16
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$2;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v1, v1, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 218
    return-void
.end method
