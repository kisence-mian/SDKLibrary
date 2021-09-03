.class public Lcom/tds/common/wrapper/TDSCommonServiceImpl;
.super Ljava/lang/Object;
.source "TDSCommonServiceImpl.java"

# interfaces
.implements Lcom/tds/common/wrapper/TDSCommonService;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TRACKER_ENDPOINT_DOMESTIC:Ljava/lang/String; = "openlog.taptap.com"

.field public static final TRACKER_ENDPOINT_IO:Ljava/lang/String; = "openlog.tap.io"


# instance fields
.field private logger:Lcom/tds/common/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "common_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    return-void
.end method


# virtual methods
.method public addHost(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "replaceHost"    # Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/tds/common/net/util/HostReplaceUtil;->getInstance()Lcom/tds/common/net/util/HostReplaceUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tds/common/net/util/HostReplaceUtil;->addReplacedHostPair(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public getRegionCode(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 108
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "getRegionCode"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/tds/common/wrapper/TDSCommonServiceImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/tds/common/wrapper/TDSCommonServiceImpl$1;-><init>(Lcom/tds/common/wrapper/TDSCommonServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {p1, v0}, Lcom/tds/common/region/TdsRegionHelper;->getRegionCode(Landroid/content/Context;Lcom/tds/common/region/TdsRegionHelper$RegionCallback;)V

    .line 117
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "configJSON"    # Ljava/lang/String;
    .param p3, "versionName"    # Ljava/lang/String;

    .line 42
    invoke-static {p1, p2}, Lcom/tds/common/entities/TapConfig;->constructorTapConfig(Landroid/app/Activity;Ljava/lang/String;)Lcom/tds/common/entities/TapConfig;

    move-result-object v0

    .line 43
    .local v0, "config":Lcom/tds/common/entities/TapConfig;
    if-nez v0, :cond_7

    .line 44
    return-void

    .line 46
    :cond_7
    invoke-static {}, Lcom/tds/common/utils/SP;->inited()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p1}, Lcom/tds/common/utils/SP;->initialize(Landroid/content/Context;)V

    .line 49
    :cond_10
    :try_start_10
    iget v1, v0, Lcom/tds/common/entities/TapConfig;->regionType:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_a9

    const/4 v2, 0x2

    const-string v3, "3.2.1"

    const v4, 0x1ccd4a9

    const-string v5, "tds"

    const-string v6, "openlog.tap.io"

    if-ne v1, v2, :cond_5c

    .line 50
    :try_start_1e
    iget-object v1, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    const-string v2, "begin init networkTrackerManager"

    invoke-virtual {v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 51
    new-instance v1, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    invoke-direct {v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;-><init>()V

    const/4 v2, 0x3

    .line 52
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeyId(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeySecret(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v6}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withEndPoint(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v5}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withProjectName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    const-string v2, "sdk-network"

    .line 57
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withLogStore(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v4}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersion(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v3}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/tracker/TdsTrackerConfig;

    move-result-object v1

    .line 61
    .local v1, "networkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    invoke-static {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->registerTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 63
    .end local v1    # "networkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    :cond_5c
    iget-object v1, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    const-string v2, "begin init userEventTrackerManager"

    invoke-virtual {v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    invoke-direct {v1}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;-><init>()V

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/tds/common/entities/TapConfig;->clientId:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeyId(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/tds/common/entities/TapConfig;->clientToken:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withAccessKeySecret(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    iget v2, v0, Lcom/tds/common/entities/TapConfig;->regionType:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_80

    const-string v6, "openlog.taptap.com"

    .line 69
    :cond_80
    invoke-virtual {v1, v6}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withEndPoint(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v5}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withProjectName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    const-string v2, "sdk-user-event"

    .line 72
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withLogStore(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v4}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersion(I)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v3}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->withSdkVersionName(Ljava/lang/String;)Lcom/tds/common/tracker/TdsTrackerConfig$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerConfig$Builder;->build(Landroid/content/Context;)Lcom/tds/common/tracker/TdsTrackerConfig;

    move-result-object v1

    .line 76
    .local v1, "tapSdkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    invoke-static {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->registerTracker(Lcom/tds/common/tracker/TdsTrackerConfig;)V

    .line 77
    iget-object v2, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    const-string v3, "initTrackerManager completed"

    invoke-virtual {v2, v3}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_a8} :catch_a9

    .line 81
    .end local v1    # "tapSdkTrackerConfig":Lcom/tds/common/tracker/TdsTrackerConfig;
    goto :goto_c6

    .line 79
    :catch_a9
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTrackerManager:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;)V

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c6
    return-void
.end method

.method public isTapGlobalInstalled(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 129
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "isTapGlobalInstalled"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/tds/common/utils/TapGameUtil;->isTapGlobalInstalled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public isTapTapInstalled(Landroid/app/Activity;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 121
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "isTapTapInstalled"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/tds/common/utils/TapGameUtil;->isTapTapInstalled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public openReviewInTapGlobal(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 161
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "openReviewInTapGlobal"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/tds/common/utils/TapGameUtil;->openReviewInTapGlobal(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public openReviewInTapTap(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 153
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "openReviewInTapTap"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/tds/common/utils/TapGameUtil;->openReviewInTapTap(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public registerProperties(Ljava/lang/String;Lcom/tds/common/wrapper/TapPropertiesProxy;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "proxy"    # Lcom/tds/common/wrapper/TapPropertiesProxy;

    .line 174
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerProperties"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/tds/common/wrapper/TapPropertiesHolder;->INSTANCE:Lcom/tds/common/wrapper/TapPropertiesHolder;

    invoke-virtual {v0, p1, p2}, Lcom/tds/common/wrapper/TapPropertiesHolder;->registerProperties(Ljava/lang/String;Lcom/tds/common/wrapper/TapPropertiesProxy;)V

    .line 176
    return-void
.end method

.method public setPreferredLanguage(I)V
    .registers 2
    .param p1, "language"    # I

    .line 103
    invoke-static {p1}, Lcom/tds/common/localize/LocalizeManager;->changeGameSelectedLanguage(I)V

    .line 104
    return-void
.end method

.method public setXUA(Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setXUA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 90
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_2c

    .line 95
    :cond_41
    invoke-static {}, Lcom/tds/common/net/PlatformXUA;->getInstance()Lcom/tds/common/net/PlatformXUA;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tds/common/net/PlatformXUA;->setXuaMap(Ljava/util/Map;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_48} :catch_49

    .line 98
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_4d

    .line 96
    :catch_49
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4d
    return-void
.end method

.method public updateGameInTapGlobal(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 145
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateGameInTapGlobal"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/tds/common/utils/TapGameUtil;->updateGameInTapGlobal(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public updateGameInTapTap(Landroid/app/Activity;Ljava/lang/String;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 137
    iget-object v0, p0, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/common/wrapper/TDSCommonServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateGameInTapTap"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/tds/common/utils/TapGameUtil;->updateGameInTapTap(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 141
    return-void
.end method
