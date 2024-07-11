.class Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/banner2/UnifiedBannerView$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iput-object p2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v3, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v3, v3, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v4, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v4, v4, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v5, v5, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v6, v6, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v7, v7, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->d:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    invoke-interface/range {v2 .. v7}, Lcom/qq/e/comm/pi/POFactory;->getUnifiedBannerViewDelegate(Lcom/qq/e/ads/banner2/UnifiedBannerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)Lcom/qq/e/comm/pi/UBVI;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Lcom/qq/e/comm/pi/UBVI;)Lcom/qq/e/comm/pi/UBVI;

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v1, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v3, v3, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setDownConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_55
    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b(Lcom/qq/e/ads/banner2/UnifiedBannerView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :goto_73
    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-lez v1, :cond_89

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V
    :try_end_88
    .catchall {:try_start_1 .. :try_end_88} :catchall_91

    goto :goto_73

    :cond_89
    :goto_89
    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v1, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z

    return-void

    :catchall_91
    move-exception v1

    :try_start_92
    const-string v2, "Exception while init UnifiedBannerView Core"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_98

    goto :goto_89

    :catchall_98
    move-exception v1

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v2, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z

    throw v1
.end method
