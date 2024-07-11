.class public Lcom/qq/e/ads/banner2/UnifiedBannerView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/qq/e/comm/pi/UBVI;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:I

.field private h:Lcom/qq/e/comm/constants/LoadAdParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V
    .registers 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->h:Lcom/qq/e/comm/constants/LoadAdParams;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/status/APPStatus;->getAPPID()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V

    return-void

    :cond_37
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d3

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/banner2/UnifiedBannerView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->h:Lcom/qq/e/comm/constants/LoadAdParams;

    const-string v0, "\u6b64\u6784\u9020\u65b9\u6cd5\u5373\u5c06\u5e9f\u5f03\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316 SDK \u540e\uff0c\u4f7f\u7528\u4e0d\u5e26 appId \u7684\u6784\u9020\u65b9\u6cd5\uff0c\u8be6\u7ec6\u8bf7\u53c2\u8003Demo"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Lcom/qq/e/comm/pi/UBVI;)Lcom/qq/e/comm/pi/UBVI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V
    .registers 15

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3e

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    if-nez p4, :cond_12

    goto :goto_3e

    :cond_12
    iput-boolean v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string p1, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_20
    iput-boolean v1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/qq/e/ads/banner2/UnifiedBannerView$1;-><init>(Lcom/qq/e/ads/banner2/UnifiedBannerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/banner2/UnifiedBannerADListener;Ljava/util/Map;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3e
    :goto_3e
    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    aput-object p3, p5, v1

    const/4 p2, 0x2

    aput-object p1, p5, p2

    const/4 p1, 0x3

    aput-object p4, p5, p1

    const-string p1, "UnifiedBannerView Constructor params error, appid=%s,posId=%s,context=%s,listener=%s"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_24

    :try_start_8
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object p1

    const-string v0, "ad_tags"

    invoke-virtual {p1, v0, p0, p2}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    const-string p1, "UnifiedBanner#setTag Exception"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/banner2/UnifiedBannerView;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/qq/e/ads/banner2/UnifiedBannerView;)I
    .registers 1

    iget p0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->g:I

    return p0
.end method

.method static synthetic c(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Lcom/qq/e/comm/constants/LoadAdParams;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->h:Lcom/qq/e/comm/constants/LoadAdParams;

    return-object p0
.end method

.method static synthetic d(Lcom/qq/e/ads/banner2/UnifiedBannerView;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UBVI;->destroy()V

    :cond_7
    return-void
.end method

.method public getExt()Ljava/util/Map;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/qq/e/comm/pi/UBVI;->ext:Ljava/util/Map;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v0, "banner2 can not get ext"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->b:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->c:Z

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    iget-boolean v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UBVI;->fetchAd()V

    return-void

    :cond_1b
    const-string v0, "UnifiedBannerView Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_21
    :goto_21
    const-string v0, "UnifiedBannerView init Paras OR Context error,See More logs while new BannerView"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UBVI;->onWindowFocusChanged(Z)V

    :cond_a
    return-void
.end method

.method public setDownConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->e:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UBVI;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_b
    return-void
.end method

.method public setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->h:Lcom/qq/e/comm/constants/LoadAdParams;

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UBVI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :cond_9
    return-void
.end method

.method public setRefresh(I)V
    .registers 3

    iput p1, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->g:I

    iget-object v0, p0, Lcom/qq/e/ads/banner2/UnifiedBannerView;->a:Lcom/qq/e/comm/pi/UBVI;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UBVI;->setRefresh(I)V

    :cond_9
    return-void
.end method
