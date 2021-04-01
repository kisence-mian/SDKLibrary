.class final Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;
.super Lcom/mintegral/msdk/video/module/a/a/a;
.source "MTGRewardVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 824
    iput-object p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    .line 825
    invoke-direct {p0, p2, p3}, Lcom/mintegral/msdk/video/module/a/a/a;-><init>(Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 826
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 831
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->n(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z

    .line 832
    sparse-switch p1, :sswitch_data_70

    .line 850
    :goto_9
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/a;->a(ILjava/lang/Object;)V

    .line 851
    return-void

    .line 834
    :sswitch_d
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v1

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-interface {v1, v6, v0}, Lcom/mintegral/msdk/video/js/b;->b(ILjava/lang/String;)V

    goto :goto_9

    :cond_1d
    const-string v0, ""

    goto :goto_19

    .line 837
    :sswitch_20
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/video/js/a/b$b;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v2}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v2

    new-instance v3, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;

    iget-object v4, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$c;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/video/js/a/b$b;-><init>(Lcom/mintegral/msdk/video/js/b;Lcom/mintegral/msdk/video/js/b$a;)V

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/video/js/b;->a(Lcom/mintegral/msdk/video/js/b$a;)V

    .line 838
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v1

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-interface {v1, v6, v0}, Lcom/mintegral/msdk/video/js/b;->b(ILjava/lang/String;)V

    goto :goto_9

    :cond_4c
    const-string v0, ""

    goto :goto_48

    .line 843
    :sswitch_4f
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/mintegral/msdk/reward/a/d;->a(ZLjava/lang/String;)V

    goto :goto_9

    .line 846
    :sswitch_5f
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$a;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/d;->c(Ljava/lang/String;)V

    goto :goto_9

    .line 832
    nop

    :sswitch_data_70
    .sparse-switch
        0x69 -> :sswitch_d
        0x6a -> :sswitch_4f
        0x6c -> :sswitch_20
        0x71 -> :sswitch_4f
        0x75 -> :sswitch_5f
    .end sparse-switch
.end method
