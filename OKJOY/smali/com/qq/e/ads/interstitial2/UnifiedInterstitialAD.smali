.class public Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


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

.field private volatile k:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    .prologue
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
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "posID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;
    .param p5, "tags"    # Ljava/util/Map;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    if-nez p4, :cond_40

    :cond_29
    const-string v0, "UnifiedInterstitialAD Constructor paras error, appid=%s,posId=%s,context=%s,listener=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_3f
    return-void

    :cond_40
    iput-boolean v3, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_3f

    :cond_4e
    iput-boolean v3, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    sget-object v7, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD$1;-><init>(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;Ljava/util/Map;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3f
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/cfg/VideoOption;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->h:Lcom/qq/e/ads/cfg/VideoOption;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Lcom/qq/e/comm/pi/UIADI;)Lcom/qq/e/comm/pi/UIADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    return-object p1
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1a

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object v1

    const-string v2, "ad_tags"

    invoke-virtual {v1, v2, v0, p2}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string v1, "UnifiedInterstitialAD#setTag Exception"

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->g:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    return-object v0
.end method

.method static synthetic c(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    return v0
.end method

.method static synthetic d(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->k:I

    return v0
.end method

.method static synthetic e(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->i:I

    return v0
.end method

.method static synthetic f(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic g(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->close()V

    :cond_9
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->destory()V

    :cond_9
    return-void
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getAdNetWorkName"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAdPatternType()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getAdPatternType()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getAdPatternType"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getECPM()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getECPM"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "InterstitialAD init failed or not inited, can\'t call getECPMLevel"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getExt()Ljava/util/Map;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/qq/e/comm/pi/UIADI;->ext:Ljava/util/Map;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v0, "interstitial2 can not get ext"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    if-nez v0, :cond_e

    :cond_8
    const-string v0, "InterstitialAD init Paras OR Context error,See More logs while new InterstitialAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_d

    :cond_18
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->loadAd()V

    goto :goto_d

    :cond_22
    const-string v0, "InterstitialAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public loadFullScreenAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->b:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->c:Z

    if-nez v0, :cond_e

    :cond_8
    const-string v0, "InterstitialAD init Paras OR Context error,See More logs while new InterstitialAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_d
    return-void

    :cond_e
    iget-boolean v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->d:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_d

    :cond_18
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->loadFullScreenAD()V

    goto :goto_d

    :cond_22
    const-string v0, "InterstitialAD Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setMaxVideoDuration(I)V
    .registers 4
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->k:I

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->k:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    iget v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->k:I

    if-le v0, v1, :cond_11

    const-string v0, "maxVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5c0f\u4e8eminVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setMaxVideoDuration(I)V

    :cond_1a
    return-void
.end method

.method public setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->g:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    :cond_b
    return-void
.end method

.method public setMinVideoDuration(I)V
    .registers 4
    .param p1, "minVideoDuration"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->k:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->j:I

    iget v1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->k:I

    if-le v0, v1, :cond_11

    const-string v0, "minVideoDuration \u8bbe\u7f6e\u503c\u975e\u6cd5\uff0c\u4e0d\u5f97\u5927\u4e8emaxVideoDuration"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setMinVideoDuration(I)V

    :cond_1a
    return-void
.end method

.method public setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V
    .registers 3
    .param p1, "option"    # Lcom/qq/e/ads/cfg/VideoOption;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->h:Lcom/qq/e/ads/cfg/VideoOption;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    :cond_b
    return-void
.end method

.method public setVideoPlayPolicy(I)V
    .registers 3
    .param p1, "policy"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->i:I

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->setVideoPlayPolicy(I)V

    :cond_b
    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->show()V

    :cond_9
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->show(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public showAsPopupWindow()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/UIADI;->showAsPopupWindow()V

    :cond_9
    return-void
.end method

.method public showAsPopupWindow(Landroid/app/Activity;)V
    .registers 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->showAsPopupWindow(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method public showFullScreenAD(Landroid/app/Activity;)V
    .registers 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->a:Lcom/qq/e/comm/pi/UIADI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/UIADI;->showFullScreenAD(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method
