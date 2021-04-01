.class final Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;
.super Lcom/mintegral/msdk/video/module/a/a/f;
.source "MTGRewardVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;


# direct methods
.method private constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V
    .registers 2

    .prologue
    .line 854
    iput-object p1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-direct {p0}, Lcom/mintegral/msdk/video/module/a/a/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;B)V
    .registers 3

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;-><init>(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 7

    .prologue
    .line 857
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/f;->a(ILjava/lang/Object;)V

    .line 858
    sparse-switch p1, :sswitch_data_50

    .line 878
    :goto_6
    return-void

    .line 860
    :sswitch_7
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->m(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z

    .line 862
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->d()V

    goto :goto_6

    .line 866
    :sswitch_16
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->getJSCommon()Lcom/mintegral/msdk/video/js/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/video/js/b;->d()V

    goto :goto_6

    .line 869
    :sswitch_20
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->o(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Z

    .line 870
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->q(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->p(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 872
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/d;->a()V

    goto :goto_6

    .line 875
    :sswitch_40
    iget-object v0, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->k(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Lcom/mintegral/msdk/reward/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity$b;->a:Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;->l(Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/d;->c(Ljava/lang/String;)V

    goto :goto_6

    .line 858
    :sswitch_data_50
    .sparse-switch
        0x64 -> :sswitch_20
        0x65 -> :sswitch_16
        0x66 -> :sswitch_16
        0x67 -> :sswitch_7
        0x78 -> :sswitch_40
    .end sparse-switch
.end method
