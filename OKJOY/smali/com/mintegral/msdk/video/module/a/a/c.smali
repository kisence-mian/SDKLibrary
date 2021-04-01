.class public final Lcom/mintegral/msdk/video/module/a/a/c;
.super Lcom/mintegral/msdk/video/module/a/a/d;
.source "ContainerViewJSListener.java"


# instance fields
.field private g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/js/factory/IJSFactory;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 13

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/video/module/a/a/d;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    .line 24
    if-nez p1, :cond_10

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/c;->a:Z

    .line 27
    :cond_10
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 31
    iget-boolean v1, p0, Lcom/mintegral/msdk/video/module/a/a/c;->a:Z

    if-eqz v1, :cond_9

    .line 32
    packed-switch p1, :pswitch_data_7e

    .line 66
    :cond_9
    :goto_9
    :pswitch_9
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/d;->a(ILjava/lang/Object;)V

    .line 67
    return-void

    .line 34
    :pswitch_d
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/video/js/h;->setCover(Z)V

    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/h;->videoOperate(I)V

    goto :goto_9

    .line 39
    :pswitch_21
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/d;->showVideoClickView(I)V

    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/h;->setCover(Z)V

    .line 41
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/video/js/h;->videoOperate(I)V

    goto :goto_9

    .line 54
    :pswitch_3e
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "======="

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pt:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3, v1}, Lcom/mintegral/msdk/video/js/e;->a(ILjava/lang/String;)V

    move p1, v0

    .line 59
    goto :goto_9

    .line 61
    :pswitch_62
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/c;->g:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v1

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getBorderViewWidth()I

    move-result v2

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getBorderViewHeight()I

    move-result v3

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getBorderViewRadius()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/mintegral/msdk/video/js/d;->resizeMiniCard(III)V

    goto :goto_9

    .line 32
    :pswitch_data_7e
    .packed-switch 0x64
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3e
        :pswitch_9
        :pswitch_21
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_62
    .end packed-switch
.end method
