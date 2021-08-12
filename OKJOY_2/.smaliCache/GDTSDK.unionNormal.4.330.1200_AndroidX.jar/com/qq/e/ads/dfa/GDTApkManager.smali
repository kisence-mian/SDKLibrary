.class public Lcom/qq/e/ads/dfa/GDTApkManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/pi/DFA;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/ads/dfa/IGDTApkListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->b:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->c:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_49

    if-eqz p1, :cond_49

    if-nez p2, :cond_31

    goto :goto_49

    :cond_31
    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string p1, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    goto :goto_5c

    :cond_3a
    iput-boolean v3, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->b:Z

    iput-object p1, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->e:Landroid/content/Context;

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/qq/e/ads/dfa/GDTApkManager$1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/qq/e/ads/dfa/GDTApkManager$1;-><init>(Lcom/qq/e/ads/dfa/GDTApkManager;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/dfa/IGDTApkListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_49
    :goto_49
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "GDTApkManager Constructor params error, appid=%s,context=%s,listener=%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_5a
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    :goto_5c
    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/dfa/GDTApkManager;Lcom/qq/e/comm/pi/DFA;)Lcom/qq/e/comm/pi/DFA;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->a:Lcom/qq/e/comm/pi/DFA;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/dfa/GDTApkManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/ads/dfa/GDTApkManager;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->c:Z

    return p1
.end method


# virtual methods
.method public final loadGDTApk()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->b:Z

    if-nez v0, :cond_a

    const-string v0, "GDTApkManager init Context error,See More logs while new GDTApkManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->c:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_14
    iget-object v0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->a:Lcom/qq/e/comm/pi/DFA;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/qq/e/comm/pi/DFA;->loadGDTApk()V

    return-void

    :cond_1c
    const-string v0, "InterstitialAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final startInstall(Lcom/qq/e/ads/dfa/GDTApk;)V
    .registers 4

    iget-object v0, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->a:Lcom/qq/e/comm/pi/DFA;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/qq/e/ads/dfa/GDTApkManager;->e:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/qq/e/comm/pi/DFA;->startInstall(Landroid/content/Context;Lcom/qq/e/ads/dfa/GDTApk;)V

    :cond_9
    return-void
.end method
