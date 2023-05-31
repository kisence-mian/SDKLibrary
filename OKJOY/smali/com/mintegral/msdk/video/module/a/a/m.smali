.class public final Lcom/mintegral/msdk/video/module/a/a/m;
.super Lcom/mintegral/msdk/video/module/a/a/o;
.source "VideoViewDefaultListener.java"


# instance fields
.field private h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

.field private i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

.field private j:I

.field private k:Ljava/util/Timer;

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;Lcom/mintegral/msdk/video/module/MintegralContainerView;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;IILcom/mintegral/msdk/video/module/a/a;D)V
    .registers 22

    .prologue
    .line 44
    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-wide/from16 v8, p10

    invoke-direct/range {v2 .. v9}, Lcom/mintegral/msdk/video/module/a/a/o;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;D)V

    .line 37
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/m;->l:Landroid/os/Handler;

    .line 39
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/m;->m:Z

    .line 45
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    .line 46
    iput-object p2, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    .line 47
    move/from16 v0, p7

    iput v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->n:I

    .line 48
    move/from16 v0, p8

    iput v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->j:I

    .line 49
    if-eqz p1, :cond_2e

    .line 50
    invoke-virtual {p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getVideoSkipTime()I

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x1

    :goto_2c
    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/m;->m:Z

    .line 52
    :cond_2e
    if-eqz p1, :cond_32

    if-nez p2, :cond_35

    .line 53
    :cond_32
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/m;->a:Z

    .line 55
    :cond_35
    return-void

    .line 50
    :cond_36
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method static synthetic a(Lcom/mintegral/msdk/video/module/a/a/m;)Lcom/mintegral/msdk/video/module/MintegralContainerView;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/video/module/a/a/m;)Lcom/mintegral/msdk/video/module/MintegralVideoView;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/video/module/a/a/m;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .registers 2

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->k:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 168
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->k:Ljava/util/Timer;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 174
    :cond_c
    :goto_c
    return-void

    .line 172
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->a:Z

    if-eqz v0, :cond_c

    .line 60
    packed-switch p1, :pswitch_data_128

    .line 161
    :cond_c
    :goto_c
    :pswitch_c
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/o;->a(ILjava/lang/Object;)V

    .line 162
    return-void

    .line 62
    :pswitch_10
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getVideoInteractiveType()I

    move-result v0

    packed-switch v0, :pswitch_data_14a

    goto :goto_c

    .line 68
    :pswitch_22
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->miniCardLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, v5}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showVideoClickView(I)V

    goto :goto_c

    .line 74
    :pswitch_30
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->isLast()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, v4}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showVideoClickView(I)V

    .line 76
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3, v4}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(II)V

    .line 1178
    :try_start_42
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/a/a/m;->h()V

    .line 1179
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->k:Ljava/util/Timer;

    .line 1180
    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/m$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/video/module/a/a/m$1;-><init>(Lcom/mintegral/msdk/video/module/a/a/m;)V

    .line 1198
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->k:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_58} :catch_59

    goto :goto_c

    .line 1200
    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 79
    :cond_5e
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showVideoClickView(I)V

    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3, v5}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(II)V

    .line 81
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/a/a/m;->h()V

    goto :goto_c

    .line 90
    :pswitch_6c
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->videoOperate(I)V

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v0

    if-eq v0, v1, :cond_8c

    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setVisibility(I)V

    .line 97
    :goto_80
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showEndcard(I)V

    goto :goto_c

    .line 95
    :cond_8c
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setVisibility(I)V

    goto :goto_80

    .line 102
    :pswitch_92
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->videoOperate(I)V

    .line 104
    iget v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->n:I

    if-ne v0, v5, :cond_b0

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->endCardShowing()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showEndcard(I)V

    goto/16 :goto_c

    .line 109
    :cond_b0
    const/16 p1, 0x10

    .line 111
    goto/16 :goto_c

    .line 115
    :pswitch_b4
    if-eqz p2, :cond_c

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    move-object v0, p2

    .line 116
    check-cast v0, Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_d2

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 122
    :goto_c7
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(II)V

    goto/16 :goto_c

    .line 120
    :cond_d2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c7

    .line 128
    :pswitch_d7
    if-eqz p2, :cond_c

    instance-of v0, p2, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    if-eqz v0, :cond_c

    move-object v0, p2

    .line 129
    check-cast v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    .line 131
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->getVideoInteractiveType()I

    move-result v1

    .line 132
    if-ltz v1, :cond_f6

    iget v2, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->a:I

    if-lt v2, v1, :cond_f6

    .line 133
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->i:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v1, v4}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showVideoClickView(I)V

    .line 134
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v1, v3, v4}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(II)V

    .line 137
    :cond_f6
    iget v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->j:I

    if-ltz v1, :cond_c

    iget v0, v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->a:I

    iget v1, p0, Lcom/mintegral/msdk/video/module/a/a/m;->j:I

    if-lt v0, v1, :cond_c

    .line 138
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3, v5}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->closeVideoOperate(II)V

    .line 139
    iput-boolean v4, p0, Lcom/mintegral/msdk/video/module/a/a/m;->m:Z

    goto/16 :goto_c

    .line 145
    :pswitch_109
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3, v5}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(II)V

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3, v5}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->progressOperate(II)V

    goto/16 :goto_c

    .line 151
    :pswitch_115
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3, v5}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->closeVideoOperate(II)V

    goto/16 :goto_c

    .line 155
    :pswitch_11c
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->m:Z

    if-nez v0, :cond_c

    .line 156
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/m;->h:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, v3, v4}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->closeVideoOperate(II)V

    goto/16 :goto_c

    .line 60
    nop

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_10
        :pswitch_92
        :pswitch_c
        :pswitch_c
        :pswitch_b4
        :pswitch_92
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_109
        :pswitch_6c
        :pswitch_6c
        :pswitch_115
        :pswitch_11c
        :pswitch_d7
    .end packed-switch

    .line 64
    :pswitch_data_14a
    .packed-switch -0x2
        :pswitch_22
        :pswitch_30
    .end packed-switch
.end method
