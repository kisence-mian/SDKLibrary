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
    .param p1, "this$1"    # Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iput-object p2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v6, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v3, v3, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v4, v4, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v5, v5, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->d:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    invoke-interface/range {v0 .. v5}, Lcom/qq/e/comm/pi/POFactory;->getUnifiedBannerViewDelegate(Lcom/qq/e/ads/banner2/UnifiedBannerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)Lcom/qq/e/comm/pi/UBVI;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Lcom/qq/e/comm/pi/UBVI;)Lcom/qq/e/comm/pi/UBVI;

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setDownConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_56
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b(Lcom/qq/e/ads/banner2/UnifiedBannerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setRefresh(I)V

    :goto_65
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c(Lcom/qq/e/ads/banner2/UnifiedBannerView;)I

    move-result v0

    if-lez v0, :cond_94

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->loadAD()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_76} :catch_77
    .catchall {:try_start_1 .. :try_end_76} :catchall_9c

    goto :goto_65

    :catch_77
    move-exception v0

    :try_start_78
    const-string v1, "Exception while init UnifiedBannerView Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_9c

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v0, v7}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z

    :goto_93
    return-void

    :cond_94
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v0, v7}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z

    goto :goto_93

    :catchall_9c
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView$1$1;->b:Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;->f:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    invoke-static {v1, v7}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z

    throw v0
.end method
