.class Lcom/qq/e/ads/dfa/GDTApkManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/dfa/GDTApkManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/dfa/GDTApkManager$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/dfa/GDTApkManager$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iput-object p2, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iget-object v1, v1, Lcom/qq/e/ads/dfa/GDTApkManager$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iget-object v3, v3, Lcom/qq/e/ads/dfa/GDTApkManager$1;->a:Lcom/qq/e/ads/dfa/IGDTApkListener;

    invoke-interface {v2, v3}, Lcom/qq/e/comm/pi/POFactory;->getGDTApkDelegate(Lcom/qq/e/ads/dfa/IGDTApkListener;)Lcom/qq/e/comm/pi/DFA;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qq/e/ads/dfa/GDTApkManager;->a(Lcom/qq/e/ads/dfa/GDTApkManager;Lcom/qq/e/comm/pi/DFA;)Lcom/qq/e/comm/pi/DFA;

    iget-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iget-object v1, v1, Lcom/qq/e/ads/dfa/GDTApkManager$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager;

    invoke-static {v1, v0}, Lcom/qq/e/ads/dfa/GDTApkManager;->a(Lcom/qq/e/ads/dfa/GDTApkManager;Z)Z

    :goto_27
    iget-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iget-object v1, v1, Lcom/qq/e/ads/dfa/GDTApkManager$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager;

    invoke-static {v1}, Lcom/qq/e/ads/dfa/GDTApkManager;->a(Lcom/qq/e/ads/dfa/GDTApkManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    if-lez v1, :cond_3d

    iget-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iget-object v1, v1, Lcom/qq/e/ads/dfa/GDTApkManager$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager;

    invoke-virtual {v1}, Lcom/qq/e/ads/dfa/GDTApkManager;->loadGDTApk()V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_45

    goto :goto_27

    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iget-object v1, v1, Lcom/qq/e/ads/dfa/GDTApkManager$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager;

    invoke-static {v1, v0}, Lcom/qq/e/ads/dfa/GDTApkManager;->a(Lcom/qq/e/ads/dfa/GDTApkManager;Z)Z

    return-void

    :catchall_45
    move-exception v1

    :try_start_46
    const-string v2, "Exception while init UnifiedBannerView Core"

    invoke-static {v2, v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_4c

    goto :goto_3d

    :catchall_4c
    move-exception v1

    iget-object v2, p0, Lcom/qq/e/ads/dfa/GDTApkManager$1$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager$1;

    iget-object v2, v2, Lcom/qq/e/ads/dfa/GDTApkManager$1;->b:Lcom/qq/e/ads/dfa/GDTApkManager;

    invoke-static {v2, v0}, Lcom/qq/e/ads/dfa/GDTApkManager;->a(Lcom/qq/e/ads/dfa/GDTApkManager;Z)Z

    throw v1
.end method
