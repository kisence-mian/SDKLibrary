.class public Lcom/mintegral/msdk/video/module/a/a/o;
.super Lcom/mintegral/msdk/video/module/a/a/k;
.source "VideoViewStatisticsListener.java"


# instance fields
.field protected g:D

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/b/d;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;D)V
    .registers 14

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/video/module/a/a/k;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/o;->l:Z

    .line 29
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/mintegral/msdk/video/module/a/a/o;->g:D

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/video/module/a/a/o;->n:I

    .line 41
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/o;->a:Z

    if-eqz v0, :cond_1d

    .line 42
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/o;->m:Ljava/util/Map;

    .line 44
    :cond_1d
    iput-wide p6, p0, Lcom/mintegral/msdk/video/module/a/a/o;->g:D

    .line 45
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    packed-switch p1, :pswitch_data_17e

    .line 142
    :cond_5
    :goto_5
    :pswitch_5
    :try_start_5
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->f:Lcom/mintegral/msdk/video/module/a/a;

    invoke-interface {v2, p1, p2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 146
    :goto_a
    return-void

    .line 56
    :pswitch_b
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->a:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 57
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 59
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->i:Z

    if-nez v2, :cond_5

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->i:Z

    .line 61
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v2, v3}, Lcom/mintegral/msdk/video/module/b/a;->b(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_34} :catch_35

    goto :goto_5

    .line 143
    :catch_35
    move-exception v2

    .line 144
    const-string v3, "NotifyListener"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 63
    :cond_40
    if-ne v2, v4, :cond_5

    .line 64
    :try_start_42
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->h:Z

    if-nez v2, :cond_5

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->h:Z

    .line 66
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v2, v3}, Lcom/mintegral/msdk/video/module/b/a;->c(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    goto :goto_5

    .line 76
    :pswitch_57
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->a:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->j:Z

    if-nez v2, :cond_5

    .line 77
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->j:Z

    .line 78
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->d()V

    .line 79
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v2, v3}, Lcom/mintegral/msdk/video/module/b/a;->e(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    goto :goto_5

    .line 87
    :pswitch_73
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->f()V

    .line 88
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->e()V

    .line 91
    if-eqz p2, :cond_17b

    instance-of v2, p2, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    if-eqz v2, :cond_17b

    .line 92
    move-object v0, p2

    check-cast v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    move-object v2, v0

    iget v4, v2, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->a:I

    .line 93
    move-object v0, p2

    check-cast v0, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;

    move-object v2, v0

    iget v5, v2, Lcom/mintegral/msdk/video/module/MintegralVideoView$a;->b:I

    .line 95
    :goto_8b
    if-nez v5, :cond_97

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v2, :cond_97

    .line 96
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v5

    .line 98
    :cond_97
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v2, v3, v4, v5}, Lcom/mintegral/msdk/video/module/b/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    .line 99
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->m:Ljava/util/Map;

    iget-object v6, p0, Lcom/mintegral/msdk/video/module/a/a/o;->e:Ljava/lang/String;

    invoke-static {v2, v3, v6, v4}, Lcom/mintegral/msdk/video/module/b/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/util/Map;Ljava/lang/String;I)V

    .line 100
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->k:Z

    if-nez v2, :cond_bb

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->k:Z

    .line 102
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mintegral/msdk/video/module/b/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 104
    :cond_bb
    iget-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->l:Z

    if-nez v2, :cond_cd

    int-to-double v2, v4

    int-to-double v6, v5

    iget-wide v8, p0, Lcom/mintegral/msdk/video/module/a/a/o;->g:D

    mul-double/2addr v6, v8

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_cd

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->l:Z

    .line 106
    const/16 p1, 0x11

    .line 108
    :cond_cd
    const-string v2, "NotifyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "==========onPlayProgress:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->e:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v7

    .line 110
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v2

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v3, :cond_135

    const-string v3, ""

    :goto_109
    invoke-virtual {v7}, Lcom/mintegral/msdk/videocommon/e/c;->t()I

    move-result v6

    invoke-virtual {v7}, Lcom/mintegral/msdk/videocommon/e/c;->s()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/mintegral/msdk/f/f;->a(Ljava/lang/String;IIII)V

    .line 111
    iget v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->n:I

    if-ne v2, v4, :cond_131

    .line 112
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v2

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v3

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v2, :cond_13c

    const-string v2, ""

    :goto_12e
    invoke-virtual {v3, v2}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 114
    :cond_131
    iput v4, p0, Lcom/mintegral/msdk/video/module/a/a/o;->n:I

    goto/16 :goto_5

    .line 110
    :cond_135
    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    goto :goto_109

    .line 112
    :cond_13c
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/o;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    goto :goto_12e

    .line 1169
    :pswitch_143
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/videocommon/download/c;->b(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->d()V

    goto/16 :goto_5

    .line 126
    :pswitch_150
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->b()V

    .line 128
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->c()V

    goto/16 :goto_5

    .line 132
    :pswitch_158
    if-eqz p2, :cond_165

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_165

    .line 133
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/video/module/a/a/o;->a(Ljava/lang/String;)V

    .line 135
    :cond_165
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->d()V

    .line 136
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->b()V

    .line 137
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->c()V

    .line 138
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/o;->g()V

    .line 2169
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/videocommon/download/c;->b(Z)V
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_179} :catch_35

    goto/16 :goto_5

    :cond_17b
    move v4, v5

    goto/16 :goto_8b

    .line 51
    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_57
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_57
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_143
        :pswitch_158
        :pswitch_150
        :pswitch_5
        :pswitch_73
        :pswitch_57
    .end packed-switch
.end method
