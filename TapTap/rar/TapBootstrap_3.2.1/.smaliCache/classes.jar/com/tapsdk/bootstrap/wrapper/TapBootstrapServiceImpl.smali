.class public Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;
.super Ljava/lang/Object;
.source "TapBootstrapServiceImpl.java"

# interfaces
.implements Lcom/tapsdk/bootstrap/wrapper/TapBootstrapService;


# static fields
.field private static final GET_USER_INFO_FAILED:I = 0x1

.field private static final GET_USER_INFO_SUCCESS:I = 0x0

.field private static final LOGIN_CANCEL:I = 0x1

.field private static final LOGIN_CODE_KEY:Ljava/lang/String; = "loginCallbackCode"

.field private static final LOGIN_ERROR:I = 0x2

.field private static final LOGIN_SUCCESS:I = 0x0

.field private static final USER_DETAIL_INFO_CODE_KEY:Ljava/lang/String; = "getUserDetailInfoCode"

.field private static final USER_INFO_CODE_KEY:Ljava/lang/String; = "getUserInfoCode"

.field private static final USER_STATE_BIND:I = 0x2

.field private static final USER_STATE_LOGOUT:I = 0x1

.field private static final USER_STATUS_CODE_KEY:Ljava/lang/String; = "userStatusCallbackCode"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "codeKey"    # Ljava/lang/String;

    .line 152
    if-nez p1, :cond_4

    const-string p1, ""

    .line 153
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_9
    const-string v1, "wrapper"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_11} :catch_12

    .line 159
    goto :goto_16

    .line 157
    :catch_12
    move-exception v1

    .line 158
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_16
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public anonymouslyLogin(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 108
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->logInAnonymously()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$2;-><init>(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 129
    return-void
.end method

.method public getUser(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 133
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->currentUser()Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v0

    .line 134
    .local v0, "currentUser":Lcom/tapsdk/bootstrap/account/TDSUser;
    const-string v1, "getUserInfoCode"

    if-nez v0, :cond_13

    .line 135
    const/4 v2, 0x1

    const-string v3, "{}"

    invoke-direct {p0, v3, v2, v1}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    goto :goto_1f

    .line 137
    :cond_13
    invoke-virtual {v0}, Lcom/tapsdk/bootstrap/account/TDSUser;->toJSONInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;->constructorBridgeWrapper(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 139
    :goto_1f
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/tds/common/log/Logger;->getCommonLogger()Lcom/tds/common/log/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, "TDS SDK init config:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 66
    :try_start_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "dbConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    .local v2, "dbJsonObject":Lorg/json/JSONObject;
    const/4 v4, 0x0

    if-eqz v2, :cond_28

    const-string v5, "channel"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_29

    :cond_28
    move-object v5, v4

    .line 69
    .local v5, "channel":Ljava/lang/String;
    :goto_29
    if-eqz v2, :cond_31

    const-string v4, "gameVersion"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "gameVersion":Ljava/lang/String;
    :cond_31
    if-eqz v2, :cond_3b

    const-string v6, "enable"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3c

    :cond_3b
    move v3, v1

    .line 72
    .local v3, "enable":Z
    :cond_3c
    new-instance v6, Lcom/tds/common/entities/TapDBConfig;

    invoke-direct {v6}, Lcom/tds/common/entities/TapDBConfig;-><init>()V

    .line 73
    .local v6, "dbConfig":Lcom/tds/common/entities/TapDBConfig;
    invoke-virtual {v6, v3}, Lcom/tds/common/entities/TapDBConfig;->setEnable(Z)V

    .line 74
    invoke-virtual {v6, v5}, Lcom/tds/common/entities/TapDBConfig;->setChannel(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6, v4}, Lcom/tds/common/entities/TapDBConfig;->setGameVersion(Ljava/lang/String;)V

    .line 77
    new-instance v7, Lcom/tds/common/entities/TapConfig$Builder;

    invoke-direct {v7}, Lcom/tds/common/entities/TapConfig$Builder;-><init>()V

    invoke-virtual {v7, p1}, Lcom/tds/common/entities/TapConfig$Builder;->withAppContext(Landroid/content/Context;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v7

    const-string v8, "serverUrl"

    .line 78
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tds/common/entities/TapConfig$Builder;->withServerUrl(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v7

    const-string v8, "clientID"

    .line 79
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tds/common/entities/TapConfig$Builder;->withClientId(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v7

    const-string v8, "clientToken"

    .line 80
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tds/common/entities/TapConfig$Builder;->withClientToken(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v7

    const-string v8, "isCN"

    .line 81
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v1, 0x2

    :goto_7b
    invoke-virtual {v7, v1}, Lcom/tds/common/entities/TapConfig$Builder;->withRegionType(I)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v6}, Lcom/tds/common/entities/TapConfig$Builder;->withTapDBConfig(Lcom/tds/common/entities/TapDBConfig;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/tds/common/entities/TapConfig$Builder;->build()Lcom/tds/common/entities/TapConfig;

    move-result-object v1

    .line 85
    .local v1, "tapConfig":Lcom/tds/common/entities/TapConfig;
    invoke-static {p1, v1}, Lcom/tapsdk/bootstrap/TapBootstrap;->init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_8a} :catch_8b

    .line 88
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "tapConfig":Lcom/tds/common/entities/TapConfig;
    .end local v2    # "dbJsonObject":Lorg/json/JSONObject;
    .end local v3    # "enable":Z
    .end local v4    # "gameVersion":Ljava/lang/String;
    .end local v5    # "channel":Ljava/lang/String;
    .end local v6    # "dbConfig":Lcom/tds/common/entities/TapDBConfig;
    goto :goto_8f

    .line 86
    :catch_8b
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_8f
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clientID"    # Ljava/lang/String;
    .param p3, "isRegionType"    # Z

    .line 55
    invoke-static {}, Lcom/tds/common/log/Logger;->getCommonLogger()Lcom/tds/common/log/Logger;

    move-result-object v0

    const-string v1, "TDS SDK init"

    invoke-virtual {v0, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/tds/common/entities/TapConfig$Builder;

    invoke-direct {v0}, Lcom/tds/common/entities/TapConfig$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tds/common/entities/TapConfig$Builder;->withAppContext(Landroid/content/Context;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p2}, Lcom/tds/common/entities/TapConfig$Builder;->withClientId(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v0

    if-eqz p3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x2

    .line 58
    :goto_1b
    invoke-virtual {v0, v1}, Lcom/tds/common/entities/TapConfig$Builder;->withRegionType(I)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/entities/TapConfig$Builder;->build()Lcom/tds/common/entities/TapConfig;

    move-result-object v0

    .line 59
    .local v0, "config":Lcom/tds/common/entities/TapConfig;
    invoke-static {p1, v0}, Lcom/tapsdk/bootstrap/TapBootstrap;->init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;)V

    .line 60
    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;[Ljava/lang/String;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;
    .param p3, "permissions"    # [Ljava/lang/String;
        .annotation runtime Lcom/tds/common/bridge/annotation/BridgeParam;
            arrayClz = Ljava/lang/String;
            value = "permissions"
        .end annotation
    .end param

    .line 93
    new-instance v0, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl$1;-><init>(Lcom/tapsdk/bootstrap/wrapper/TapBootstrapServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {p1, v0, p3}, Lcom/tapsdk/bootstrap/TapBootstrap;->loginWithTapTap(Landroid/app/Activity;Lcom/tapsdk/bootstrap/Callback;[Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public logout()V
    .registers 1

    .line 143
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->logOut()V

    .line 144
    return-void
.end method

.method public setPreferredLanguage(I)V
    .registers 2
    .param p1, "language"    # I

    .line 148
    invoke-static {p1}, Lcom/tapsdk/bootstrap/TapBootstrap;->setPreferredLanguage(I)V

    .line 149
    return-void
.end method
