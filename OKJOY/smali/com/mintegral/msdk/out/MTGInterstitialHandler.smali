.class public Lcom/mintegral/msdk/out/MTGInterstitialHandler;
.super Ljava/lang/Object;
.source "MTGInterstitialHandler.java"


# instance fields
.field private a:Lcom/mintegral/msdk/interstitial/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 4
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
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    if-nez v0, :cond_e

    .line 16
    new-instance v0, Lcom/mintegral/msdk/interstitial/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/interstitial/c/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    .line 18
    :cond_e
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/interstitial/c/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    .line 19
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_26

    if-eqz p1, :cond_26

    .line 20
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/controller/a;->a(Landroid/content/Context;)V

    .line 22
    :cond_26
    return-void
.end method


# virtual methods
.method public preload()V
    .registers 2

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a()V
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

.method public setInterstitialListener(Lcom/mintegral/msdk/out/InterstitialListener;)V
    .registers 3

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/out/InterstitialListener;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 61
    :cond_9
    :goto_9
    return-void

    .line 59
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
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGInterstitialHandler;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/c/a;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 46
    :goto_5
    return-void

    .line 44
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
