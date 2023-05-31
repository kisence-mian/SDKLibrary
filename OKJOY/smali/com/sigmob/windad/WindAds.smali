.class public Lcom/sigmob/windad/WindAds;
.super Ljava/lang/Object;


# static fields
.field public static final ADSCENE:Ljava/lang/String; = "ad_scene"

.field private static volatile a:Lcom/sigmob/windad/WindAds;

.field public static isInited:Z


# instance fields
.field private b:Lcom/sigmob/windad/WindAdOptions;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:I

.field private f:Lcom/sigmob/windad/WindConsentStatus;

.field private g:Landroid/app/Activity;

.field private h:I

.field private i:Lcom/sigmob/windad/WindAgeRestictedUserStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sigmob/windad/WindAds;->e:I

    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->f:Lcom/sigmob/windad/WindConsentStatus;

    sget-object v0, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->WindAgeRestrictedStatusUnknow:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->i:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAdOptions;

    sput-boolean v1, Lcom/sigmob/windad/WindAds;->isInited:Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/WindAds;)I
    .registers 3

    iget v0, p0, Lcom/sigmob/windad/WindAds;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sigmob/windad/WindAds;->e:I

    return v0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/c/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static b()V
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    const-string v2, "2"

    sget-object v3, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static c()V
    .registers 2

    :try_start_0
    const-string v0, "LocationService"

    invoke-static {v0}, Lcom/sigmob/sdk/base/d/b;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/d/c;->b()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "initLocationMonitor fail"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private static d()V
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->startUpdate()V

    return-void
.end method

.method public static getUserId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.17.1"

    return-object v0
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .registers 5

    const/4 v3, 0x0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_37

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    if-nez v2, :cond_37

    :cond_23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_37
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static sharedAds()Lcom/sigmob/windad/WindAds;
    .registers 3

    sget-object v0, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    if-nez v0, :cond_19

    const-class v1, Lcom/sigmob/windad/WindAds;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    if-nez v0, :cond_18

    new-instance v0, Lcom/sigmob/windad/WindAds;

    invoke-direct {v0}, Lcom/sigmob/windad/WindAds;-><init>()V

    sput-object v0, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    sget-object v0, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sigmob/windad/WindAds;->setDebugEnable(Z)V

    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1c

    :cond_19
    sget-object v0, Lcom/sigmob/windad/WindAds;->a:Lcom/sigmob/windad/WindAds;

    return-object v0

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method


# virtual methods
.method a()V
    .registers 8

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getSendLogInterval()I

    move-result v0

    mul-int/lit16 v4, v0, 0x3e8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/WindAds$1;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/WindAds$1;-><init>(Lcom/sigmob/windad/WindAds;)V

    const-wide/16 v2, 0x3e8

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->g:Landroid/app/Activity;

    return-object v0
.end method

.method public getAgeRestrictedStatus()Lcom/sigmob/windad/WindAgeRestictedUserStatus;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->i:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/sigmob/windad/WindAdOptions;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAdOptions;

    return-object v0
.end method

.method public getUserAge()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/WindAds;->h:I

    return v0
.end method

.method public getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->f:Lcom/sigmob/windad/WindConsentStatus;

    return-object v0
.end method

.method public isDebugEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/WindAds;->d:Z

    return v0
.end method

