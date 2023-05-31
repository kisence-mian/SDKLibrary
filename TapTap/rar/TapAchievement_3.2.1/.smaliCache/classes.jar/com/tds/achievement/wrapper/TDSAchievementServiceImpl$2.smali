.class Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;
.super Ljava/lang/Object;
.source "TDSAchievementServiceImpl.java"

# interfaces
.implements Lcom/tds/achievement/AchievementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->registerCallback(Lcom/tds/common/bridge/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;

.field final synthetic val$callback:Lcom/tds/common/bridge/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;Lcom/tds/common/bridge/BridgeCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;

    .line 99
    iput-object p1, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;->this$0:Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;

    iput-object p2, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAchievementSDKInitFail(Lcom/tds/achievement/AchievementException;)V
    .registers 5
    .param p1, "exception"    # Lcom/tds/achievement/AchievementException;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "initCallback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p1}, Lcom/tds/achievement/AchievementException;->toJSON()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onAchievementSDKInitSuccess()V
    .registers 4

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "initCallback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V
    .registers 6
    .param p1, "item"    # Lcom/tds/achievement/TapAchievementBean;
    .param p2, "exception"    # Lcom/tds/achievement/AchievementException;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "initCallback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    if-eqz p2, :cond_1a

    .line 120
    invoke-virtual {p2}, Lcom/tds/achievement/AchievementException;->toJSON()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1a
    const-string v1, "achievementModel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$2;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 124
    return-void
.end method
