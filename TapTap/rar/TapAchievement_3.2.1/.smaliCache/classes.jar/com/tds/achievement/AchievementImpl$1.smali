.class Lcom/tds/achievement/AchievementImpl$1;
.super Ljava/lang/Object;
.source "AchievementImpl.java"

# interfaces
.implements Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AchievementImpl;->getAllAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/AchievementImpl;

.field final synthetic val$callback:Lcom/tds/achievement/GetAchievementListCallBack;


# direct methods
.method constructor <init>(Lcom/tds/achievement/AchievementImpl;Lcom/tds/achievement/GetAchievementListCallBack;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/achievement/AchievementImpl;

    .line 121
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl$1;->this$0:Lcom/tds/achievement/AchievementImpl;

    iput-object p2, p0, Lcom/tds/achievement/AchievementImpl$1;->val$callback:Lcom/tds/achievement/GetAchievementListCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/tds/achievement/AchievementException;)V
    .registers 4
    .param p1, "e"    # Lcom/tds/achievement/AchievementException;

    .line 132
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$1;->val$callback:Lcom/tds/achievement/GetAchievementListCallBack;

    if-eqz v0, :cond_8

    .line 133
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/tds/achievement/GetAchievementListCallBack;->onGetAchievementList(Ljava/util/List;Lcom/tds/achievement/AchievementException;)V

    .line 135
    :cond_8
    return-void
.end method

.method public onMergeFinished(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    # getter for: Lcom/tds/achievement/AchievementImpl;->log:Lcom/tds/common/log/Logger;
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->access$000()Lcom/tds/common/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/tds/achievement/AchievementImpl;->TAG:Ljava/lang/String;

    const-string v2, "all merge finished"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$1;->val$callback:Lcom/tds/achievement/GetAchievementListCallBack;

    if-eqz v0, :cond_13

    .line 126
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tds/achievement/GetAchievementListCallBack;->onGetAchievementList(Ljava/util/List;Lcom/tds/achievement/AchievementException;)V

    .line 128
    :cond_13
    return-void
.end method
