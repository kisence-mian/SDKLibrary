.class public final Lcom/mintegral/msdk/video/module/a/a/n;
.super Lcom/mintegral/msdk/video/module/a/a/o;
.source "VideoViewJSListener.java"


# instance fields
.field private h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/js/factory/IJSFactory;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;IILcom/mintegral/msdk/video/module/a/a;D)V
    .registers 20

    .prologue
    .line 29
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/mintegral/msdk/video/module/a/a/o;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;D)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->j:Z

    .line 30
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    .line 31
    iput p6, p0, Lcom/mintegral/msdk/video/module/a/a/n;->i:I

    .line 32
    if-nez p7, :cond_1e

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->j:Z

    .line 33
    if-nez p1, :cond_1d

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->a:Z

    .line 36
    :cond_1d
    return-void

    .line 32
    :cond_1e
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 40
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->a:Z

    if-eqz v0, :cond_c

    .line 41
    sparse-switch p1, :sswitch_data_1e8

    .line 153
    :cond_c
    :goto_c
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/o;->a(ILjava/lang/Object;)V

    .line 154
    return-void

    .line 43
    :sswitch_10
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/d;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v2, v1}, Lcom/mintegral/msdk/video/js/e;->a(ILjava/lang/String;)V

    goto :goto_c

    .line 51
    :sswitch_28
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/mintegral/msdk/video/js/h;->videoOperate(I)V

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v5, :cond_8b

    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Lcom/mintegral/msdk/video/js/h;->setVisible(I)V

    .line 59
    :goto_44
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1e5

    move v0, v1

    .line 62
    :goto_49
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v2}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mintegral/msdk/video/js/e;->a(I)V

    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->g()I

    move-result v0

    if-ne v0, v1, :cond_95

    .line 64
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mintegral/msdk/video/js/h;->setVisible(I)V

    .line 65
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v5

    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewTop()I

    move-result v1

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewLeft()I

    move-result v2

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewWidth()I

    move-result v3

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewHeight()I

    move-result v4

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewRadius()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/mintegral/msdk/video/js/d;->showMiniCard(IIIII)V

    goto :goto_c

    .line 56
    :cond_8b
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mintegral/msdk/video/js/h;->setVisible(I)V

    goto :goto_44

    .line 68
    :cond_95
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/n;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/d;->showEndcard(I)V

    goto/16 :goto_c

    .line 75
    :sswitch_a6
    if-ne p1, v1, :cond_b3

    .line 76
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v0

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lcom/mintegral/msdk/video/js/e;->a(ILjava/lang/String;)V

    .line 79
    :cond_b3
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/mintegral/msdk/video/js/h;->videoOperate(I)V

    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->g()I

    move-result v0

    if-eq v0, v1, :cond_10f

    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v5, :cond_105

    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Lcom/mintegral/msdk/video/js/h;->setVisible(I)V

    .line 89
    :goto_db
    iget v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->i:I

    if-ne v0, v1, :cond_10f

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/d;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/n;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/d;->showEndcard(I)V

    .line 96
    :goto_fa
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/video/js/e;->a(I)V

    goto/16 :goto_c

    .line 86
    :cond_105
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mintegral/msdk/video/js/h;->setVisible(I)V

    goto :goto_db

    .line 92
    :cond_10f
    const/16 p1, 0x10

    goto :goto_fa

    .line 100
    :sswitch_112
    if-eqz p2, :cond_c

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    move-object v0, p2

    .line 101
    check-cast v0, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_142

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    :goto_125
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/mintegral/msdk/video/js/h;->soundOperate(II)V

    .line 109
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/mintegral/msdk/video/js/e;->a(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 105
    :cond_142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_125

    .line 114
    :sswitch_147
    if-eqz p2, :cond_c

    instance-of v0, p2, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    if-eqz v0, :cond_c

    move-object v0, p2

    .line 115
    check-cast v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    .line 120
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/n;->j:Z

    .line 122
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/video/js/e;->a(Lcom/mintegral/msdk/video/module/MintegralVideoView$a;)V

    goto/16 :goto_c

    .line 126
    :sswitch_15d
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mintegral/msdk/video/js/e;->a(I)V

    goto/16 :goto_c

    .line 130
    :sswitch_168
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->isH5Canvas()Z

    move-result v0

    if-nez v0, :cond_17d

    .line 131
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Lcom/mintegral/msdk/video/js/h;->closeVideoOperate(II)V

    .line 133
    :cond_17d
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSNotifyProxy()Lcom/mintegral/msdk/video/js/e;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/mintegral/msdk/video/js/e;->a(I)V

    goto/16 :goto_c

    .line 137
    :sswitch_188
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->j:Z

    if-nez v0, :cond_c

    .line 138
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Lcom/mintegral/msdk/video/js/h;->closeVideoOperate(II)V

    goto/16 :goto_c

    .line 142
    :sswitch_197
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->g()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 143
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v5

    .line 144
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v0

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewTop()I

    move-result v1

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewLeft()I

    move-result v2

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewWidth()I

    move-result v3

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewHeight()I

    move-result v4

    invoke-interface {v5}, Lcom/mintegral/msdk/video/js/h;->getBorderViewRadius()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/mintegral/msdk/video/js/d;->showMiniCard(IIIII)V

    goto/16 :goto_c

    .line 148
    :sswitch_1c8
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSVideoModule()Lcom/mintegral/msdk/video/js/h;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/n;->h:Lcom/mintegral/msdk/video/js/factory/IJSFactory;

    invoke-interface {v1}, Lcom/mintegral/msdk/video/js/factory/IJSFactory;->getJSContainerModule()Lcom/mintegral/msdk/video/js/d;

    move-result-object v1

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getBorderViewWidth()I

    move-result v2

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getBorderViewHeight()I

    move-result v3

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/h;->getBorderViewRadius()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/mintegral/msdk/video/js/d;->configurationChanged(III)V

    goto/16 :goto_c

    :cond_1e5
    move v0, v2

    goto/16 :goto_49

    .line 41
    :sswitch_data_1e8
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_a6
        0x5 -> :sswitch_112
        0x6 -> :sswitch_a6
        0xa -> :sswitch_15d
        0xb -> :sswitch_28
        0xc -> :sswitch_28
        0xd -> :sswitch_168
        0xe -> :sswitch_188
        0xf -> :sswitch_147
        0x72 -> :sswitch_197
        0x74 -> :sswitch_1c8
    .end sparse-switch
.end method
