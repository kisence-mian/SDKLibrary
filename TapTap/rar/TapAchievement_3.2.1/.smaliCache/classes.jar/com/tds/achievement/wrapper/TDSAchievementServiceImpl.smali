.class public Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;
.super Ljava/lang/Object;
.source "TDSAchievementServiceImpl.java"

# interfaces
.implements Lcom/tds/achievement/wrapper/TDSAchievementService;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private logger:Lcom/tds/common/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "achievement_log"

    invoke-static {v0}, Lcom/tds/common/log/Logger;->get(Ljava/lang/String;)Lcom/tds/common/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    return-void
.end method


# virtual methods
.method public fetchAllAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 139
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "fetchAllAchievementList"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$3;-><init>(Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v0}, Lcom/tds/achievement/TapAchievement;->fetchAllAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V

    .line 149
    return-void
.end method

.method public fetchUserAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 161
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "fetchUserAchievementList"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$4;-><init>(Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v0}, Lcom/tds/achievement/TapAchievement;->fetchUserAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V

    .line 171
    return-void
.end method

.method public getLocalAllAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 131
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "getLocalAllAchievementList"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 133
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/tds/achievement/TapAchievement;->getLocalAllAchievementList()Ljava/util/List;

    move-result-object v1

    const-string v2, "list"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public getLocalUserAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 153
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "getLocalUserAchievementList onResult"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/tds/achievement/TapAchievement;->getLocalUserAchievementList()Ljava/util/List;

    move-result-object v1

    const-string v2, "list"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public growSteps(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 181
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "growSteps"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p1, p2}, Lcom/tds/achievement/TapAchievement;->growSteps(Ljava/lang/String;I)V

    .line 183
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/tds/common/log/Logger;->getCommonLogger()Lcom/tds/common/log/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "TDS SDK init config:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 44
    :try_start_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/tds/common/entities/TapConfig$Builder;

    invoke-direct {v2}, Lcom/tds/common/entities/TapConfig$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/tds/common/entities/TapConfig$Builder;->withAppContext(Landroid/content/Context;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v2

    const-string v3, "clientID"

    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/entities/TapConfig$Builder;->withClientId(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v2

    const-string v3, "clientToken"

    .line 47
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tds/common/entities/TapConfig$Builder;->withClientToken(Ljava/lang/String;)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v2

    const-string v3, "isCN"

    .line 48
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x2

    :goto_3f
    invoke-virtual {v2, v1}, Lcom/tds/common/entities/TapConfig$Builder;->withRegionType(I)Lcom/tds/common/entities/TapConfig$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/tds/common/entities/TapConfig$Builder;->build()Lcom/tds/common/entities/TapConfig;

    move-result-object v1

    .line 51
    .local v1, "tapConfig":Lcom/tds/common/entities/TapConfig;
    new-instance v2, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$1;-><init>(Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;)V

    invoke-static {p1, v1, v2}, Lcom/tds/achievement/TapAchievement;->init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;Lcom/tds/common/entities/TapAccountProvider;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_4f} :catch_50

    .line 69
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "tapConfig":Lcom/tds/common/entities/TapConfig;
    goto :goto_54

    .line 67
    :catch_50
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_54
    return-void
.end method

.method public initData()V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "init data"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/tds/achievement/TapAchievement;->initData()V

    .line 76
    return-void
.end method

.method public initWithTap(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "initWithTap"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public initWithXD(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "initWithXD"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public makeSteps(Ljava/lang/String;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "num"    # I

    .line 187
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "makeSteps"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1, p2}, Lcom/tds/achievement/TapAchievement;->makeSteps(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method public reach(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "reach"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p1}, Lcom/tds/achievement/TapAchievement;->reach(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public registerCallback(Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/tds/common/bridge/BridgeCallback;

    .line 98
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "registerCallback"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;-><init>(Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V

    invoke-static {v0}, Lcom/tds/achievement/TapAchievement;->registerCallback(Lcom/tds/achievement/AchievementCallback;)V

    .line 127
    return-void
.end method

.method public setShowToast(Z)V
    .registers 5
    .param p1, "showToast"    # Z

    .line 92
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "setShowToast"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/tds/achievement/TapAchievement;->setShowToast(Z)V

    .line 94
    return-void
.end method

.method public showAchievementPage()V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->logger:Lcom/tds/common/log/Logger;

    sget-object v1, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "showAchievementPage"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/tds/achievement/TapAchievement;->showAchievementPage()V

    .line 195
    return-void
.end method
