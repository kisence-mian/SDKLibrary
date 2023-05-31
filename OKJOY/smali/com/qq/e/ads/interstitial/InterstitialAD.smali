.class public Lcom/qq/e/ads/interstitial/InterstitialAD;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/interstitial/InterstitialAD$ADListenerAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/pi/IADI;

.field private b:Lcom/qq/e/ads/interstitial/InterstitialADListener;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->c:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->d:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->e:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_34

    :cond_20
    const-string v0, "Interstitial Constructor paras error, appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    iput-boolean v3, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->c:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_33

    :cond_42
    iput-boolean v3, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->d:Z

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qq/e/ads/interstitial/InterstitialAD$1;-><init>(Lcom/qq/e/ads/interstitial/InterstitialAD;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_33
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial/InterstitialAD;)Lcom/qq/e/comm/pi/IADI;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial/InterstitialAD;Lcom/qq/e/comm/pi/IADI;)Lcom/qq/e/comm/pi/IADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial/InterstitialAD;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/interstitial/InterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lcom/qq/e/ads/interstitial/InterstitialAD;)Lcom/qq/e/ads/interstitial/InterstitialADListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->b:Lcom/qq/e/ads/interstitial/InterstitialADListener;

    return-object v0
.end method


# virtual methods
.method public closePopupWindow()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/IADI;->closePopupWindow()V

    :cond_9
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/IADI;->destory()V

    :cond_9
    return-void
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->c:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->d:Z

    if-nez v0, :cond_e

    :cond_8
    const-string v0, "InterstitialAD init Paras OR Context error,See More logs while new InterstitialAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->e:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_d

    :cond_18
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/IADI;->loadAd()V

    goto :goto_d

    :cond_22
    const-string v0, "InterstitialAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setADListener(Lcom/qq/e/ads/interstitial/InterstitialADListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/qq/e/ads/interstitial/InterstitialADListener;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->b:Lcom/qq/e/ads/interstitial/InterstitialADListener;

    return-void
.end method

.method public declared-synchronized show()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/IADI;->show()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Landroid/app/Activity;)V
    .registers 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/IADI;->show(Landroid/app/Activity;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAsPopupWindow()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/IADI;->showAsPopupWindown()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAsPopupWindow(Landroid/app/Activity;)V
    .registers 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD;->a:Lcom/qq/e/comm/pi/IADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/IADI;->showAsPopupWindown(Landroid/app/Activity;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
