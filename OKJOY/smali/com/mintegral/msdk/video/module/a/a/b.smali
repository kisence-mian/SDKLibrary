.class public final Lcom/mintegral/msdk/video/module/a/a/b;
.super Lcom/mintegral/msdk/video/module/a/a/d;
.source "ContainerViewDefaultListener.java"


# instance fields
.field private g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

.field private h:Lcom/mintegral/msdk/video/module/MintegralContainerView;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 14

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p3

    move-object v2, p5

    move-object v3, p4

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/video/module/a/a/d;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    .line 24
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    .line 25
    iput-object p2, p0, Lcom/mintegral/msdk/video/module/a/a/b;->h:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    .line 26
    if-eqz p1, :cond_11

    if-nez p2, :cond_14

    .line 27
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->a:Z

    .line 29
    :cond_14
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 33
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->a:Z

    if-eqz v0, :cond_8

    .line 34
    packed-switch p1, :pswitch_data_42

    .line 63
    :cond_8
    :goto_8
    :pswitch_8
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/d;->a(ILjava/lang/Object;)V

    .line 64
    return-void

    .line 36
    :pswitch_c
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setCover(Z)V

    .line 37
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->videoOperate(I)V

    goto :goto_8

    .line 41
    :pswitch_18
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->h:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showVideoClickView(I)V

    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setCover(Z)V

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->videoOperate(I)V

    goto :goto_8

    .line 59
    :pswitch_2a
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/b;->h:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/b;->g:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v3}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewRadius()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->resizeMiniCard(III)V

    goto :goto_8

    .line 34
    :pswitch_data_42
    .packed-switch 0x64
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_18
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_2a
    .end packed-switch
.end method
