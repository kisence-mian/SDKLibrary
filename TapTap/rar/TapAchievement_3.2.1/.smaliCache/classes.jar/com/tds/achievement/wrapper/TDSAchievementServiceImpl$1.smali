.class Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$1;
.super Ljava/lang/Object;
.source "TDSAchievementServiceImpl.java"

# interfaces
.implements Lcom/tds/common/entities/TapAccountProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;->init(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;


# direct methods
.method constructor <init>(Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;

    .line 51
    iput-object p1, p0, Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl$1;->this$0:Lcom/tds/achievement/wrapper/TDSAchievementServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Lcom/tds/common/entities/AccessToken;
    .registers 3

    .line 54
    invoke-static {}, Lcom/tds/common/log/Logger;->getCommonLogger()Lcom/tds/common/log/Logger;

    move-result-object v0

    const-string v1, "Achievement GetAccessToken"

    invoke-virtual {v0, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/tds/common/wrapper/TapPropertiesHolder;->INSTANCE:Lcom/tds/common/wrapper/TapPropertiesHolder;

    const-string v1, "sessionToken"

    invoke-virtual {v0, v1}, Lcom/tds/common/wrapper/TapPropertiesHolder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sessionToken":Ljava/lang/String;
    new-instance v1, Lcom/tds/common/entities/AccessToken;

    invoke-direct {v1, v0}, Lcom/tds/common/entities/AccessToken;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getUserInfo()Lcom/tds/common/reactor/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/tds/common/log/Logger;->getCommonLogger()Lcom/tds/common/log/Logger;

    move-result-object v0

    const-string v1, "Achievement getUserInfo"

    invoke-virtual {v0, v1}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/tds/common/wrapper/TapPropertiesHolder;->INSTANCE:Lcom/tds/common/wrapper/TapPropertiesHolder;

    const-string v2, "objectId"

    invoke-virtual {v1, v2}, Lcom/tds/common/wrapper/TapPropertiesHolder;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {v0}, Lcom/tds/common/reactor/Observable;->just(Ljava/lang/Object;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    return-object v1
.end method
