.class public Lcom/sigmob/windad/WindAds;
.super Ljava/lang/Object;


# static fields
.field public static final ADSCENE:Ljava/lang/String; = "ad_scene"

.field static a:I

.field private static volatile b:Lcom/sigmob/windad/WindAds;

.field public static isInited:Z


# instance fields
.field private c:Lcom/sigmob/windad/WindAdOptions;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:I

.field private g:Lcom/sigmob/windad/WindConsentStatus;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

.field private k:Z

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    sput v0, Lcom/sigmob/windad/WindAds;->a:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/windad/WindAds;->f:I

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    iput-object v1, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/WindConsentStatus;

    sget-object v1, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusUnknow:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    iput-object v1, p0, Lcom/sigmob/windad/WindAds;->j:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/windad/WindAds;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/windad/WindAds;->c:Lcom/sigmob/windad/WindAdOptions;

    sput-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAds;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/WindAds;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    new-instance p1, Lcom/sigmob/sdk/common/e/d;

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->getGDPRRegionURL()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/WindAds$2;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/WindAds$2;-><init>(Lcom/sigmob/windad/WindAds;)V

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/sigmob/sdk/common/e/d;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/common/e/d$a;I)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/e/l;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/common/e/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/WindAds;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/windad/WindAds;->e()V

    return-void
.end method

.method static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/sigmob/windad/WindAds;->h()V

    return-void
.end method

.method static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/sigmob/windad/WindAds;->j()V

    return-void
.end method

