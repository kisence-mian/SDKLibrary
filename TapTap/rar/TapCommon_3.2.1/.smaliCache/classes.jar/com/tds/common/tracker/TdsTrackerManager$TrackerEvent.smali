.class public Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;
.super Ljava/lang/Object;
.source "TdsTrackerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/TdsTrackerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackerEvent"
.end annotation


# instance fields
.field private actionModel:Lcom/tds/common/tracker/model/ActionModel;

.field private loginModel:Lcom/tds/common/tracker/model/LoginModel;

.field private meModel:Lcom/tds/common/tracker/model/UserModel;

.field private networkStateModel:Lcom/tds/common/tracker/model/NetworkStateModel;

.field private pageModel:Lcom/tds/common/tracker/model/PageModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->pageModel:Lcom/tds/common/tracker/model/PageModel;

    .line 46
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->actionModel:Lcom/tds/common/tracker/model/ActionModel;

    .line 48
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->networkStateModel:Lcom/tds/common/tracker/model/NetworkStateModel;

    .line 50
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->loginModel:Lcom/tds/common/tracker/model/LoginModel;

    .line 52
    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->meModel:Lcom/tds/common/tracker/model/UserModel;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->meModel:Lcom/tds/common/tracker/model/UserModel;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/tds/common/tracker/model/UserModel;->convert()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    :cond_10
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->actionModel:Lcom/tds/common/tracker/model/ActionModel;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/tds/common/tracker/model/ActionModel;->convert()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    :cond_1b
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->pageModel:Lcom/tds/common/tracker/model/PageModel;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/tds/common/tracker/model/PageModel;->convert()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 84
    :cond_26
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->loginModel:Lcom/tds/common/tracker/model/LoginModel;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/tds/common/tracker/model/LoginModel;->convert()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 85
    :cond_31
    iget-object v1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->networkStateModel:Lcom/tds/common/tracker/model/NetworkStateModel;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/tds/common/tracker/model/NetworkStateModel;->convert()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    :cond_3c
    return-object v0
.end method

.method public withActionModel(Lcom/tds/common/tracker/model/ActionModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;
    .registers 2
    .param p1, "actionModel"    # Lcom/tds/common/tracker/model/ActionModel;

    .line 70
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->actionModel:Lcom/tds/common/tracker/model/ActionModel;

    .line 71
    return-object p0
.end method

.method public withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;
    .registers 2
    .param p1, "loginModel"    # Lcom/tds/common/tracker/model/LoginModel;

    .line 60
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->loginModel:Lcom/tds/common/tracker/model/LoginModel;

    .line 61
    return-object p0
.end method

.method public withMeModel(Lcom/tds/common/tracker/model/UserModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;
    .registers 2
    .param p1, "meModel"    # Lcom/tds/common/tracker/model/UserModel;

    .line 55
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->meModel:Lcom/tds/common/tracker/model/UserModel;

    .line 56
    return-object p0
.end method

.method public withNetworkStateModel(Lcom/tds/common/tracker/model/NetworkStateModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;
    .registers 2
    .param p1, "networkStateModel"    # Lcom/tds/common/tracker/model/NetworkStateModel;

    .line 75
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->networkStateModel:Lcom/tds/common/tracker/model/NetworkStateModel;

    .line 76
    return-object p0
.end method

.method public withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;
    .registers 2
    .param p1, "pageModel"    # Lcom/tds/common/tracker/model/PageModel;

    .line 65
    iput-object p1, p0, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->pageModel:Lcom/tds/common/tracker/model/PageModel;

    .line 66
    return-object p0
.end method
