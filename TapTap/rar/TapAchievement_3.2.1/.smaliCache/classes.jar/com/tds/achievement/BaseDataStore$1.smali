.class Lcom/tds/achievement/BaseDataStore$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "BaseDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/BaseDataStore;->getMergedData(Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "Ljava/util/List<",
        "Lcom/tds/achievement/TapAchievementBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/BaseDataStore;

.field final synthetic val$callback:Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;


# direct methods
.method constructor <init>(Lcom/tds/achievement/BaseDataStore;Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/achievement/BaseDataStore;

    .line 60
    iput-object p1, p0, Lcom/tds/achievement/BaseDataStore$1;->this$0:Lcom/tds/achievement/BaseDataStore;

    iput-object p2, p0, Lcom/tds/achievement/BaseDataStore$1;->val$callback:Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 68
    # getter for: Lcom/tds/achievement/BaseDataStore;->log:Lcom/tds/common/log/Logger;
    invoke-static {}, Lcom/tds/achievement/BaseDataStore;->access$000()Lcom/tds/common/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore$1;->val$callback:Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;

    if-eqz v0, :cond_2d

    .line 70
    instance-of v1, p1, Lcom/tds/common/net/exception/ServerException;

    if-eqz v1, :cond_25

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/tds/common/net/exception/ServerException;

    iget-object v0, v0, Lcom/tds/common/net/exception/ServerException;->responseBody:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/tds/achievement/AchievementServerError;->parserFromJson(Ljava/lang/String;)Lcom/tds/achievement/AchievementServerError;

    move-result-object v0

    .line 73
    .local v0, "serverError":Lcom/tds/achievement/AchievementServerError;
    iget-object v1, p0, Lcom/tds/achievement/BaseDataStore$1;->val$callback:Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;

    new-instance v2, Lcom/tds/achievement/AchievementException;

    invoke-direct {v2, v0}, Lcom/tds/achievement/AchievementException;-><init>(Lcom/tds/achievement/AchievementServerError;)V

    invoke-interface {v1, v2}, Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;->onError(Lcom/tds/achievement/AchievementException;)V

    .line 74
    .end local v0    # "serverError":Lcom/tds/achievement/AchievementServerError;
    goto :goto_2d

    .line 75
    :cond_25
    new-instance v1, Lcom/tds/achievement/AchievementException;

    invoke-direct {v1, p1}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;->onError(Lcom/tds/achievement/AchievementException;)V

    .line 78
    :cond_2d
    :goto_2d
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 60
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tds/achievement/BaseDataStore$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore$1;->this$0:Lcom/tds/achievement/BaseDataStore;

    invoke-virtual {v0}, Lcom/tds/achievement/BaseDataStore;->loadLocalData()V

    .line 83
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore$1;->this$0:Lcom/tds/achievement/BaseDataStore;

    iget-object v1, v0, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/tds/achievement/BaseDataStore;->mergeRemoteDataToLocal(Ljava/util/List;Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/tds/achievement/BaseDataStore$1;->val$callback:Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;

    if-eqz v0, :cond_17

    .line 85
    iget-object v1, p0, Lcom/tds/achievement/BaseDataStore$1;->this$0:Lcom/tds/achievement/BaseDataStore;

    iget-object v1, v1, Lcom/tds/achievement/BaseDataStore;->localList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;->onMergeFinished(Ljava/util/List;)V

    .line 87
    :cond_17
    return-void
.end method
