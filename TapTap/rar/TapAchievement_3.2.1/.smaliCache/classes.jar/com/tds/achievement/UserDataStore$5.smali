.class Lcom/tds/achievement/UserDataStore$5;
.super Lcom/tds/common/reactor/Subscriber;
.source "UserDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/UserDataStore;->uploadData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/reactor/Subscriber<",
        "Lcom/tds/common/net/ResponseBean<",
        "Lcom/tds/achievement/UploadResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/UserDataStore;

.field final synthetic val$uploadBeanList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tds/achievement/UserDataStore;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/achievement/UserDataStore;

    .line 199
    iput-object p1, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    iput-object p2, p0, Lcom/tds/achievement/UserDataStore$5;->val$uploadBeanList:Ljava/util/List;

    invoke-direct {p0}, Lcom/tds/common/reactor/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .line 202
    # getter for: Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;
    invoke-static {}, Lcom/tds/achievement/UserDataStore;->access$200()Lcom/tds/common/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    const-string v2, "Achievement upload success"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    const/4 v1, 0x0

    # setter for: Lcom/tds/achievement/UserDataStore;->isUploading:Z
    invoke-static {v0, v1}, Lcom/tds/achievement/UserDataStore;->access$302(Lcom/tds/achievement/UserDataStore;Z)Z

    .line 204
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 208
    # getter for: Lcom/tds/achievement/UserDataStore;->log:Lcom/tds/common/log/Logger;
    invoke-static {}, Lcom/tds/achievement/UserDataStore;->access$200()Lcom/tds/common/log/Logger;

    move-result-object v0

    sget-object v1, Lcom/tds/achievement/BaseDataStore;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tds/common/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    const/4 v1, 0x0

    # setter for: Lcom/tds/achievement/UserDataStore;->isUploading:Z
    invoke-static {v0, v1}, Lcom/tds/achievement/UserDataStore;->access$302(Lcom/tds/achievement/UserDataStore;Z)Z

    .line 210
    instance-of v0, p1, Lcom/tds/common/net/exception/ServerException;

    if-eqz v0, :cond_54

    .line 211
    move-object v0, p1

    check-cast v0, Lcom/tds/common/net/exception/ServerException;

    iget-object v0, v0, Lcom/tds/common/net/exception/ServerException;->responseBody:Ljava/lang/String;

    .line 212
    invoke-static {v0}, Lcom/tds/achievement/AchievementServerError;->parserFromJson(Ljava/lang/String;)Lcom/tds/achievement/AchievementServerError;

    move-result-object v0

    .line 213
    .local v0, "serverError":Lcom/tds/achievement/AchievementServerError;
    iget v1, v0, Lcom/tds/achievement/AchievementServerError;->code:I

    sget v2, Lcom/tds/achievement/AchievementServerError;->CODE_SYNC:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_33

    iget-object v1, v0, Lcom/tds/achievement/AchievementServerError;->error:Ljava/lang/String;

    sget-object v2, Lcom/tds/achievement/AchievementServerError;->ERROR_SYNC:Ljava/lang/String;

    .line 214
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 215
    iget-object v1, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    invoke-virtual {v1, v3}, Lcom/tds/achievement/UserDataStore;->getMergedData(Lcom/tds/achievement/BaseDataStore$mergeFinishCallback;)V

    goto :goto_54

    .line 216
    :cond_33
    iget v1, v0, Lcom/tds/achievement/AchievementServerError;->code:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_54

    .line 217
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tds/achievement/AchievementImpl;->getCallback()Lcom/tds/achievement/AchievementCallback;

    move-result-object v1

    .line 218
    .local v1, "callback":Lcom/tds/achievement/AchievementCallback;
    if-eqz v1, :cond_4b

    .line 219
    new-instance v2, Lcom/tds/achievement/AchievementException;

    invoke-direct {v2, v0}, Lcom/tds/achievement/AchievementException;-><init>(Lcom/tds/achievement/AchievementServerError;)V

    invoke-interface {v1, v3, v2}, Lcom/tds/achievement/AchievementCallback;->onAchievementStatusUpdate(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/AchievementException;)V

    .line 221
    :cond_4b
    iget-object v2, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    # getter for: Lcom/tds/achievement/UserDataStore;->timer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/tds/achievement/UserDataStore;->access$400(Lcom/tds/achievement/UserDataStore;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 224
    .end local v0    # "serverError":Lcom/tds/achievement/AchievementServerError;
    .end local v1    # "callback":Lcom/tds/achievement/AchievementCallback;
    :cond_54
    :goto_54
    return-void
