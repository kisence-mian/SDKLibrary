.class public Lcom/mintegral/msdk/video/module/a/a/d;
.super Lcom/mintegral/msdk/video/module/a/a/k;
.source "ContainerViewStatisticsListener.java"


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 6

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/mintegral/msdk/video/module/a/a/k;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 29
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/k;->a(ILjava/lang/Object;)V

    .line 30
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/a/a/d;->a:Z

    if-eqz v0, :cond_c

    .line 31
    packed-switch p1, :pswitch_data_b6

    .line 87
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 34
    :pswitch_d
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/a/a/d;->b(I)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/a/a/d;->a(I)V

    goto :goto_c

    .line 39
    :pswitch_14
    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/video/module/a/a/d;->b(I)V

    .line 40
    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/video/module/a/a/d;->a(I)V

    goto :goto_c

    .line 44
    :pswitch_1b
    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/video/module/a/a/d;->a(I)V

    goto :goto_c

    .line 51
    :pswitch_1f
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/video/module/b/a;->d(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 52
    const/16 v0, 0x69

    if-eq p1, v0, :cond_c

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 58
    sget-object v0, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    :cond_63
    :goto_63
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/d;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/d;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_c

    .line 61
    :cond_74
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    .line 81
    :pswitch_b1
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/d;->a()V

    goto/16 :goto_c

    .line 31
    :pswitch_data_b6
    .packed-switch 0x64
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1f
        :pswitch_1f
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_c
        :pswitch_1f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b1
    .end packed-switch
.end method
