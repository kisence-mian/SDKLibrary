.class Lcom/tds/achievement/AllDataStore;
.super Lcom/tds/achievement/BaseDataStore;
.source "AllDataStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/tds/achievement/BaseDataStore;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method getFileName()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, "cache"

    return-object v0
.end method

.method loadRemoteData()Lcom/tds/common/reactor/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/Observable<",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;>;"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/tds/common/net/Skynet;->getInstance()Lcom/tds/common/net/Skynet;

    move-result-object v0

    const-string v1, "TapAchievement"

    invoke-virtual {v0, v1}, Lcom/tds/common/net/Skynet;->getTdsApiClient(Ljava/lang/String;)Lcom/tds/common/net/TdsApiClient;

    move-result-object v0

    .line 24
    .local v0, "client":Lcom/tds/common/net/TdsApiClient;
    new-instance v1, Lcom/tds/achievement/AllDataStore$2;

    invoke-direct {v1, p0}, Lcom/tds/achievement/AllDataStore$2;-><init>(Lcom/tds/achievement/AllDataStore;)V

    invoke-virtual {p0}, Lcom/tds/achievement/AllDataStore;->getAllUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/net/TdsApiClient;->getAsync(Lcom/tds/common/net/json/TypeRef;Ljava/lang/String;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    new-instance v2, Lcom/tds/achievement/AllDataStore$1;

    invoke-direct {v2, p0}, Lcom/tds/achievement/AllDataStore$1;-><init>(Lcom/tds/achievement/AllDataStore;)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/Observable;->map(Lcom/tds/common/reactor/functions/Func1;)Lcom/tds/common/reactor/Observable;

    move-result-object v1

    .line 24
    return-object v1
.end method

.method mergeRemoteDataToLocal(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "remote":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    .local p2, "local":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1b

    .line 38
    :cond_9
    if-nez p2, :cond_11

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 41
    :cond_11
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 42
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {p0}, Lcom/tds/achievement/AllDataStore;->saveLocalData()V

    .line 44
    return-void

    .line 36
    :cond_1b
    :goto_1b
    return-void
.end method
