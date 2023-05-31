.class public final Lcom/mintegral/msdk/video/module/a/a/h;
.super Lcom/mintegral/msdk/video/module/a/a/k;
.source "PlayableStatisticsOnNotifyListener.java"


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 6

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/mintegral/msdk/video/module/a/a/k;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/videocommon/download/a;Lcom/mintegral/msdk/videocommon/b/d;Ljava/lang/String;Lcom/mintegral/msdk/video/module/a/a;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 21
    sparse-switch p1, :sswitch_data_3a

    .line 48
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/k;->a(ILjava/lang/Object;)V

    .line 49
    return-void

    .line 23
    :sswitch_8
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/h;->f()V

    .line 24
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/h;->e()V

    .line 25
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/a/a/h;->a(I)V

    goto :goto_4

    .line 28
    :sswitch_12
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/a/a/h;->b(I)V

    goto :goto_4

    .line 31
    :sswitch_16
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/a/a/h;->a()V

    goto :goto_4

    .line 34
    :sswitch_1a
    const-string v0, ""

    .line 35
    if-eqz p2, :cond_25

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_25

    move-object v0, p2

    .line 36
    check-cast v0, Ljava/lang/String;

    .line 38
    :cond_25
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/video/module/a/a/h;->a(ILjava/lang/String;)V

    goto :goto_4

    .line 41
    :sswitch_2a
    const-string v0, ""

    .line 42
    if-eqz p2, :cond_35

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_35

    move-object v0, p2

    .line 43
    check-cast v0, Ljava/lang/String;

    .line 45
    :cond_35
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/video/module/a/a/h;->a(ILjava/lang/String;)V

    goto :goto_4

    .line 21
    :sswitch_data_3a
    .sparse-switch
        0x64 -> :sswitch_8
        0x6d -> :sswitch_12
        0x76 -> :sswitch_2a
        0x77 -> :sswitch_1a
        0x7a -> :sswitch_16
    .end sparse-switch
.end method
