.class Lcom/qq/e/ads/hybrid/HybridAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/hybrid/HybridAD;->a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V
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

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x7d1

    if-eqz v0, :cond_43

    :try_start_10
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/qq/e/ads/hybrid/HybridAD$1$1;

    invoke-direct {v3, p0, v0}, Lcom/qq/e/ads/hybrid/HybridAD$1$1;-><init>(Lcom/qq/e/ads/hybrid/HybridAD$1;Lcom/qq/e/comm/pi/POFactory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    const-string v2, "Exception while init HybridAD plugin"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_34
    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0, v1}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;I)V

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD$1;->c:Lcom/qq/e/ads/hybrid/HybridAD;

    invoke-static {v0}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Lcom/qq/e/ads/hybrid/HybridAD;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_43
    const-string v0, "Fail to init ADManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_34
.end method
