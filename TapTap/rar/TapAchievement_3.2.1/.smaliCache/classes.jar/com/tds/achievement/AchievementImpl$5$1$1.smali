.class Lcom/tds/achievement/AchievementImpl$5$1$1;
.super Ljava/lang/Object;
.source "AchievementImpl.java"

# interfaces
.implements Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AchievementImpl$5$1;->onNext(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tds/achievement/AchievementImpl$5$1;


# direct methods
.method constructor <init>(Lcom/tds/achievement/AchievementImpl$5$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/tds/achievement/AchievementImpl$5$1;

    .line 310
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl$5$1$1;->this$2:Lcom/tds/achievement/AchievementImpl$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/tds/achievement/AchievementException;)V
    .registers 4
    .param p1, "e"    # Lcom/tds/achievement/AchievementException;

    .line 321
    # getter for: Lcom/tds/achievement/AchievementImpl;->log:Lcom/tds/common/log/Logger;
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->access$000()Lcom/tds/common/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/tds/achievement/AchievementImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5$1$1;->this$2:Lcom/tds/achievement/AchievementImpl$5$1;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 323
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5$1$1;->this$2:Lcom/tds/achievement/AchievementImpl$5$1;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tds/achievement/AchievementCallback;->onAchievementSDKInitFail(Lcom/tds/achievement/AchievementException;)V

    .line 325
    :cond_22
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

    .line 313
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5$1$1;->this$2:Lcom/tds/achievement/AchievementImpl$5$1;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    const/4 v1, 0x1

    # setter for: Lcom/tds/achievement/AchievementImpl;->initSuccess:Z
    invoke-static {v0, v1}, Lcom/tds/achievement/AchievementImpl;->access$402(Lcom/tds/achievement/AchievementImpl;Z)Z

    .line 314
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5$1$1;->this$2:Lcom/tds/achievement/AchievementImpl$5$1;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 315
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$5$1$1;->this$2:Lcom/tds/achievement/AchievementImpl$5$1;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5$1;->this$1:Lcom/tds/achievement/AchievementImpl$5;

    iget-object v0, v0, Lcom/tds/achievement/AchievementImpl$5;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->callback:Lcom/tds/achievement/AchievementCallback;
    invoke-static {v0}, Lcom/tds/achievement/AchievementImpl;->access$300(Lcom/tds/achievement/AchievementImpl;)Lcom/tds/achievement/AchievementCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/tds/achievement/AchievementCallback;->onAchievementSDKInitSuccess()V

    .line 317
    :cond_23
    return-void
.end method
