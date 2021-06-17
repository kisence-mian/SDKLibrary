.class public Lcom/facebook/login/DeviceLoginManager;
.super Lcom/facebook/login/LoginManager;
.source "DeviceLoginManager.java"


# static fields
.field private static volatile instance:Lcom/facebook/login/DeviceLoginManager;


# instance fields
.field private deviceAuthTargetUserId:Ljava/lang/String;

.field private deviceRedirectUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/facebook/login/LoginManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/login/DeviceLoginManager;
    .registers 2

    .line 42
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    if-nez v0, :cond_17

    .line 43
    const-class v0, Lcom/facebook/login/DeviceLoginManager;

    monitor-enter v0

    .line 44
    :try_start_7
    sget-object v1, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    if-nez v1, :cond_12

    .line 45
    new-instance v1, Lcom/facebook/login/DeviceLoginManager;

    invoke-direct {v1}, Lcom/facebook/login/DeviceLoginManager;-><init>()V

    sput-object v1, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    .line 47
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 49
    :cond_17
    :goto_17
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    return-object v0
.end method


# virtual methods
.method protected createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .line 97
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 98
    .local v0, "request":Lcom/facebook/login/LoginClient$Request;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager;->getDeviceRedirectUri()Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "redirectUri":Landroid/net/Uri;
    if-eqz v1, :cond_11

    .line 100
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginClient$Request;->setDeviceRedirectUriString(Ljava/lang/String;)V

    .line 102
    :cond_11
    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager;->getDeviceAuthTargetUserId()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "deviceTargetUserId":Ljava/lang/String;
    if-eqz v2, :cond_1a

    .line 104
    invoke-virtual {v0, v2}, Lcom/facebook/login/LoginClient$Request;->setDeviceAuthTargetUserId(Ljava/lang/String;)V

    .line 106
    :cond_1a
    return-object v0
.end method

.method public getDeviceAuthTargetUserId()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRedirectUri()Landroid/net/Uri;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setDeviceAuthTargetUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetUserId"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDeviceRedirectUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 61
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;

    .line 62
    return-void
.end method
