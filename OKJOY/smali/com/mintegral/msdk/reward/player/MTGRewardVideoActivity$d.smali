.class final Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;
.super Lcom/mintegral/msdk/video/module/a/a/f;
.source "MTGRewardVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 785
    iput-object p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/a/a/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V
    .registers 3

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 788
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 789
    sparse-switch p1, :sswitch_data_8c

    .line 820
    :cond_7
    :goto_7
    return-void

    .line 791
    :sswitch_8
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;Z)Z

    .line 793
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/d;->a()V

    .line 794
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/reward/d/a;->b(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    goto :goto_7

    .line 798
    :sswitch_29
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->m(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z

    goto :goto_7

    .line 803
    :sswitch_2f
    const/16 v0, 0xc

    if-ne p1, v0, :cond_51

    .line 804
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    const-string v1, "play error"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/d;->a(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->b(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "play error"

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_51
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0, v4}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;Z)Z

    .line 808
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 809
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->f(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->skipped()V

    goto :goto_7

    .line 813
    :sswitch_6b
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->d()V

    goto :goto_7

    .line 816
    :sswitch_75
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/d;->b(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$d;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0, v4}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->a(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;Z)Z

    goto/16 :goto_7

    .line 789
    nop

    :sswitch_data_8c
    .sparse-switch
        0x2 -> :sswitch_2f
        0xa -> :sswitch_8
        0xb -> :sswitch_2f
        0xc -> :sswitch_2f
        0x10 -> :sswitch_6b
        0x11 -> :sswitch_29
        0x79 -> :sswitch_75
    .end sparse-switch
.end method
