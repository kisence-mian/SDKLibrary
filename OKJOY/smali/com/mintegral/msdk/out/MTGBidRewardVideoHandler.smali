.class public Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;
.super Ljava/lang/Object;
.source "MTGBidRewardVideoHandler.java"


# instance fields
.field private a:Lcom/mintegral/msdk/reward/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 18
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 20
    :cond_16
    invoke-direct {p0, p2}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-nez v0, :cond_16

    .line 30
    new-instance v0, Lcom/mintegral/msdk/reward/b/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/reward/b/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Z)V

    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/reward/b/a;->a()V

    .line 34
    :cond_16
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/reward/b/a;->b(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 38
    :goto_1b
    return-void

    .line 35
    :catch_1c
    move-exception v0

    .line 36
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
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_7

    .line 77
    invoke-static {}, Lcom/mintegral/msdk/reward/b/a;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 82
    :cond_7
    :goto_7
    return-void

    .line 80
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public isBidReady()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v1, :cond_b

    .line 48
    iget-object v1, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/reward/b/a;->c(Z)Z

    move-result v0

    .line 50
    :cond_b
    return v0
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/reward/b/a;->a(ZLjava/lang/String;)V

    .line 44
    :cond_a
    return-void
.end method

.method public playVideoMute(I)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/reward/b/a;->a(I)V

    .line 88
    :cond_9
    return-void
.end method

.method public setRewardVideoListener(Lcom/mintegral/msdk/out/RewardVideoListener;)V
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_e

    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    new-instance v1, Lcom/mintegral/msdk/reward/c/a;

    invoke-direct {v1, p1}, Lcom/mintegral/msdk/reward/c/a;-><init>(Lcom/mintegral/msdk/out/RewardVideoListener;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 69
    :cond_e
    return-void
.end method

.method public showFromBid(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_a

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_a
    return-void
.end method

.method public showFromBid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBidRewardVideoHandler;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_9
    return-void
.end method
