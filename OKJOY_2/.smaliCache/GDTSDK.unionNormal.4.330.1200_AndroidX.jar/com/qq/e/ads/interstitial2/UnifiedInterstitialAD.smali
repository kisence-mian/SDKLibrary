.class public Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/pi/UIADI;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

.field private volatile h:Lcom/qq/e/ads/cfg/VideoOption;

.field private volatile i:I

.field private volatile j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

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

    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V

    return-void

    :cond_37
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d3

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "\u6b64\u6784\u9020\u65b9\u6cd5\u5373\u5c06\u5e9f\u5f03\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316 SDK \u540e\uff0c\u4f7f\u7528\u4e0d\u5e26 appId \u7684\u6784\u9020\u65b9\u6cd5\uff0c\u8be6\u7ec6\u8bf7\u53c2\u8003Demo"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/cfg/VideoOption;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->h:Lcom/qq/e/ads/cfg/VideoOption;

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Lcom/qq/e/comm/pi/UIADI;)Lcom/qq/e/comm/pi/UIADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V
    .registers 15

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_34

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    if-eqz p1, :cond_34

    if-nez p4, :cond_12

    goto :goto_34

    :cond_12
    iput-boolean v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string p1, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_20
    iput-boolean v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;-><init>(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_34
    :goto_34
    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    aput-object p3, p5, v1

    const/4 p2, 0x2

    aput-object p1, p5, p2

    const/4 p1, 0x3

    aput-object p4, p5, p1

    const-string p1, "UnifiedInterstitialAD Constructor paras error, appid=%s,posId=%s,context=%s,listener=%s"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Ljava/util/Map;Ljava/lang/String;)V
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

    const-string p1, "UnifiedInterstitialAD#setTag Exception"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->g:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    return-object p0
.end method

.method static synthetic c(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I
    .registers 1

    iget p0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->i:I

    return p0
.end method

.method static synthetic d(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I
    .registers 1

    iget p0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    return p0
.end method

.method static synthetic e(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic f(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->close()V

    :cond_7
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->destory()V

    :cond_7
    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getAdNetWorkName"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdPatternType()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getAdPatternType()I

    move-result v0

    return v0

    :cond_9
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getAdPatternType"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getECPM()I

    move-result v0

    return v0

    :cond_9
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getECPM"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getECPMLevel"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExt()Ljava/util/Map;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/qq/e/comm/pi/UIADI;->ext:Ljava/util/Map;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v0, "interstitial2 can not get ext"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->isValid()Z

    move-result v0

    return v0

    :cond_9
    const-string v0, "InterstitialAD init failed or not inited, can\'t call isValid"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->loadAd()V

    return-void

    :cond_1b
    const-string v0, "InterstitialAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_21
    :goto_21
    const-string v0, "InterstitialAD init Paras OR Context error,See More logs while new InterstitialAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public loadFullScreenAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_13
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->loadFullScreenAD()V

    return-void

    :cond_1b
    const-string v0, "InterstitialAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_21
    :goto_21
    const-string v0, "InterstitialAD init Paras OR Context error,See More logs while new InterstitialAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxVideoDuration(I)V
    .registers 4

    iput p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->i:I

    iget v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    if-le v0, v1, :cond_11

    const-string v0, "maxVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5c0f\u4e8eminVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setMaxVideoDuration(I)V

    :cond_18
    return-void
.end method

.method public setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->g:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    :cond_9
    return-void
.end method

.method public setMinVideoDuration(I)V
    .registers 4

    iput p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->i:I

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->i:I

    iget v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    if-le v0, v1, :cond_11

    const-string v0, "minVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5927\u4e8emaxVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setMinVideoDuration(I)V

    :cond_18
    return-void
.end method

.method public setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->h:Lcom/qq/e/ads/cfg/VideoOption;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    :cond_9
    return-void
.end method

.method public setVideoPlayPolicy(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->show()V

    :cond_7
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->show(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public showAsPopupWindow()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->showAsPopupWindow()V

    :cond_7
    return-void
.end method

.method public showAsPopupWindow(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->showAsPopupWindow(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public showFullScreenAD(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->showFullScreenAD(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method
