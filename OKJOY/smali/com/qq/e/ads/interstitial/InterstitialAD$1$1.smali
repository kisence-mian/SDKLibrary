.class Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/interstitial/InterstitialAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/interstitial/InterstitialAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/qq/e/comm/pi/POFactory;->getIADView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/IADI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;Lcom/qq/e/comm/pi/IADI;)Lcom/qq/e/comm/pi/IADI;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;)Lcom/qq/e/comm/pi/IADI;

    move-result-object v0

    new-instance v1, Lcom/qq/e/ads/interstitial/InterstitialAD$ADListenerAdapter;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/qq/e/ads/interstitial/InterstitialAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/interstitial/InterstitialAD;B)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/IADI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;Z)Z

    :goto_3b
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->b(Lcom/qq/e/ads/interstitial/InterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_6e

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->loadAD()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_50} :catch_51
    .catchall {:try_start_1 .. :try_end_50} :catchall_76

    goto :goto_3b

    :catch_51
    move-exception v0

    :try_start_52
    const-string v1, "Exception while init IAD Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_76

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0, v5}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;Z)Z

    :goto_6d
    return-void

    :cond_6e
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0, v5}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;Z)Z

    goto :goto_6d

    :catchall_76
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v1, v5}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;Z)Z

    throw v0
.end method
