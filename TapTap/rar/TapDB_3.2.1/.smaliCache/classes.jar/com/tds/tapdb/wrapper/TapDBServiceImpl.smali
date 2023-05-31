.class public Lcom/tds/tapdb/wrapper/TapDBServiceImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/tds/tapdb/wrapper/TapDBService;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetDynamicProperties()Ljava/lang/String;
.end method


# virtual methods
.method public clearStaticProperties()V
    .registers 2

    const-string v0, "TapDBServiceImpl [clearStaticProperties] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->clearStaticProperties()V

    return-void
.end method

.method public clearUser()V
    .registers 2

    const-string v0, "TapDBServiceImpl [clearUser] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->clearUser()V

    return-void
.end method

.method public closeFetchTapTapDeviceId()V
    .registers 1

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->closeFetchTapTapDeviceId()V

    return-void
.end method

.method public deviceAdd(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [deviceAdd] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->deviceAdd(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public deviceInitialize(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [deviceInitialize] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->deviceInitialize(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public deviceUpdate(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [deviceUpdate] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->deviceUpdate(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public enableLog(Z)V
    .registers 2

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->enableLog(Z)V

    const-string p1, "TapDBServiceImpl [enableLog] method called"

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getTapTapDID(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->getTapTapDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "TapDBServiceImpl [init(Activity activity, String clientId, String channel)] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "TapDBServiceImpl [init(Activity activity, String clientId, String channel, String gameVersion)] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "TapDBServiceImpl [init(Activity activity, String clientId, String channel, String gameVersion, String properties)] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "TapDBServiceImpl [init(Activity activity, String clientId, String channel, String gameVersion,boolean isCN)] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "TapDBServiceImpl [init(Activity activity, String clientId, String channel, boolean isCN)] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/tds/tapdb/sdk/TapDB;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "TapDBServiceImpl [onCharge] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static/range {p1 .. p6}, Lcom/tds/tapdb/sdk/TapDB;->onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChargeWithProperties(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string v0, "TapDBService [onChargeWithProperties] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v7}, Lcom/tds/tapdb/sdk/TapDB;->onCharge(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "TapDBServiceImpl [onEvent] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tds/tapdb/sdk/TapDB;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public registerDynamicProperties(Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "TapDBServiceImpl [registerDynamicProperties] method getDynamicProperties failed"

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;->getDynamicProperties()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TapDBServiceImpl [registerDynamicProperties] method called:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$a;

    invoke-direct {v0, p0, p1}, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$a;-><init>(Lcom/tds/tapdb/wrapper/TapDBServiceImpl;Lcom/tds/tapdb/wrapper/TapDBDynamicProperties;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->registerDynamicProperties(Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;)V

    return-void
.end method

.method public registerDynamicPropertiesUE()V
    .registers 2

    invoke-static {}, Lcom/tds/common/utils/EngineUtil;->isUnreal()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$b;

    invoke-direct {v0, p0}, Lcom/tds/tapdb/wrapper/TapDBServiceImpl$b;-><init>(Lcom/tds/tapdb/wrapper/TapDBServiceImpl;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->registerDynamicProperties(Lcom/tds/tapdb/sdk/TapDB$TapDBDataDynamicProperties;)V

    return-void
.end method

.method public registerStaticProperties(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [registerStaticProperties] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->registerStaticProperties(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public setCustomEventHost(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [setCustomEventHost] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->setCustomEventHost(Ljava/lang/String;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [setHost] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method public setLevel(I)V
    .registers 3

    const-string v0, "TapDBServiceImpl [setLevel] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->setLevel(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [setName] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [setServer] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->setServer(Ljava/lang/String;)V

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [setUser(String userId)] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->setUser(Ljava/lang/String;)V

    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "TapDBServiceImpl [setUser(String userId, String loginType)] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->isTapEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Lcom/tds/tapdb/wrapper/a;->a(Ljava/lang/String;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tds/tapdb/sdk/TapDB;->setUser(Ljava/lang/String;Lcom/tds/tapdb/sdk/LoginType;)V

    goto :goto_20

    :cond_13
    :try_start_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tds/tapdb/sdk/TapDB;->setUser(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_20
    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "TapDBServiceImpl [track] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tds/tapdb/sdk/TapDB;->trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "TapDBServiceImpl [track] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/tds/tapdb/sdk/TapDB;->trackEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public unregisterStaticProperty(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [unregisterStaticProperty] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tds/tapdb/sdk/TapDB;->unregisterStaticProperty(Ljava/lang/String;)V

    return-void
.end method

.method public userAdd(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [userAdd] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->userAdd(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public userInitialize(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [userInitialize] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->userInitialize(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method

.method public userUpdate(Ljava/lang/String;)V
    .registers 3

    const-string v0, "TapDBServiceImpl [userUpdate] method called"

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB;->userUpdate(Lorg/json/JSONObject;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :goto_12
    return-void
.end method
