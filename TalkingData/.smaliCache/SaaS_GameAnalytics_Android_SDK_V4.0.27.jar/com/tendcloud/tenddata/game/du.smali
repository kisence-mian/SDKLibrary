.class public Lcom/tendcloud/tenddata/game/du;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# static fields
.field static a:Lcom/tendcloud/tenddata/game/du;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/tendcloud/tenddata/game/du;
    .registers 2

    const-class v0, Lcom/tendcloud/tenddata/game/du;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/tendcloud/tenddata/game/du;->a:Lcom/tendcloud/tenddata/game/du;

    if-nez v1, :cond_e

    .line 22
    new-instance v1, Lcom/tendcloud/tenddata/game/du;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/du;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/du;->a:Lcom/tendcloud/tenddata/game/du;

    .line 24
    :cond_e
    sget-object v1, Lcom/tendcloud/tenddata/game/du;->a:Lcom/tendcloud/tenddata/game/du;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public setAccount(Lorg/json/JSONObject;)V
    .registers 3

    .line 36
    const-string v0, "account"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public setAntiCheatingstatus(I)V
    .registers 3

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "antiCheating"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setCurrentPageName(Ljava/lang/String;)V
    .registers 3

    .line 32
    const-string v0, "page"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .registers 3

    .line 45
    :try_start_0
    const-string v0, "deeplink"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->setDeepLink(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 50
    goto :goto_d

    .line 47
    :catchall_9
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 51
    :goto_d
    return-void
.end method

.method public setPushInfo(Ljava/lang/String;)V
    .registers 3

    .line 58
    const-string v0, "push"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 3

    .line 28
    const-string v0, "sessionId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public setSessionStartTime(J)V
    .registers 3

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "sessionStartTime"

    invoke-virtual {p0, p2, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public setSubaccount(Lorg/json/JSONObject;)V
    .registers 3

    .line 40
    const-string v0, "subaccount"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method
