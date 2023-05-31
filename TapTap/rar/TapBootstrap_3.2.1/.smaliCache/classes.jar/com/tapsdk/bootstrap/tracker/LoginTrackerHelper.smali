.class public Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;
.super Ljava/lang/Object;
.source "LoginTrackerHelper.java"


# static fields
.field private static loginType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->loginType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized authorizationBack(Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;)V
    .registers 7
    .param p0, "event"    # Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 99
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track authorizationBack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_88

    .line 101
    :try_start_1d
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->getAuthorizationPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 106
    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->getAuthorizationPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "disappear"

    .line 107
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginType(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    const-string v4, "taptap_authorization_back"

    .line 111
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 112
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7d} :catch_7e
    .catchall {:try_start_1d .. :try_end_7d} :catchall_88

    .line 117
    goto :goto_86

    .line 115
    :catch_7e
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7f
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_88

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_86
    monitor-exit v0

    return-void

    .line 98
    .end local p0    # "event":Lcom/taptap/sdk/tracker/event/AuthorizationBackEvent;
    :catchall_88
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized authorizationCancel()V
    .registers 6

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 187
    :try_start_3
    const-string v1, "track authorization cancel"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v4, "page_game"

    .line 192
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "\u6e38\u620f"

    .line 193
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 191
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v4, "taptap_authorization_cancel"

    .line 196
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 197
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 195
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V

    .line 200
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->unRegisterSession(I)V
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_57

    .line 201
    monitor-exit v0

    return-void

    .line 186
    :catchall_57
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized authorizationFail(Ljava/lang/String;)V
    .registers 7
    .param p0, "errorMessage"    # Ljava/lang/String;

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 169
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track authorization fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v4, "page_game"

    .line 174
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "\u6e38\u620f"

    .line 175
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v4, "taptap_authorization_fail"

    .line 178
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 179
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 180
    invoke-virtual {v3, p0}, Lcom/tds/common/tracker/model/LoginModel;->withLoginErrorMsg(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V

    .line 183
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->unRegisterSession(I)V
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_6c

    .line 184
    monitor-exit v0

    return-void

    .line 168
    .end local p0    # "errorMessage":Ljava/lang/String;
    :catchall_6c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized authorizationOpen(Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;)V
    .registers 7
    .param p0, "event"    # Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 76
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track authorizationOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->loginType:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_8e

    .line 79
    :try_start_23
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->getAuthorizationPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->getAuthorizationPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "appear"

    .line 85
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;->getAuthorizationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginType(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    const-string v4, "taptap_authorization_open"

    .line 89
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 90
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 87
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_83} :catch_84
    .catchall {:try_start_23 .. :try_end_83} :catchall_8e

    .line 95
    goto :goto_8c

    .line 93
    :catch_84
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :try_start_85
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->e(Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_8e

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8c
    monitor-exit v0

    return-void

    .line 75
    .end local p0    # "event":Lcom/taptap/sdk/tracker/event/AuthorizationOpenEvent;
    :catchall_8e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized authorizationProfile()V
    .registers 6

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 137
    :try_start_3
    const-string v1, "track authorization profile"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v4, "page_game"

    .line 142
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "\u6e38\u620f"

    .line 143
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v4, "taptap_authorization_profile"

    .line 146
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 147
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_50

    .line 150
    monitor-exit v0

    return-void

    .line 136
    :catchall_50
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized authorizationStart()V
    .registers 6

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 30
    :try_start_3
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/session/SessionIdManager;->unRegisterSession(I)V

    .line 31
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/session/SessionIdManager;->registerSession(I)V

    .line 32
    const-string v1, "track authorization start"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v3}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v3, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v4, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v4}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v5, "page_game"

    .line 37
    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v4

    const-string v5, "\u6e38\u620f"

    .line 38
    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v3

    new-instance v4, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v4}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v5, "taptap_authorization_start"

    .line 41
    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v4

    .line 42
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v2

    .line 40
    invoke-virtual {v3, v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5e

    .line 45
    monitor-exit v0

    return-void

    .line 29
    :catchall_5e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized authorizationSuccess()V
    .registers 6

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 153
    :try_start_3
    const-string v1, "track authorization success"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v4, "page_game"

    .line 158
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "\u6e38\u620f"

    .line 159
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v4, "taptap_authorization_success"

    .line 162
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 163
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 161
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_50

    .line 166
    monitor-exit v0

    return-void

    .line 152
    :catchall_50
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized authorizationToken()V
    .registers 6

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 121
    :try_start_3
    const-string v1, "track authorization token"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v4, "page_game"

    .line 126
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "\u6e38\u620f"

    .line 127
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v4, "taptap_authorization_token"

    .line 130
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 131
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_50

    .line 134
    monitor-exit v0

    return-void

    .line 120
    :catchall_50
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getAuthorizationPageId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "authorizationType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "webview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :sswitch_12
    const-string v0, "cloud_play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :sswitch_1c
    const-string v0, "taptap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_4a

    .line 57
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not support pageId"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_32
    const-string v0, "taptap_authorization_cloud_play"

    return-object v0

    .line 53
    :pswitch_35
    const-string v0, "page_taptap_authorization_web"

    return-object v0

    .line 51
    :pswitch_38
    const-string v0, "page_taptap_authorization_taptap_client"

    return-object v0

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x348246e0 -> :sswitch_1c
        -0x12cb0102 -> :sswitch_12
        0x48fb3bf9 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method private static getAuthorizationPageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "authorizationType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "webview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :sswitch_12
    const-string v0, "cloud_play"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :sswitch_1c
    const-string v0, "taptap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_4a

    .line 71
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not support pageId"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_32
    const-string v0, "\u4e91\u73a9"

    return-object v0

    .line 67
    :pswitch_35
    const-string v0, "TapTap\u7f51\u9875\u6388\u6743"

    return-object v0

    .line 65
    :pswitch_38
    const-string v0, "TapTap\u5ba2\u6237\u7aef"

    return-object v0

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x348246e0 -> :sswitch_1c
        -0x12cb0102 -> :sswitch_12
        0x48fb3bf9 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public static declared-synchronized tdsLoginFail(Ljava/lang/String;)V
    .registers 7
    .param p0, "errorMsg"    # Ljava/lang/String;

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 251
    :try_start_3
    const-string v1, "track tdsLogin fail"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 253
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v4, "page_game"

    .line 256
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "\u6e38\u620f"

    .line 257
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 255
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v4, "tds_login_fail"

    .line 260
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 261
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 262
    invoke-virtual {v3, p0}, Lcom/tds/common/tracker/model/LoginModel;->withLoginErrorMsg(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 259
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V

    .line 265
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->unRegisterSession(I)V
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5b

    .line 266
    monitor-exit v0

    return-void

    .line 250
    .end local p0    # "errorMsg":Ljava/lang/String;
    :catchall_5b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized tdsLoginStart()V
    .registers 6

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 204
    :try_start_3
    const-string v1, "track tdsLogin start"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 206
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    new-instance v2, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v2}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v3, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v4, "page_game"

    .line 209
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    const-string v4, "\u6e38\u620f"

    .line 210
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v3

    .line 208
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    new-instance v3, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v3}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    const-string v4, "tds_login_start"

    .line 213
    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 214
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_50

    .line 217
    monitor-exit v0

    return-void

    .line 203
    :catchall_50
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized tdsLoginSuccess(Z)V
    .registers 12
    .param p0, "autoLogin"    # Z

    const-class v0, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;

    monitor-enter v0

    .line 220
    :try_start_3
    const-string v1, "track tdsLogin success"

    invoke-static {v1}, Lcom/tapsdk/bootstrap/utils/BootstrapLogger;->d(Ljava/lang/String;)V

    .line 221
    if-eqz p0, :cond_d

    const-string v1, "auto"

    goto :goto_f

    :cond_d
    sget-object v1, Lcom/tapsdk/bootstrap/tracker/LoginTrackerHelper;->loginType:Ljava/lang/String;

    .line 222
    .local v1, "type":Ljava/lang/String;
    :goto_f
    invoke-static {}, Lcom/taptap/sdk/TapLoginHelper;->getCurrentProfile()Lcom/taptap/sdk/Profile;

    move-result-object v2

    .line 223
    .local v2, "profile":Lcom/taptap/sdk/Profile;
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/taptap/sdk/Profile;->getOpenid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_1a
    const-string v3, ""

    .line 225
    .local v3, "openId":Ljava/lang/String;
    :goto_1c
    new-instance v4, Lcom/tds/common/tracker/model/UserModel;

    invoke-direct {v4}, Lcom/tds/common/tracker/model/UserModel;-><init>()V

    .line 226
    .local v4, "userModel":Lcom/tds/common/tracker/model/UserModel;
    invoke-static {}, Lcom/tapsdk/bootstrap/account/TDSUser;->currentUser()Lcom/tapsdk/bootstrap/account/TDSUser;

    move-result-object v5

    .line 227
    .local v5, "currentUser":Lcn/leancloud/LCUser;
    if-eqz v5, :cond_2d

    .line 228
    invoke-virtual {v5}, Lcn/leancloud/LCUser;->getObjectId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/tds/common/tracker/model/UserModel;->tdsUserId:Ljava/lang/String;

    .line 230
    :cond_2d
    iput-object v3, v4, Lcom/tds/common/tracker/model/UserModel;->taptapOpenId:Ljava/lang/String;

    .line 231
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/taptap/sdk/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_38

    :cond_36
    const-string v6, ""

    :goto_38
    iput-object v6, v4, Lcom/tds/common/tracker/model/UserModel;->tdsUserName:Ljava/lang/String;

    .line 233
    invoke-static {}, Lcom/tds/common/tracker/TdsTrackerManager;->getInstance()Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 234
    invoke-virtual {v6, v7}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerType(I)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v6

    new-instance v7, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    invoke-direct {v7}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;-><init>()V

    new-instance v8, Lcom/tds/common/tracker/model/PageModel;

    invoke-direct {v8}, Lcom/tds/common/tracker/model/PageModel;-><init>()V

    const-string v9, "page_game"

    .line 237
    invoke-virtual {v8, v9}, Lcom/tds/common/tracker/model/PageModel;->withPageId(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v8

    const-string v9, "\u6e38\u620f"

    .line 238
    invoke-virtual {v8, v9}, Lcom/tds/common/tracker/model/PageModel;->withPageName(Ljava/lang/String;)Lcom/tds/common/tracker/model/PageModel;

    move-result-object v8

    .line 236
    invoke-virtual {v7, v8}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withPageModel(Lcom/tds/common/tracker/model/PageModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v7

    new-instance v8, Lcom/tds/common/tracker/model/LoginModel;

    invoke-direct {v8}, Lcom/tds/common/tracker/model/LoginModel;-><init>()V

    .line 241
    invoke-virtual {v8, v1}, Lcom/tds/common/tracker/model/LoginModel;->withLoginType(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v8

    const-string v9, "tds_login_success"

    .line 242
    invoke-virtual {v8, v9}, Lcom/tds/common/tracker/model/LoginModel;->withLoginAction(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v8

    .line 243
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/tds/common/tracker/session/SessionIdManager;->getSessionId(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tds/common/tracker/model/LoginModel;->withLoginSessionId(Ljava/lang/String;)Lcom/tds/common/tracker/model/LoginModel;

    move-result-object v8

    .line 240
    invoke-virtual {v7, v8}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withLoginModel(Lcom/tds/common/tracker/model/LoginModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v7

    .line 245
    invoke-virtual {v7, v4}, Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;->withMeModel(Lcom/tds/common/tracker/model/UserModel;)Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;

    move-result-object v7

    .line 235
    invoke-virtual {v6, v7}, Lcom/tds/common/tracker/TdsTrackerManager;->withTrackerEvent(Lcom/tds/common/tracker/TdsTrackerManager$TrackerEvent;)Lcom/tds/common/tracker/TdsTrackerManager;

    move-result-object v6

    .line 246
    invoke-virtual {v6}, Lcom/tds/common/tracker/TdsTrackerManager;->track()V

    .line 247
    invoke-static {}, Lcom/tds/common/tracker/session/SessionIdManager;->getInstance()Lcom/tds/common/tracker/session/SessionIdManager;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/tds/common/tracker/session/SessionIdManager;->unRegisterSession(I)V
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_91

    .line 248
    monitor-exit v0

    return-void

    .line 219
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "profile":Lcom/taptap/sdk/Profile;
    .end local v3    # "openId":Ljava/lang/String;
    .end local v4    # "userModel":Lcom/tds/common/tracker/model/UserModel;
    .end local v5    # "currentUser":Lcn/leancloud/LCUser;
    .end local p0    # "autoLogin":Z
    :catchall_91
    move-exception p0

    monitor-exit v0

    throw p0
.end method
