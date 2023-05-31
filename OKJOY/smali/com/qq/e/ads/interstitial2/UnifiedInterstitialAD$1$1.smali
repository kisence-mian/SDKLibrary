.class Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v5, v5, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->d:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qq/e/comm/pi/POFactory;->getUnifiedInterstitialADDelegate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)Lcom/qq/e/comm/pi/UIADI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Lcom/qq/e/comm/pi/UIADI;)Lcom/qq/e/comm/pi/UIADI;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMinVideoDuration(I)V

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoPlayPolicy(I)V

    :goto_84
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_b7

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_99} :catch_9a
    .catchall {:try_start_1 .. :try_end_99} :catchall_cd

    goto :goto_84

    :catch_9a
    move-exception v0

    :try_start_9b
    const-string v1, "Exception while init UnifiedInterstitialAD Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_9b .. :try_end_af} :catchall_cd

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v0, v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z

    :goto_b6
    return-void

    :cond_b7
    :goto_b7
    :try_start_b7
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->g(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_d6

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_cc} :catch_9a
    .catchall {:try_start_b7 .. :try_end_cc} :catchall_cd

    goto :goto_b7

    :catchall_cd
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1, v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z

    throw v0

    :cond_d6
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v0, v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z

    goto :goto_b6
.end method
