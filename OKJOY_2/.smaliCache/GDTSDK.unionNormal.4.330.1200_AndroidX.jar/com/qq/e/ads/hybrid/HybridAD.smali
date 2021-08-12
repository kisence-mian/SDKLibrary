.class public Lcom/qq/e/ads/hybrid/HybridAD;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/pi/HADI;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private d:Lcom/qq/e/comm/pi/HADI;

.field private e:Lcom/qq/e/ads/hybrid/HybridADListener;

.field private f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V

    return-void

    :cond_25
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d3

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qq/e/ads/hybrid/HybridADListener;->onError(Lcom/qq/e/comm/util/AdError;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->f:Ljava/util/concurrent/CountDownLatch;

    const-string v0, "\u6b64\u6784\u9020\u65b9\u6cd5\u5373\u5c06\u5e9f\u5f03\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316 SDK \u540e\uff0c\u4f7f\u7528\u4e0d\u5e26 appId \u7684\u6784\u9020\u65b9\u6cd5\uff0c\u8be6\u7ec6\u8bf7\u53c2\u8003Demo"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qq/e/ads/hybrid/HybridAD;->a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;Lcom/qq/e/comm/pi/HADI;)Lcom/qq/e/comm/pi/HADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridAD;->d:Lcom/qq/e/comm/pi/HADI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->f:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V
    .registers 13

    const/4 v0, 0x1

    if-eqz p1, :cond_2f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    if-nez p4, :cond_c

    goto :goto_2f

    :cond_c
    iput-object p4, p0, Lcom/qq/e/ads/hybrid/HybridAD;->e:Lcom/qq/e/ads/hybrid/HybridADListener;

    iput-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->b:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string p1, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_1c
    iput-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->c:Z

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/qq/e/ads/hybrid/HybridAD$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/hybrid/HybridAD$1;-><init>(Lcom/qq/e/ads/hybrid/HybridAD;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2f
    :goto_2f
    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    aput-object p2, p3, v0

    const/4 p1, 0x2

    aput-object p4, p3, p1

    const-string p1, "HybridAD Constructor params error, context=%s, appID=%s,HybridADListener=%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;I)V
    .registers 4

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/qq/e/ads/hybrid/HybridAD$3;

    const/16 v1, 0x7d1

    invoke-direct {v0, p0, v1}, Lcom/qq/e/ads/hybrid/HybridAD$3;-><init>(Lcom/qq/e/ads/hybrid/HybridAD;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/hybrid/HybridAD;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/qq/e/ads/hybrid/HybridAD;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/qq/e/ads/hybrid/HybridAD;)Lcom/qq/e/comm/pi/HADI;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->d:Lcom/qq/e/comm/pi/HADI;

    return-object p0
.end method

.method static synthetic d(Lcom/qq/e/ads/hybrid/HybridAD;)Lcom/qq/e/ads/hybrid/HybridADListener;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->e:Lcom/qq/e/ads/hybrid/HybridADListener;

    return-object p0
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->b:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->c:Z

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    goto :goto_11

    :cond_b
    :goto_b
    const-string v0, "AD init Params OR Context error, details in logs produced while init HybridAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->a:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->d:Lcom/qq/e/comm/pi/HADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/HADI;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qq/e/ads/hybrid/HybridAD$2;

    invoke-direct {v1, p0, p1}, Lcom/qq/e/ads/hybrid/HybridAD$2;-><init>(Lcom/qq/e/ads/hybrid/HybridAD;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2b
    const-string p1, "HybridAD loadUrl error"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method
