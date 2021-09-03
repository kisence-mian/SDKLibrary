.class Lcom/tds/achievement/AchievementImpl$5$1;
.super Lcom/tds/common/reactor/Subscriber;
.source "AchievementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AchievementImpl$5;->onMergeFinished(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tds/achievement/AchievementImpl$5;


# direct methods
.method constructor <init>(Lcom/tds/achievement/AchievementImpl$5;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tds/achievement/AchievementImpl$5;

    .line 290
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .line 294
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 298
    # getter for: Lcom/tds/achievement/AchievementImpl;->log:Lcom/tds/common/log/Logger;
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->access$000()Lcom/tds/common/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/tds/achievement/AchievementImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 300
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    new-instance v1, Lcom/tds/achievement/AchievementException;

    invoke-direct {v1, p1}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/tds/achievement/AchievementCallback;->onAchievementSDKInitFail(Lcom/tds/achievement/AchievementException;)V

    .line 302
    :cond_23
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 290
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/tds/achievement/AchievementImpl$5$1;->onNext(Ljava/util/Map;)V

    return-void
.end method

.method public onNext(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "stringStringMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, "userId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 308
    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v1, v1, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    invoke-virtual {v1, v0}, Lcom/tds/achievement/AchievementImpl;->setUserID(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v1, v1, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->userDataStore:Lcom/tds/achievement/UserDataStore;
    invoke-static {v1}, Lcom/tds/achievement/AchievementImpl;->access$500(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/UserDataStore;

    move-result-object v1

    new-instance v2, Lcom/tds/achievement/AchievementImpl$5$1$1;

    invoke-direct {v2, p0}, Lcom/tds/achievement/AchievementImpl$5$1$1;-><init>(Lcom/tds/achievement/AchievementImpl$5$1;)V

    invoke-virtual {v1, v2}, Lcom/tds/achievement/UserDataStore;->getMergedData(Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V

    goto :goto_44

    .line 328
    :cond_26
    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v1, v1, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v1}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 329
    iget-object v1, p0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v1, v1, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v1}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v1

    new-instance v2, Lcom/tds/achievement/AchievementException;

    const/16 v3, 0x232b

    const-string v4, "user id is null"

    invoke-direct {v2, v4, v3}, Lcom/tds/achievement/AchievementException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lcom/tds/achievement/AchievementCallback;->onAchievementSDKInitFail(Lcom/tds/achievement/AchievementException;)V

    .line 332
    :cond_44
    :goto_44
    return-void
.end method
