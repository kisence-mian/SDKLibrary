.class public Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/rewardvideo/RewardVideoAD$ADListenerAdapter;
    }
.end annotation


# static fields
.field public static final REWARD_TYPE_PAGE:I = 0x1

.field public static final REWARD_TYPE_VIDEO:I


# instance fields
.field private a:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

.field private volatile b:Z

.field private c:Lcom/qq/e/comm/pi/RVADI;

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/qq/e/comm/constants/LoadAdParams;

.field private k:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->i:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2c

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

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    return-void

    :cond_2c
    const-string p1, "SDK \u5c1a\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u5728 Application \u4e2d\u8c03\u7528 GDTADManager.getInstance().initWith() \u521d\u59cb\u5316"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7d3

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;->onError(Lcom/qq/e/comm/util/AdError;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->i:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    const-string v0, "\u6b64\u6784\u9020\u65b9\u6cd5\u5373\u5c06\u5e9f\u5f03\uff0c\u8bf7\u5728 Application \u4e2d\u521d\u59cb\u5316 SDK \u540e\uff0c\u4f7f\u7528\u4e0d\u5e26 appId \u7684\u6784\u9020\u65b9\u6cd5\uff0c\u8be6\u7ec6\u8bf7\u53c2\u8003Demo"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/pi/RVADI;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    return-object p0
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Lcom/qq/e/comm/pi/RVADI;)Lcom/qq/e/comm/pi/RVADI;
    .registers 2

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$2;

    invoke-direct {v1, p0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$2;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V
    .registers 15

    const/4 v0, 0x1

    if-eqz p1, :cond_3d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    if-nez p4, :cond_12

    goto :goto_3d

    :cond_12
    iput-object p4, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->d:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string p1, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 p1, 0xfa2

    invoke-direct {p0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(I)V

    return-void

    :cond_27
    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->e:Z

    iput-object p3, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->g:Ljava/lang/String;

    sget-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD$1;-><init>(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Ljava/lang/String;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3d
    :goto_3d
    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p5, v1

    aput-object p2, p5, v0

    const/4 p1, 0x2

    aput-object p3, p5, p1

    const/4 p1, 0x3

    aput-object p4, p5, p1

    const-string p1, "RewardVideoAD Constructor params error, context=%s, appID=%s, posID=%s, rewardVideoADListener=%s"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;I)V
    .registers 2

    const/16 p1, 0x7d1

    invoke-direct {p0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/comm/constants/LoadAdParams;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    return-object p0
.end method

.method static synthetic b(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->k:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    return-object p0
.end method

.method static synthetic d(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/qq/e/ads/rewardvideo/RewardVideoAD;)Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;
    .registers 1

    iget-object p0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->a:Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;

    return-object p0
.end method


# virtual methods
.method public checkValidity()Lcom/qq/e/comm/util/VideoAdValidity;
    .registers 7

    invoke-virtual {p0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->hasShown()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->SHOWED:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->getExpireTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->OVERDUE:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0

    :cond_1b
    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->h:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getRewardAdType()I

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->NONE_CACHE:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0

    :cond_2c
    sget-object v0, Lcom/qq/e/comm/util/VideoAdValidity;->VALID:Lcom/qq/e/comm/util/VideoAdValidity;

    return-object v0
.end method

.method public getAdNetWorkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "please invoke getAdNetWorkName method after callback \"onADLoad\" or the ad does not support \"getAdNetWorkName\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getECPM()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getECPM()I

    move-result v0

    return v0

    :cond_9
    const-string v0, "please invoke getECPM method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getECPMLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "please invoke getECPMLevel method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpireTimestamp()J
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getExpireTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-string v0, "please invoke getExpireTimestamp method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExts()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getRewardAdType()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getRewardAdType()I

    move-result v0

    return v0

    :cond_9
    const-string v0, "please invoke getRewardAdType method after callback \"onADLoad\" or the ad does not support \"getRewardAdType\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDuration()I
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->getVideoDuration()I

    move-result v0

    return v0

    :cond_9
    const-string v0, "please invoke getVideoDuration method after callback \"onADLoad\" or the ad does not support \"getVideoDuration\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public hasShown()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->hasShown()Z

    move-result v0

    return v0

    :cond_9
    const-string v0, "please invoke hasShown method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAD()V
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->d:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->e:Z

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    iget-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->b:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->f:Z

    return-void

    :cond_11
    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->loadAD()V

    return-void

    :cond_19
    const-string v0, "RewardVideo AD Init error, see more logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_1f
    :goto_1f
    const-string v0, "AD init Params OR Context error, details in logs produced while init RewardVideoAD"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->i:Ljava/util/Map;

    const-string v1, "clickUrl"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->j:Lcom/qq/e/comm/constants/LoadAdParams;

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/RVADI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :cond_9
    return-void
.end method

.method public setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->k:Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/RVADI;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    :cond_9
    return-void
.end method

.method public setTag(Ljava/util/Map;)V
    .registers 5

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_26

    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/e/comm/managers/GDTADManager;->getSM()Lcom/qq/e/comm/managers/setting/SM;

    move-result-object p1

    const-string v1, "ad_tags"

    iget-object v2, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/qq/e/comm/managers/setting/SM;->setDEVCodeSetting(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    const-string v0, "NativeUnifiedAD#setTag Exception"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    return-void
.end method

.method public showAD()V
    .registers 2

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/qq/e/comm/pi/RVADI;->showAD()V

    return-void

    :cond_8
    const-string v0, "please invoke showAD method after callback \"onADLoad\" "

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public showAD(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->c:Lcom/qq/e/comm/pi/RVADI;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/RVADI;->showAD(Landroid/app/Activity;)V

    return-void

    :cond_8
    const-string p1, "please invoke showAD method after callback \"onADLoad\" "

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    return-void
.end method
