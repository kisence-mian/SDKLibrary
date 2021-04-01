.class public Lcom/mintegral/msdk/out/MTGOfferWallHandler;
.super Ljava/lang/Object;
.source "MTGOfferWallHandler.java"


# instance fields
.field private a:Lcom/mintegral/msdk/offerwall/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    if-nez v0, :cond_e

    .line 16
    new-instance v0, Lcom/mintegral/msdk/offerwall/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/offerwall/c/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    .line 18
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/offerwall/c/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    .line 19
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2a

    if-eqz p1, :cond_2a

    .line 20
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 22
    :cond_2a
    return-void
.end method


# virtual methods
.method public load()V
    .registers 2

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/offerwall/c/a;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 35
    :cond_9
    :goto_9
    return-void

    .line 33
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public queryOfferWallRewards(Lcom/mintegral/msdk/out/MTGOfferWallRewardListener;)V
    .registers 3

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/offerwall/c/a;->a(Lcom/mintegral/msdk/out/MTGOfferWallRewardListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 77
    :cond_9
    :goto_9
    return-void

    .line 75
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public setOfferWallListener(Lcom/mintegral/msdk/out/OfferWallListener;)V
    .registers 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/offerwall/c/a;->a(Lcom/mintegral/msdk/out/OfferWallListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 64
    :cond_9
    :goto_9
    return-void

    .line 62
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public show()V
    .registers 2

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGOfferWallHandler;->a:Lcom/mintegral/msdk/offerwall/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/offerwall/c/a;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 49
    :cond_9
    :goto_9
    return-void

    .line 47
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method
