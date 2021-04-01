.class Lcom/qq/e/ads/banner/BannerView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/banner/BannerView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/banner/BannerView$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/banner/BannerView$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qq/e/ads/banner/BannerView$1;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iput-object p2, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner/BannerView$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v3, v3, Lcom/qq/e/ads/banner/BannerView$1;->c:Lcom/qq/e/ads/banner/ADSize;

    iget-object v4, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v4, v4, Lcom/qq/e/ads/banner/BannerView$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v5, v5, Lcom/qq/e/ads/banner/BannerView$1;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qq/e/comm/pi/POFactory;->getBannerView(Landroid/app/Activity;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/BVI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;Lcom/qq/e/comm/pi/BVI;)Lcom/qq/e/comm/pi/BVI;

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/comm/pi/BVI;

    move-result-object v0

    new-instance v1, Lcom/qq/e/ads/banner/BannerView$ADListenerAdapter;

    iget-object v2, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/qq/e/ads/banner/BannerView$ADListenerAdapter;-><init>(Lcom/qq/e/ads/banner/BannerView;B)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/BVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/comm/pi/BVI;

    move-result-object v1

    invoke-interface {v1}, Lcom/qq/e/comm/pi/BVI;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->b(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->b(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setDownConfirmPilicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_6b
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->c(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->c(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setRefresh(I)V

    :cond_88
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->d(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/BannerRollAnimation;

    move-result-object v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->d(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/BannerRollAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setRollAnimation(Lcom/qq/e/ads/cfg/BannerRollAnimation;)V

    :cond_a1
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->e(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->e(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setShowClose(Z)V

    :cond_be
    :goto_be
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->f(Lcom/qq/e/ads/banner/BannerView;)I

    move-result v0

    if-lez v0, :cond_ed

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-virtual {v0}, Lcom/qq/e/ads/banner/BannerView;->loadAD()V
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_cf} :catch_d0
    .catchall {:try_start_1 .. :try_end_cf} :catchall_f5

    goto :goto_be

    :catch_d0
    move-exception v0

    :try_start_d1
    const-string v1, "Exception while init Banner Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_d1 .. :try_end_e5} :catchall_f5

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0, v6}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;Z)Z

    :goto_ec
    return-void

    :cond_ed
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0, v6}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;Z)Z

    goto :goto_ec

    :catchall_f5
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1, v6}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;Z)Z

    throw v0
.end method
