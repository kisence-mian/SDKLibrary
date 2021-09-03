.class public Lcom/tds/achievement/TapAchievement;
.super Ljava/lang/Object;
.source "TapAchievement.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchAllAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V
    .registers 2
    .param p0, "callback"    # Lcom/tds/achievement/GetAchievementListCallBack;

    .line 33
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tds/achievement/AchievementImpl;->getAllAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V

    .line 34
    return-void
.end method

.method public static fetchUserAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V
    .registers 2
    .param p0, "callback"    # Lcom/tds/achievement/GetAchievementListCallBack;

    .line 37
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tds/achievement/AchievementImpl;->getUserAchievementList(Lcom/tds/achievement/GetAchievementListCallBack;)V

    .line 38
    return-void
.end method

.method public static getLocalAllAchievementList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/AchievementImpl;->getLocalAchievementList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalUserAchievementList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/AchievementImpl;->getLocalUserAchievementList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static growSteps(Ljava/lang/String;I)V
    .registers 3
    .param p0, "displayId"    # Ljava/lang/String;
    .param p1, "numSteps"    # I

    .line 45
    if-lez p1, :cond_9

    .line 46
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tds/achievement/AchievementImpl;->growSteps(Ljava/lang/String;I)V

    .line 48
    :cond_9
    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;Lcom/tds/common/entities/TapAccountProvider;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "config"    # Lcom/tds/common/entities/TapConfig;
    .param p2, "accountProvider"    # Lcom/tds/common/entities/TapAccountProvider;

    .line 17
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tds/achievement/AchievementImpl;->init(Landroid/app/Activity;Lcom/tds/common/entities/TapConfig;Lcom/tds/common/entities/TapAccountProvider;)V

    .line 18
    return-void
.end method

.method public static initData()V
    .registers 1

    .line 21
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/AchievementImpl;->requestData()V

    .line 22
    return-void
.end method

.method public static makeSteps(Ljava/lang/String;I)V
    .registers 3
    .param p0, "displayId"    # Ljava/lang/String;
    .param p1, "numSteps"    # I

    .line 51
    if-lez p1, :cond_9

    .line 52
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tds/achievement/AchievementImpl;->makeSteps(Ljava/lang/String;I)V

    .line 54
    :cond_9
    return-void
.end method

.method public static reach(Ljava/lang/String;)V
    .registers 2
    .param p0, "displayId"    # Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tds/achievement/AchievementImpl;->reach(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static registerCallback(Lcom/tds/achievement/AchievementCallback;)V
    .registers 2
    .param p0, "callback"    # Lcom/tds/achievement/AchievementCallback;

    .line 29
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tds/achievement/AchievementImpl;->registerCallback(Lcom/tds/achievement/AchievementCallback;)V

    .line 30
    return-void
.end method

.method public static setShowToast(Z)V
    .registers 2
    .param p0, "showToast"    # Z

    .line 25
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tds/achievement/AchievementImpl;->setShowToast(Z)V

    .line 26
    return-void
.end method

.method public static showAchievementPage()V
    .registers 1

    .line 65
    invoke-static {}, Lcom/tds/achievement/AchievementImpl;->getInstance()Lcom/tds/achievement/AchievementImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/AchievementImpl;->showAchievementPage()V

    .line 66
    return-void
.end method