.method public loadConsentStatus()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/windad/WindAds;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getConsentStatus()Lcom/sigmob/windad/consent/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/WindAds$2;->a:[I

    invoke-virtual {v0}, Lcom/sigmob/windad/consent/ConsentStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2a

    :goto_15
    return-void

    :pswitch_16
    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->ACCEPT:Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/WindAds;->setUserGDPRConsentStatus(Lcom/sigmob/windad/WindConsentStatus;)V

    goto :goto_15

    :catch_1c
    move-exception v0

    goto :goto_15

    :pswitch_1e
    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->DENIED:Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/WindAds;->setUserGDPRConsentStatus(Lcom/sigmob/windad/WindConsentStatus;)V

    goto :goto_15

    :pswitch_24
    sget-object v0, Lcom/sigmob/windad/WindConsentStatus;->UNKNOW:Lcom/sigmob/windad/WindConsentStatus;

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/WindAds;->setUserGDPRConsentStatus(Lcom/sigmob/windad/WindConsentStatus;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_1c

    goto :goto_15

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1e
        :pswitch_24
    .end packed-switch
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAds;->g:Landroid/app/Activity;

    return-void
.end method

.method public setDebugEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/sigmob/windad/WindAds;->d:Z

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_12

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    :goto_e
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    :goto_11
    return-void

    :cond_12
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    goto :goto_e

    :cond_15
    if-eqz p1, :cond_1d

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_19
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->setSdkHandlerLevel(Ljava/util/logging/Level;)V

    goto :goto_11

    :cond_1d
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    goto :goto_19
.end method

.method public setIsAgeRestrictedUser(Lcom/sigmob/windad/WindAgeRestictedUserStatus;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/WindAds;->i:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/WindAds;->i:Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(I)V

    :cond_19
    return-void
.end method

.method public setUserAge(I)V
    .registers 3

    iput p1, p0, Lcom/sigmob/windad/WindAds;->h:I

    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(I)V

    :cond_13
    return-void
.end method

.method public setUserGDPRConsentStatus(Lcom/sigmob/windad/WindConsentStatus;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/WindAds;->f:Lcom/sigmob/windad/WindConsentStatus;

    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public startWithOptions(Landroid/app/Activity;Lcom/sigmob/windad/WindAdOptions;)Z
    .registers 4

    if-nez p1, :cond_9

    const-string v0, "aity is null "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    iput-object p1, p0, Lcom/sigmob/windad/WindAds;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/app/Application;Lcom/sigmob/windad/WindAdOptions;)Z

    move-result v0

    goto :goto_8
.end method

.method public startWithOptions(Landroid/app/Application;Lcom/sigmob/windad/WindAdOptions;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string v1, "application is null "

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_8
    :goto_8
    return v0

    :cond_9
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid Options "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_8

    :cond_2c
    sget-boolean v1, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v1, :cond_3e

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/sigmob/windad/WindAdLifecycleManager;->initalize(Landroid/app/Application;)V

    goto :goto_8

    :cond_3e
    const-string v1, "already startWithOptions"

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_b

    const-string v0, "ApplicationContext is null "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    move v0, v6

    :goto_a
    return v0

    :cond_b
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid Options "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    move v0, v6

    goto :goto_a

    :cond_2f
    sget-boolean v1, Lcom/sigmob/windad/WindAds;->isInited:Z

    if-nez v1, :cond_e1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_e1

    :try_start_39
    iput-object p2, p0, Lcom/sigmob/windad/WindAds;->b:Lcom/sigmob/windad/WindAdOptions;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/windad/WindAds;->c:Landroid/content/Context;

    const-string v1, "sigmob"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sigmob"

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/common/utils/e;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/a/l;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->loadConsentStatus()V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getUserGDPRConsentStatus()Lcom/sigmob/windad/WindConsentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/WindConsentStatus;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getUserAge()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->c(I)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->getAgeRestrictedStatus()Lcom/sigmob/windad/WindAgeRestictedUserStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAgeRestictedUserStatus;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/windad/WindAds;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->b()V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->c()V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->d()V

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdOptions;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/WindAds;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/a;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/sigmob/sdk/a;

    invoke-static {}, Lcom/sigmob/sdk/base/models/PointEntity;->cleanLogsDBByLogCount()V

    invoke-virtual {p0}, Lcom/sigmob/windad/WindAds;->a()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sigmob/windad/WindAds;->isInited:Z
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_b0} :catch_b2

    goto/16 :goto_a

    :catch_b2
    move-exception v0

    const-string v1, "startWithOptions"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_b8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v1, "error_message"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "7"

    const/4 v3, 0x0

    sget-object v4, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_d7} :catch_da

    :goto_d7
    move v0, v6

    goto/16 :goto_a

    :catch_da
    move-exception v0

    const-string v1, "startWithOptions"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d7

    :cond_e1
    const-string v0, "already startWithOptions"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_a
.end method
