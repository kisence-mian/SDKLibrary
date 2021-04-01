.class public Lcom/mintegral/msdk/video/module/a/a/k;
.super Lcom/mintegral/msdk/video/module/a/a/f;
.source "StatisticsOnNotifyListener.java"


# instance fields
.field protected a:Z

.field protected b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field protected c:Lcom/mintegral/msdk/videocommon/download/a;

.field protected d:Lcom/mintegral/msdk/videocommon/b/d;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/mintegral/msdk/video/module/a/a;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/a/a/f;-><init>()V

    .line 46
    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/f;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/module/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->f:Lcom/mintegral/msdk/video/module/a/a;

    .line 48
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->g:Z

    .line 49
    iput-boolean v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->h:Z

    .line 52
    if-eqz p1, :cond_28

    invoke-static {p4}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p2, :cond_28

    if-eqz p5, :cond_28

    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 54
    iput-object p4, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    .line 56
    iput-object p3, p0, Lcom/mintegral/msdk/video/module/a/a/k;->d:Lcom/mintegral/msdk/videocommon/b/d;

    .line 57
    iput-object p5, p0, Lcom/mintegral/msdk/video/module/a/a/k;->f:Lcom/mintegral/msdk/video/module/a/a;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    .line 60
    :cond_28
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_42

    .line 81
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v5

    .line 82
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000061"

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 83
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_43

    sget v1, Lcom/mintegral/msdk/base/entity/q;->a:I

    :goto_32
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->a(I)V

    .line 85
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->d(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    :cond_42
    return-void

    .line 84
    :cond_43
    sget v1, Lcom/mintegral/msdk/base/entity/q;->b:I

    goto :goto_32
.end method

.method public final a(I)V
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_7

    .line 70
    packed-switch p1, :pswitch_data_16

    .line 77
    :cond_7
    :goto_7
    return-void

    .line 73
    :pswitch_8
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1, p1}, Lcom/mintegral/msdk/video/module/b/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    goto :goto_7

    .line 70
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->f:Lcom/mintegral/msdk/video/module/a/a;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 11

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_33

    .line 91
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v5

    .line 92
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000062"

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 93
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/e/a;->e(Lcom/mintegral/msdk/base/entity/q;Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    :cond_33
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 282
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_6e

    .line 283
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v6

    .line 284
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 286
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    .line 287
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000021"

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 288
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_46
    :goto_46
    if-eqz v0, :cond_6e

    .line 298
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->e(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J

    .line 309
    :cond_6e
    :goto_6e
    return-void

    .line 291
    :cond_6f
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 292
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    .line 293
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000021"

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 294
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    goto :goto_46

    .line 307
    :catch_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 139
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/l;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/mintegral/msdk/base/entity/f;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/f;-><init>()V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/entity/f;->a(J)V

    .line 142
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/f;->b(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/f;->a(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/entity/f;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_47} :catch_48

    .line 149
    :cond_47
    :goto_47
    return-void

    .line 146
    :catch_48
    move-exception v0

    .line 147
    const-string v1, "NotifyListener"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47
.end method

.method public final b(I)V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_35

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x1

    if-eq p1, v1, :cond_16

    if-ne p1, v2, :cond_35

    .line 106
    :cond_16
    const-string v1, "endscreen_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 107
    if-ne p1, v2, :cond_36

    .line 108
    const-string v1, "endscreen_type=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 109
    const-string v1, "endscreen_type=1"

    const-string v2, "endscreen_type=2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 128
    :cond_35
    return-void

    .line 112
    :cond_36
    const-string v1, "endscreen_type=2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 113
    const-string v1, "endscreen_type=2"

    const-string v2, "endscreen_type=1"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 117
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 119
    const-string v0, "&endscreen_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    :goto_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 121
    :cond_62
    const-string v0, "?endscreen_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_5d
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 157
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 158
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/a/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 163
    :cond_1b
    :goto_1b
    return-void

    .line 160
    :catch_1c
    move-exception v0

    .line 161
    const-string v1, "NotifyListener"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method protected final d()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_a

    .line 177
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Z)V

    .line 179
    :cond_a
    return-void
.end method

.method protected final e()V
    .registers 7

    .prologue
    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_56

    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 188
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->h:Z

    if-nez v0, :cond_56

    .line 191
    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 195
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/k;->c()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->h:Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    .line 201
    :cond_56
    :goto_56
    return-void

    .line 199
    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56
.end method

.method protected final f()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 208
    :try_start_1
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->g:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->g:Z

    .line 212
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    .line 213
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getSpareOfferFlag()I

    move-result v0

    if-ne v0, v1, :cond_39

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&to=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_39
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 217
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/video/module/b/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/video/module/a/a/k$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/a/a/k$1;-><init>(Lcom/mintegral/msdk/video/module/a/a/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1237
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1244
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_81

    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->d:Ljava/util/Map;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1245
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 1246
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/k;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const-string v2, "reward"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_81} :catch_82

    .line 224
    :cond_81
    :goto_81
    return-void

    .line 221
    :catch_82
    move-exception v0

    .line 222
    const-string v1, "NotifyListener"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_81
.end method

.method protected final g()V
    .registers 5

    .prologue
    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->a:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_7e

    .line 254
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    .line 255
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 256
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/v;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/v;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/v;->a(Ljava/lang/String;)V

    .line 261
    :cond_3d
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 262
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/k;->c:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 266
    if-eqz v0, :cond_7e

    .line 267
    const-string v0, "NotifyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEL File :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    .line 275
    :cond_7e
    :goto_7e
    return-void

    .line 273
    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7e
.end method