.end method

.method public onNext(Lcom/tds/common/net/ResponseBean;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/net/ResponseBean<",
            "Lcom/tds/achievement/UploadResult;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "result":Lcom/tds/common/net/ResponseBean;, "Lcom/tds/common/net/ResponseBean<Lcom/tds/achievement/UploadResult;>;"
    iget-object v0, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    const/4 v1, 0x0

    # setter for: Lcom/tds/achievement/UserDataStore;->isUploading:Z
    invoke-static {v0, v1}, Lcom/tds/achievement/UserDataStore;->access$302(Lcom/tds/achievement/UserDataStore;Z)Z

    .line 230
    iget-boolean v0, p1, Lcom/tds/common/net/ResponseBean;->success:Z

    if-eqz v0, :cond_83

    .line 231
    iget-object v0, p1, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tds/achievement/UploadResult;

    iget-object v0, v0, Lcom/tds/achievement/UploadResult;->fullAchievement:Lcom/tds/achievement/TapAchievementBean;

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tds/achievement/UploadResult;

    iget-object v0, v0, Lcom/tds/achievement/UploadResult;->fullAchievement:Lcom/tds/achievement/TapAchievementBean;

    .line 232
    invoke-virtual {v0}, Lcom/tds/achievement/TapAchievementBean;->getDisplayId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 233
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    iget-object v1, p1, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    check-cast v1, Lcom/tds/achievement/UploadResult;

    iget-object v1, v1, Lcom/tds/achievement/UploadResult;->fullAchievement:Lcom/tds/achievement/TapAchievementBean;

    .line 234
    invoke-virtual {v1}, Lcom/tds/achievement/TapAchievementBean;->getDisplayId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/achievement/AchievementImpl;->fullAchievementDone(Ljava/lang/String;)V

    .line 236
    :cond_37
    const/4 v0, 0x0

    .line 237
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/tds/achievement/UserDataStore$5;->val$uploadBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/achievement/UploadBean;

    .line 238
    .local v2, "bean":Lcom/tds/achievement/UploadBean;
    iget-object v3, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    iget-object v3, v3, Lcom/tds/achievement/UserDataStore;->localList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/achievement/TapAchievementBean;

    .line 239
    .local v4, "achievement":Lcom/tds/achievement/TapAchievementBean;
    iget-object v5, v2, Lcom/tds/achievement/UploadBean;->achievementId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 240
    iget v5, v2, Lcom/tds/achievement/UploadBean;->step:I

    invoke-virtual {v4}, Lcom/tds/achievement/TapAchievementBean;->getReachedStep()I

    move-result v6

    if-lt v5, v6, :cond_7a

    .line 241
    invoke-virtual {v4}, Lcom/tds/achievement/TapAchievementBean;->setNotChanged()V

    .line 242
    const/4 v0, 0x1

    .line 245
    .end local v4    # "achievement":Lcom/tds/achievement/TapAchievementBean;
    :cond_7a
    goto :goto_52

    .line 246
    .end local v2    # "bean":Lcom/tds/achievement/UploadBean;
    :cond_7b
    goto :goto_3e

    .line 247
    :cond_7c
    if-eqz v0, :cond_83

    .line 248
    iget-object v1, p0, Lcom/tds/achievement/UserDataStore$5;->this$0:Lcom/tds/achievement/UserDataStore;

    invoke-virtual {v1}, Lcom/tds/achievement/UserDataStore;->saveLocalData()V

    .line 251
    .end local v0    # "changed":Z
    :cond_83
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 199
    check-cast p1, Lcom/tds/common/net/ResponseBean;

    invoke-virtual {p0, p1}, Lcom/tds/achievement/UserDataStore$5;->onNext(Lcom/tds/common/net/ResponseBean;)V

    return-void
.end method
