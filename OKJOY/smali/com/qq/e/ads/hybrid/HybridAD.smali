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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "setting"    # Lcom/qq/e/ads/hybrid/HybridADSetting;
    .param p4, "listener"    # Lcom/qq/e/ads/hybrid/HybridADListener;

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->f:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    if-nez p4, :cond_2a

    :cond_15
    const-string v0, "HybridAD Constructor params error, context=%s, appID=%s,HybridADListener=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    iput-object p4, p0, Lcom/qq/e/ads/hybrid/HybridAD;->e:Lcom/qq/e/ads/hybrid/HybridADListener;

    iput-boolean v3, p0, Lcom/qq/e/ads/hybrid/HybridAD;->b:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_29

    :cond_3a
    iput-boolean v3, p0, Lcom/qq/e/ads/hybrid/HybridAD;->c:Z

    sget-object v6, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/ads/hybrid/HybridAD$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/hybrid/HybridAD$1;-><init>(Lcom/qq/e/ads/hybrid/HybridAD;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/hybrid/HybridADSetting;Lcom/qq/e/ads/hybrid/HybridADListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_29
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;Lcom/qq/e/comm/pi/HADI;)Lcom/qq/e/comm/pi/HADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/hybrid/HybridAD;->d:Lcom/qq/e/comm/pi/HADI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->f:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;I)V
    .registers 5

    const/16 v0, 0x7d1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/qq/e/ads/hybrid/HybridAD$3;

    invoke-direct {v2, p0, v0}, Lcom/qq/e/ads/hybrid/HybridAD$3;-><init>(Lcom/qq/e/ads/hybrid/HybridAD;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/hybrid/HybridAD;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/hybrid/HybridAD;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/qq/e/ads/hybrid/HybridAD;)Lcom/qq/e/comm/pi/HADI;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->d:Lcom/qq/e/comm/pi/HADI;

    return-object v0
.end method

.method static synthetic d(Lcom/qq/e/ads/hybrid/HybridAD;)Lcom/qq/e/ads/hybrid/HybridADListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->e:Lcom/qq/e/ads/hybrid/HybridADListener;

    return-object v0
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->b:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->c:Z

    if-nez v0, :cond_1a

    :cond_8
    const-string v0, "AD init Params OR Context error, details in logs produced while init HybridAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->a:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/qq/e/ads/hybrid/HybridAD;->d:Lcom/qq/e/comm/pi/HADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/HADI;->loadUrl(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x1

    goto :goto_e

    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qq/e/ads/hybrid/HybridAD$2;

    invoke-direct {v1, p0, p1}, Lcom/qq/e/ads/hybrid/HybridAD$2;-><init>(Lcom/qq/e/ads/hybrid/HybridAD;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_19

    :cond_2a
    const-string v0, "HybridAD loadUrl error"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_19
.end method
