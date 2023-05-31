.class public Lcom/qq/e/comm/managers/GDTADManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/comm/managers/GDTADManager$a;
    }
.end annotation


# static fields
.field public static final INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile a:Ljava/lang/Boolean;

.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/qq/e/comm/managers/setting/SM;

.field private volatile d:Lcom/qq/e/comm/managers/plugin/PM;

.field private volatile e:Lcom/qq/e/comm/managers/status/APPStatus;

.field private volatile f:Lcom/qq/e/comm/managers/status/DeviceStatus;

.field private volatile g:Ljava/lang/String;

.field private h:Lcom/qq/e/comm/managers/plugin/PM$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/qq/e/comm/managers/GDTADManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qq/e/comm/managers/GDTADManager;
    .registers 1

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager$a;->a()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildS2SSBaseInfo()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qq/e/comm/managers/GDTADManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->c:Lcom/qq/e/comm/managers/setting/SM;

    invoke-static {v0}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/setting/SM;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app"

    iget-object v2, p0, Lcom/qq/e/comm/managers/GDTADManager;->e:Lcom/qq/e/comm/managers/status/APPStatus;

    invoke-static {v2}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/APPStatus;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v2, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/DeviceStatus;

    invoke-static {v2}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/DeviceStatus;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    iget-object v2, p0, Lcom/qq/e/comm/managers/GDTADManager;->d:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v2}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/plugin/PM;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2d
    return-object v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public getADActivityClazz()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getADActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getAppStatus()Lcom/qq/e/comm/managers/status/APPStatus;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->e:Lcom/qq/e/comm/managers/status/APPStatus;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/qq/e/comm/managers/status/DeviceStatus;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/DeviceStatus;

    return-object v0
.end method

.method public getDownLoadClazz()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getDownLoadServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLandscapeADActivityClazz()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getLandscapeADActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPM()Lcom/qq/e/comm/managers/plugin/PM;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->d:Lcom/qq/e/comm/managers/plugin/PM;

    return-object v0
.end method

.method public getPortraitADActivityClazz()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getPortraitADActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardvideoLandscapeADActivityClazz()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getRewardvideoLandscapeADActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRewardvideoPortraitADActivityClazz()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/qq/e/comm/constants/CustomPkgConstants;->getRewardvideoPortraitADActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSM()Lcom/qq/e/comm/managers/setting/SM;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->c:Lcom/qq/e/comm/managers/setting/SM;

    return-object v0
.end method

.method public declared-synchronized initWith(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_11

    const-string v0, "system version not support !"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_84

    move v0, v8

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v9

    goto :goto_f

    :cond_1b
    if-eqz p1, :cond_23

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_23
    const-string v0, "Context And APPID should Never Be NULL while init GDTADManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_84

    move v0, v8

    goto :goto_f

    :cond_2a
    :try_start_2a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {p1}, Lcom/qq/e/comm/util/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    new-instance v0, Lcom/qq/e/comm/managers/setting/SM;

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/setting/SM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->c:Lcom/qq/e/comm/managers/setting/SM;

    new-instance v0, Lcom/qq/e/comm/managers/plugin/PM;

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/GDTADManager;->h:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/managers/plugin/PM;-><init>(Landroid/content/Context;Lcom/qq/e/comm/managers/plugin/PM$a$a;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->d:Lcom/qq/e/comm/managers/plugin/PM;

    new-instance v0, Lcom/qq/e/comm/managers/status/APPStatus;

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {v0, p2, v1}, Lcom/qq/e/comm/managers/status/APPStatus;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->e:Lcom/qq/e/comm/managers/status/APPStatus;

    new-instance v0, Lcom/qq/e/comm/managers/status/DeviceStatus;

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qq/e/comm/managers/status/DeviceStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/DeviceStatus;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_76

    invoke-static {}, Lcom/qq/e/comm/services/a;->a()Lcom/qq/e/comm/services/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/comm/managers/GDTADManager;->c:Lcom/qq/e/comm/managers/setting/SM;

    iget-object v3, p0, Lcom/qq/e/comm/managers/GDTADManager;->d:Lcom/qq/e/comm/managers/plugin/PM;

    iget-object v4, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/DeviceStatus;

    iget-object v5, p0, Lcom/qq/e/comm/managers/GDTADManager;->e:Lcom/qq/e/comm/managers/status/APPStatus;

    invoke-virtual/range {v0 .. v7}, Lcom/qq/e/comm/services/a;->a(Landroid/content/Context;Lcom/qq/e/comm/managers/setting/SM;Lcom/qq/e/comm/managers/plugin/PM;Lcom/qq/e/comm/managers/status/DeviceStatus;Lcom/qq/e/comm/managers/status/APPStatus;J)V

    :cond_76
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_7a} :catch_7c
    .catchall {:try_start_2a .. :try_end_7a} :catchall_84

    move v0, v9

    goto :goto_f

    :catch_7c
    move-exception v0

    :try_start_7d
    const-string v1, "ADManager init error"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_84

    move v0, v8

    goto :goto_f

    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public setPluginLoadListener(Lcom/qq/e/comm/managers/plugin/PM$a$a;)V
    .registers 2
    .param p1, "listener"    # Lcom/qq/e/comm/managers/plugin/PM$a$a;

    .prologue
    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->h:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    return-void
.end method