.method private e()V
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/mta/BuriedPointManager;->clearLogDB()V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->k()V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->i()V

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->a()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->g()V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/WindAds$3;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/WindAds$3;-><init>(Lcom/sigmob/windad/WindAds;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/SDKConfig;->setOnSDKUpdateListener(Lcom/sigmob/sdk/common/SDKConfig$a;)Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->startUpdate()V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->isEnable_report_crash()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/sigmob/sdk/common/c/a;->a()Lcom/sigmob/sdk/common/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/c/a;->b()V

    :cond_3f
    return-void
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    if-eqz v0, :cond_1a

    :try_start_4
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_gdpr_region"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->c(Z)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    move-exception v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method private static g()V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityCommon;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;-><init>()V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setAc_type(Ljava/lang/String;)V

    const-string v1, "init"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setCategory(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/SDKConfig;->isDisableUpAppInfo()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "1,1"

    goto :goto_1e

    :cond_1c
    const-string v1, "0,0"

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setAppinfo_switch(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->ak()Landroid/location/Location;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/SDKConfig;->isDisable_up_location()Z

    move-result v4

    if-nez v4, :cond_3b

    move v3, v1

    :cond_3b
    xor-int/lit8 v1, v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->setLocation_switch(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityCommon;->commit()V

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/common/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.24.0"

    return-object v0
.end method

.method private static h()V
    .registers 2

    :try_start_0
    const-string v0, "LocationService"

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/j;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/j$a;->a()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    const-string v1, "initLocationMonitor fail"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method private static i()V
    .registers 2

    :try_start_0
    const-string v0, "AppInstallService"

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/j;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/j$a;->a()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    const-string v1, "initAppInstallService fail"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method private static j()V
    .registers 2

    :try_start_0
    const-string v0, "WifiScanService"

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/j;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/j$a;->a()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    const-string v1, "WifiScanServiceName fail"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method private static k()V
    .registers 2

    :try_start_0
    const-string v0, "DownloadService"

    invoke-static {v0}, Lcom/sigmob/sdk/base/services/j;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/services/j$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/services/j$a;->a()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    const-string v1, "initDownloadService fail"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .registers 7

    if-eqz p0, :cond_28

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_28

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/sigmob/sdk/common/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Lcom/sigmob/sdk/common/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v4}, Lcom/sigmob/sdk/common/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v1, :cond_20

    if-eqz v3, :cond_20

    if-nez v5, :cond_28

    :cond_20
    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_28
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/common/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static sharedAds()Lcom/sigmob/windad/WindAds;
    .registers 3

    sget-object v0, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAds;

    if-nez v0, :cond_1d

    const-class v0, Lcom/sigmob/windad/WindAds;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAds;

    if-nez v1, :cond_18

    new-instance v1, Lcom/sigmob/windad/WindAds;

    invoke-direct {v1}, Lcom/sigmob/windad/WindAds;-><init>()V

    sput-object v1, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAds;

    sget-object v1, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAds;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/WindAds;->setDebugEnable(Z)V

    :cond_18
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1

    :cond_1d
    :goto_1d
    sget-object v0, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAds;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 10

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getSendLogInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/sigmob/windad/WindAds$4;

    invoke-direct {v3, p0}, Lcom/sigmob/windad/WindAds$4;-><init>(Lcom/sigmob/windad/WindAds;)V

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method b()V
    .registers 5

    sget v0, Lcom/sigmob/windad/WindAds;->a:I

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/SDKConfig;->getAutoLoadInterval()I

    move-result v1

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getAutoLoadInterval()I

    move-result v0

    sput v0, Lcom/sigmob/windad/WindAds;->a:I

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->l:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getAutoLoadInterval()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->l:Landroid/os/Handler;

    sget v2, Lcom/sigmob/windad/WindAds;->a:I

    mul-int/2addr v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_31
    return-void
.end method

.method public canCollectPersonalInformation()Z
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->b()Z

    move-result v0

    return v0
.end method

.method public debugDeviceID()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1f

    const-string v2, "debug device Type: IMEI,  ID => %s"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_5a

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    :try_start_20
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "debug device Type: gaid, ID => %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    move v1, v3

    :cond_3c
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->O()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "debug device Type oaid, ID => %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_20 .. :try_end_57} :catchall_58

    goto :goto_5d

    :catchall_58
    move-exception v2

    goto :goto_5c

    :catchall_5a
    move-exception v1

    move v1, v0

    :cond_5c
    :goto_5c
    move v3, v1

    :goto_5d
    if-nez v3, :cond_6a

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "can\'t find any can be used debug valid Device Type"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_6a
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgeRestrictedStatus()Lcom/sigmob/windad/WindAgeRestictedUserStatus;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->j:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    sget-object v1, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusUnknow:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    if-eqz v0, :cond_36

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wind_agerestricted_status"

    sget-object v2, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusUnknow:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusNO:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_27

    sget-object v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusNO:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    :goto_24
    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->j:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    goto :goto_36

    :cond_27
    sget-object v1, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusYES:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_32

    sget-object v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusYES:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    goto :goto_24

    :cond_32
    sget-object v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusUnknow:Lcom/sigmob/windad/WindAgeRestictedUserStatus;
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    goto :goto_24

    :catchall_35
    move-exception v0

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->j:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/sigmob/windad/WindAdOptions;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->c:Lcom/sigmob/windad/WindAdOptions;

    return-object v0
.end method

.method public getUserAge()I
    .registers 4

    :try_start_0
    iget v0, p0, Lcom/sigmob/windad/WindAds;->i:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wind_consent_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/windad/WindAds;->i:I
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_17

    :catchall_16
    move-exception v0

    :cond_17
    :goto_17
    iget v0, p0, Lcom/sigmob/windad/WindAds;->i:I

    return v0
.end method

.method public getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/WindConsentStatus;

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    if-ne v0, v1, :cond_3e

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    if-eqz v0, :cond_3e

    :try_start_a
    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wind_consent_status"

    sget-object v2, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->ACCEPT:Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->ACCEPT:Lcom/sigmob/windad/WindConsentStatus;

    :goto_28
    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/WindConsentStatus;

    goto :goto_3e

    :cond_2b
    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    goto :goto_28

    :cond_3a
    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3d

    goto :goto_28

    :catchall_3d
    move-exception v0

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/WindConsentStatus;

    return-object v0
.end method

.method public getWindUid()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDebugEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->e:Z

    return v0
.end method

.method public loadConsentStatus()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    invoke-direct {p0}, Lcom/sigmob/windad/WindAds;->f()V

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/WindConsentStatus;

    sget-object v1, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getConsentStatus()Lcom/sigmob/windad/consent/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindAds$5;->a:[I

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    :pswitch_22
    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    :goto_24
    invoke-virtual {p0, v0}, Lcom/sigmob/windad/WindAds;->setUserGDPRConsentStatus(Lcom/sigmob/windad/WindConsentStatus;)V

    goto :goto_2f

    :pswitch_28
    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    goto :goto_24

    :pswitch_2b
    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->ACCEPT:Lcom/sigmob/windad/WindConsentStatus;
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    goto :goto_24

    :catchall_2e
    move-exception v0

    :cond_2f
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDebugEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAds;->e:Z

    sget-object v0, Lcom/sigmob/sdk/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_14

    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_16

    :cond_f
    if-eqz p1, :cond_14

    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_16

    :cond_14
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    :goto_16
    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method public setIsAgeRestrictedUser(Lcom/sigmob/windad/WindAgeRestictedUserStatus;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/WindAds;->j:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    sget-boolean p1, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->j:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/a;->b(I)V

    :cond_19
    return-void
.end method

.method public setUserAge(I)V
    .registers 3

    iput p1, p0, Lcom/sigmob/windad/WindAds;->i:I

    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/a;->c(I)V

    :cond_13
    return-void
.end method

.method public setUserGDPRConsentStatus(Lcom/sigmob/windad/WindConsentStatus;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/WindConsentStatus;

    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/a;->d(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public setUserGDPRDialogRegion(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAds;->k:Z

    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/a;->b(Z)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/a;->d(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public startWithOptions(Landroid/app/Activity;Lcom/sigmob/windad/WindAdOptions;)Z
    .registers 3

    if-nez p1, :cond_9

    const-string p1, "activity is null "

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/sigmob/windad/WindAds;->setActivity(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/app/Application;Lcom/sigmob/windad/WindAdOptions;)Z

    move-result p1

    return p1
.end method

.method public startWithOptions(Landroid/app/Application;Lcom/sigmob/windad/WindAdOptions;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string p1, "application is null "

    :goto_5
    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v0

    :cond_9
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2f

    :cond_16
    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->initalize(Landroid/app/Application;)V

    :cond_27
    return p2

    :cond_28
    const-string p1, "already startWithOptions"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2f
    :goto_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid Options "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method

.method public startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z
    .registers 11

    const-string v0, "sigmob"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p1, "ApplicationContext is null "

    :goto_7
    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v1

    :cond_b
    if-eqz p2, :cond_b9

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_b9

    :cond_19
    sget-boolean v2, Lcom/sigmob/windad/WindAds;->isInited:Z

    const/4 v3, 0x1

    if-nez v2, :cond_b3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_b3

    :try_start_24
    iput-object p2, p0, Lcom/sigmob/windad/WindAds;->c:Lcom/sigmob/windad/WindAdOptions;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/windad/WindAds;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v0}, Lcom/sigmob/sdk/common/f/e;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v2, p2}, Lcom/sigmob/sdk/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/common/a/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->loadConsentStatus()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/common/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getUserAge()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/common/a;->c(I)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getAgeRestrictedStatus()Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->getValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/common/a;->b(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/windad/WindAds;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sigmob/windad/WindAds;->a(Landroid/content/Context;)V

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "WindAdsHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/sigmob/windad/WindAds$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sigmob/windad/WindAds$1;-><init>(Lcom/sigmob/windad/WindAds;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sigmob/windad/WindAds;->l:Landroid/os/Handler;

    sput-boolean v3, Lcom/sigmob/windad/WindAds;->isInited:Z
    :try_end_94
    .catchall {:try_start_24 .. :try_end_94} :catchall_95

    return v3

    :catchall_95
    move-exception p1

    const-string p2, "startWithOptions"

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_9b
    const-string v2, "init"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INIT_FAIL:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V
    :try_end_ad
    .catchall {:try_start_9b .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception p1

    invoke-static {p2, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b2
    return v1

    :cond_b3
    const-string p1, "already startWithOptions"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return v3

    :cond_b9
    :goto_b9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid Options "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7
.end method
