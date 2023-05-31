.class public Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;
.super Ljava/lang/Object;
.source "MTGInterstitialVideoHandler.java"


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
    invoke-direct {p0, p2}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-nez v0, :cond_11

    .line 35
    new-instance v0, Lcom/mintegral/msdk/reward/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/reward/b/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Z)V

    .line 38
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/reward/b/a;->b(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 42
    :goto_16
    return-void

    .line 39
    :catch_17
    move-exception v0

    .line 40
    const-string v1, "MTGRewardVideoHandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method


# virtual methods
.method public clearVideoCache()V
    .registers 2

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_7

    .line 88
    invoke-static {}, Lcom/mintegral/msdk/reward/b/a;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 93
    :cond_7
    :goto_7
    return-void

    .line 91
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public isReady()Z
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_c

    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->c(Z)Z

    move-result v0

    .line 60
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public load()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->b(Z)V

    .line 48
    :cond_a
    return-void
.end method

.method public loadFormSelfFilling()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->b(Z)V

    .line 54
    :cond_a
    return-void
.end method

.method public playVideoMute(I)V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/reward/b/a;->a(I)V

    .line 100
    :cond_9
    return-void
.end method

.method public setInterstitialVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/a/a;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/interstitialvideo/a/a;-><init>(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 80
    :cond_e
    return-void
.end method

.method public setRewardVideoListener(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_e

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    new-instance v1, Lcom/mintegral/msdk/interstitialvideo/a/a;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/interstitialvideo/a/a;-><init>(Lcom/mintegral/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 74
    :cond_e
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lcom/mintegral/msdk/interstitialvideo/out/MTGInterstitialVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, v1, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_a
    return-void
.end method
