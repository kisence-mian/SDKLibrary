.class public Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;
.super Ljava/lang/Object;
.source "MTGBidInterstitialVideoHandler.java"


# instance fields
.field private a:Lcom/mintegral/msdk/reward/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 23
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 25
    :cond_16
    invoke-direct {p0, p2}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-nez v0, :cond_16

    .line 35
    new-instance v0, Lcom/mintegral/msdk/reward/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/reward/b/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Z)V

    .line 37
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/b/a;->a()V

    .line 39
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/reward/b/a;->b(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 43
    :goto_1b
    return-void

    .line 40
    :catch_1c
    move-exception v0

    .line 41
    const-string v1, "MTGBidRewardVideoHandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method


# virtual methods
.method public clearVideoCache()V
    .registers 2

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_7

    .line 89
    invoke-static {}, Lcom/mintegral/msdk/reward/b/a;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 94
    :cond_7
    :goto_7
    return-void

    .line 92
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public isBidReady()Z
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_c

    .line 59
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->c(Z)Z

    move-result v0

    .line 61
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public loadFormSelfFilling()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->b(Z)V

    .line 55
    :cond_a
    return-void
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/reward/b/a;->a(ZLjava/lang/String;)V

    .line 49
    :cond_a
    return-void
.end method

.method public playVideoMute(I)V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/reward/b/a;->a(I)V

    .line 101
    :cond_9
    return-void
.end method

.method public setInterstitialVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_e

    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/a/a;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/interstitialvideo/a/a;-><init>(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 81
    :cond_e
    return-void
.end method

.method public setRewardVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .registers 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_e

    .line 73
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/a/a;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/interstitialvideo/a/a;-><init>(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 75
    :cond_e
    return-void
.end method

.method public showFromBid()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGBidInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, v1, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_a
    return-void
.end method
