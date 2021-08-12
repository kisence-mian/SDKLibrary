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

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v3, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v5, v5, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v6, v6, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->d:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/qq/e/comm/pi/POFactory;->getUnifiedInterstitialADDelegate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)Lcom/qq/e/comm/pi/UIADI;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Lcom/qq/e/comm/pi/UIADI;)Lcom/qq/e/comm/pi/UIADI;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMinVideoDuration(I)V

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    :goto_74
    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-lez v1, :cond_8a

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V

    goto :goto_74

    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-lez v1, :cond_a0

    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V
    :try_end_9f
    .catchall {:try_start_1 .. :try_end_9f} :catchall_a8

    goto :goto_8a

    :cond_a0
    :goto_a0
    iget-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v1, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z

    return-void

    :catchall_a8
    move-exception v1

    :try_start_a9
    const-string v2, "Exception while init UnifiedInterstitialAD Core"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_af

    goto :goto_a0

    :catchall_af
    move-exception v1

    iget-object v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;->f:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {v2, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z

    throw v1
.end method
