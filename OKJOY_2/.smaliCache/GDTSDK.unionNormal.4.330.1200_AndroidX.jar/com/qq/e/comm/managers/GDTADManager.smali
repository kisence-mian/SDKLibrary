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

.field private volatile e:Lcom/qq/e/comm/managers/devtool/DevTools;

.field private volatile f:Lcom/qq/e/comm/managers/status/APPStatus;

.field private volatile g:Lcom/qq/e/comm/managers/status/DeviceStatus;

.field private volatile h:Ljava/lang/String;

.field private i:Lcom/qq/e/comm/managers/plugin/PM$a$a;


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

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/APPStatus;

    invoke-static {v1}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/APPStatus;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->g:Lcom/qq/e/comm/managers/status/DeviceStatus;

    invoke-static {v1}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/status/DeviceStatus;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/qq/e/comm/managers/GDTADManager;->d:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-static {v1}, Lcom/qq/e/comm/net/a;->a(Lcom/qq/e/comm/managers/plugin/PM;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_2e
    const/4 v0, 0x0

    return-object v0
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

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/APPStatus;

    return-object v0
.end method

.method public getDevTools()Lcom/qq/e/comm/managers/devtool/DevTools;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->e:Lcom/qq/e/comm/managers/devtool/DevTools;

    if-nez v0, :cond_b

    new-instance v0, Lcom/qq/e/comm/managers/devtool/DevTools;

    invoke-direct {v0}, Lcom/qq/e/comm/managers/devtool/DevTools;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->e:Lcom/qq/e/comm/managers/devtool/DevTools;

    :cond_b
    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->e:Lcom/qq/e/comm/managers/devtool/DevTools;

    return-object v0
.end method

.method public getDeviceStatus()Lcom/qq/e/comm/managers/status/DeviceStatus;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->g:Lcom/qq/e/comm/managers/status/DeviceStatus;

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

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->h:Ljava/lang/String;

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
    .registers 14

    monitor-enter p0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-ge v0, v1, :cond_f

    const-string v0, "system version not support !"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_84

    monitor-exit p0

    return v2

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_84

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    monitor-exit p0

    return v1

    :cond_1a
    if-eqz p1, :cond_7d

    :try_start_1c
    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_84

    if-eqz v0, :cond_23

    goto :goto_7d

    :cond_23
    :try_start_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-static {p1}, Lcom/qq/e/comm/util/SystemUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    new-instance p1, Lcom/qq/e/comm/managers/setting/SM;

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/qq/e/comm/managers/setting/SM;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->c:Lcom/qq/e/comm/managers/setting/SM;

    new-instance p1, Lcom/qq/e/comm/managers/plugin/PM;

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/comm/managers/GDTADManager;->i:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    invoke-direct {p1, v0, v3}, Lcom/qq/e/comm/managers/plugin/PM;-><init>(Landroid/content/Context;Lcom/qq/e/comm/managers/plugin/PM$a$a;)V

    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->d:Lcom/qq/e/comm/managers/plugin/PM;

    new-instance p1, Lcom/qq/e/comm/managers/status/APPStatus;

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/qq/e/comm/managers/status/APPStatus;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/APPStatus;

    new-instance p1, Lcom/qq/e/comm/managers/status/DeviceStatus;

    iget-object p2, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/qq/e/comm/managers/status/DeviceStatus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->g:Lcom/qq/e/comm/managers/status/DeviceStatus;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x7

    if-le p1, p2, :cond_6f

    invoke-static {}, Lcom/qq/e/comm/services/a;->a()Lcom/qq/e/comm/services/a;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/e/comm/managers/GDTADManager;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/qq/e/comm/managers/GDTADManager;->c:Lcom/qq/e/comm/managers/setting/SM;

    iget-object v6, p0, Lcom/qq/e/comm/managers/GDTADManager;->d:Lcom/qq/e/comm/managers/plugin/PM;

    iget-object v7, p0, Lcom/qq/e/comm/managers/GDTADManager;->g:Lcom/qq/e/comm/managers/status/DeviceStatus;

    iget-object v8, p0, Lcom/qq/e/comm/managers/GDTADManager;->f:Lcom/qq/e/comm/managers/status/APPStatus;

    invoke-virtual/range {v3 .. v10}, Lcom/qq/e/comm/services/a;->a(Landroid/content/Context;Lcom/qq/e/comm/managers/setting/SM;Lcom/qq/e/comm/managers/plugin/PM;Lcom/qq/e/comm/managers/status/DeviceStatus;Lcom/qq/e/comm/managers/status/APPStatus;J)V

    :cond_6f
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;
    :try_end_73
    .catchall {:try_start_23 .. :try_end_73} :catchall_75

    monitor-exit p0

    return v1

    :catchall_75
    move-exception p1

    :try_start_76
    const-string p2, "ADManager init error"

    invoke-static {p2, p1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_84

    monitor-exit p0

    return v2

    :cond_7d
    :goto_7d
    :try_start_7d
    const-string v0, "Context And APPID should Never Be NULL while init GDTADManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_84

    monitor-exit p0

    return v2

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/qq/e/comm/managers/GDTADManager;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setPluginLoadListener(Lcom/qq/e/comm/managers/plugin/PM$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/e/comm/managers/GDTADManager;->i:Lcom/qq/e/comm/managers/plugin/PM$a$a;

    return-void
.end method
