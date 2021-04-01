.class final Lcom/mintegral/msdk/video/module/MintegralVideoView$1;
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
    .line 200
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$1;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$1;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$1;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 205
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVideoView$1;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->a(Lcom/mintegral/msdk/video/module/MintegralVideoView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;->CLICK:Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->adUserInteraction(Lcom/iab/omid/library/mintegral/adsession/video/InteractionType;)V

    .line 207
    :cond_1d
    return-void
.end method
