.class public Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;
.super Ljava/lang/Object;
.source "TDSLoginServiceImpl.java"

# interfaces
.implements Lcom/taptap/sdk/wrapper/TDSLoginService;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final logger:Lcom/tds/common/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/tds/common/log/Logger;->getCommonLogger()Lcom/tds/common/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    return-void
.end method


# virtual methods
.method public changeConfig(ZZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "changeConfig"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/taptap/sdk/LoginSdkConfig;

    invoke-direct {v0}, Lcom/taptap/sdk/LoginSdkConfig;-><init>()V

    .line 3
    iput-boolean p1, v0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 4
    iput-boolean p2, v0, Lcom/taptap/sdk/LoginSdkConfig;->isPortrait:Z

    .line 5
    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->changeTapLoginConfig(Lcom/taptap/sdk/LoginSdkConfig;)V

    return-void
.end method

.method public currentAccessToken(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "getCurrentAccessToken"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentAccessToken()Lcom/taptap/sdk/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {v0}, Lcom/taptap/sdk/AccessToken;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    goto :goto_1b

    :cond_17
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public currentProfile(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "getCurrentProfile"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {v0}, Lcom/taptap/sdk/Profile;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    goto :goto_1b

    :cond_17
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public fetchProfileForCurrentAccessToken(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "fetchProfileForCurrentAccessToken"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$b;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$b;-><init>(Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->fetchProfileForCurrentAccessToken(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    return-void
.end method

.method public getTestQualification(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;

    invoke-direct {v1, p0, v0, p1}, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$c;-><init>(Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;Ljava/util/Map;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v1}, Lcom/taptap/sdk/TapLoginHelper;->getTestQualification(Lcom/taptap/sdk/net/Api$ApiCallback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->init(Landroid/app/Activity;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;ZZ)V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "init"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/taptap/sdk/LoginSdkConfig;

    invoke-direct {v0}, Lcom/taptap/sdk/LoginSdkConfig;-><init>()V

    if-eqz p3, :cond_13

    .line 4
    sget-object p3, Lcom/taptap/sdk/RegionType;->CN:Lcom/taptap/sdk/RegionType;

    goto :goto_15

    :cond_13
    sget-object p3, Lcom/taptap/sdk/RegionType;->IO:Lcom/taptap/sdk/RegionType;

    :goto_15
    iput-object p3, v0, Lcom/taptap/sdk/LoginSdkConfig;->regionType:Lcom/taptap/sdk/RegionType;

    .line 5
    iput-boolean p4, v0, Lcom/taptap/sdk/LoginSdkConfig;->roundCorner:Z

    .line 6
    invoke-static {p1, p2, v0}, Lcom/taptap/sdk/TapLoginHelper;->init(Landroid/content/Context;Ljava/lang/String;Lcom/taptap/sdk/LoginSdkConfig;)V

    return-void
.end method

.method public logout()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->logout()V

    return-void
.end method

.method public registerLoginCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerLoginCallback"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl$a;-><init>(Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v0}, Lcom/taptap/sdk/TapLoginHelper;->registerLoginCallback(Lcom/taptap/sdk/TapLoginHelper$TapLoginResultCallback;)V

    return-void
.end method

.method public startTapLogin(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "startTapLogin"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lcom/taptap/sdk/TapLoginHelper;->startTapLogin(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method public unregisterLoginCallback()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/taptap/sdk/wrapper/TDSLoginServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "unregisterLoginCallback"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->unregisterLoginCallback()V

    return-void
.end method
