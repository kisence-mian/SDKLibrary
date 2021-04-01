.class Lcom/qq/e/ads/hybrid/HybridAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/hybrid/HybridAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/e/ads/hybrid/HybridADSetting;

.field final synthetic b:Lcom/qq/e/ads/hybrid/HybridADListener;

.field final synthetic c:Lcom/qq/e/ads/hybrid/HybridAD;

.field private synthetic d:Landroid/content/Context;

.field private synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/hybrid/HybridAD;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/qq/e/ads/hybrid/HybridAD;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    iput-object p2, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->a:Lcom/qq/e/ads/hybrid/HybridADSetting;

    iput-object p5, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->b:Lcom/qq/e/ads/hybrid/HybridADListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/16 v3, 0x7d1

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    :try_start_10
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/qq/e/ads/hybrid/HybridAD$1$1;

    invoke-direct {v2, p0, v0}, Lcom/qq/e/ads/hybrid/HybridAD$1$1;-><init>(Lcom/qq/e/ads/hybrid/HybridAD$1;Lcom/qq/e/comm/pi/POFactory;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2d} :catch_2e

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    const-string v1, "Exception while init HybridAD plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V

    :cond_45
    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0, v3}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;I)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2d

    :cond_54
    const-string v0, "Fail to init ADManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0, v3}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;I)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2d
.end method
