.class Lcom/tds/achievement/AchievementImpl$5;
.super Ljava/lang/Object;
.source "AchievementImpl.java"

# interfaces
.implements Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AchievementImpl;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/AchievementImpl;


# direct methods
.method constructor <init>(Lcom/tds/achievement/AchievementImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/AchievementImpl;

    .line 284
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/tds/achievement/AchievementException;)V
    .registers 4
    .param p1, "e"    # Lcom/tds/achievement/AchievementException;

    .line 338
    # getter for: Lcom/tds/achievement/AchievementImpl;->log:Lcom/tds/common/log/Logger;
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->access$000()Lcom/tds/common/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/tds/achievement/AchievementImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 340
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tds/achievement/AchievementCallback;->onAchievementSDKInitFail(Lcom/tds/achievement/AchievementException;)V

    .line 342
    :cond_1a
    return-void
.end method

.method public onMergeFinished(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->accountProvider:Lcom/tds/common/entities/TapAccountProvider;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$600(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/common/entities/TapAccountProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/common/entities/TapAccountProvider;->getUserInfo()Lcom/tds/common/reactor/Observable;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->newThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    .line 289
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    new-instance v1, Lcom/tds/achievement/AchievementImpl$5$1;

    invoke-direct {v1, p0}, Lcom/tds/achievement/AchievementImpl$5$1;-><init>(Lcom/tds/achievement/AchievementImpl$5;)V

    .line 290
    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/Subscriber;)Lcom/tds/common/reactor/Subscription;

    .line 334
    return-void
.end method
