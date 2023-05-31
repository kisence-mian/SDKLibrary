.class Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$3;
.super Ljava/lang/Object;
.source "TDSAchievementServiceImpl.java"

# interfaces
.implements Lcom/tds/achievement/GetAchievementListCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->fetchAllAchievementList(Lcom/tds/common/bridge/BridgeCallback;)V
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

    .line 140
    iput-object p1, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$3;->this$0:Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;

    iput-object p2, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$3;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAchievementList(Ljava/util/List;Lcom/tds/achievement/AchievementException;)V
    .registers 6
    .param p2, "exception"    # Lcom/tds/achievement/AchievementException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;",
            "Lcom/tds/achievement/AchievementException;",
            ")V"
        }
    .end annotation

    .line 143
    .local p1, "achievementList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p2}, Lcom/tds/achievement/AchievementException;->toJSON()Ljava/lang/String;

    move-result-object v1

    :goto_e
    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "list"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$3;->val$callback:Lcom/tds/common/bridge/BridgeCallback;

    invoke-static {v0}, Lcom/tds/common/bridge/utils/BridgeJsonHelper;->object2JsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tds/common/bridge/BridgeCallback;->onResult(Ljava/lang/String;)V

    .line 147
    return-void
.end method
