.class public Lcom/ssjj/fnsdk/lib/impl/u;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    return-void
.end method


# virtual methods
.method public logCreateRole(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 8

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;-><init>()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->fromJson(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleId:Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    iget-object v2, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleId:Ljava/lang/String;

    iget-object v3, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleName:Ljava/lang/String;

    iget-object v4, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverId:Ljava/lang/String;

    iget-object v0, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3a

    const/4 v0, 0x1

    const-string v1, "succ"

    goto :goto_37

    :cond_2d
    const-string v0, "logCreateRole\u53d6\u6d88\uff1aroleId\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_3a

    const/4 v0, -0x1

    const-string v1, "roleId is empty"

    :goto_37
    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_3a
    return-void
.end method

.method public logEnterGame(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 11

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;-><init>()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->fromJson(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleId:Ljava/lang/String;

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v2

    iget-object v3, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleId:Ljava/lang/String;

    iget-object v4, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleName:Ljava/lang/String;

    iget-object v5, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleLevel:Ljava/lang/String;

    iget-object v6, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverId:Ljava/lang/String;

    iget-object v7, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3c

    const/4 v0, 0x1

    const-string v1, "succ"

    goto :goto_39

    :cond_2f
    const-string v0, "logEnterGame\u53d6\u6d88\uff1aroleId\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_3c

    const/4 v0, -0x1

    const-string v1, "roleId is empty"

    :goto_39
    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_3c
    return-void
.end method

.method public logLoginFinish(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 5

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logLoginFinish(Ljava/lang/String;)V

    if-eqz p2, :cond_28

    const/4 v0, 0x1

    const-string v1, "succ"

    goto :goto_25

    :cond_1b
    const-string v0, "logLoginFinish\u53d6\u6d88\uff1auid\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_28

    const/4 v0, -0x1

    const-string v1, "uid is empty"

    :goto_25
    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_28
    return-void
.end method

.method public logRoleLevel(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 6

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;-><init>()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->fromJson(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleLevel:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleLevel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    iget-object v2, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleLevel:Ljava/lang/String;

    iget-object v0, v0, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_36

    const/4 v0, 0x1

    const-string v1, "succ"

    goto :goto_33

    :cond_29
    const-string v0, "logRoleLevel\u53d6\u6d88\uff1aroleLevel\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_36

    const/4 v0, -0x1

    const-string v1, "roleLevel is empty"

    :goto_33
    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_36
    return-void
.end method

.method public logSelectServer(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 7

    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;-><init>()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->fromJson(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverId:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v2

    iget-object v3, v1, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->roleLevel:Ljava/lang/String;

    iget-object v1, v1, Lcom/ssjj/fnsdk/lib/impl/RoleInfo;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_40

    const/4 v0, 0x1

    const-string v1, "succ"

    goto :goto_3d

    :cond_33
    const-string v0, "logSelectServer\u53d6\u6d88\uff1aserverId\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_40

    const/4 v0, -0x1

    const-string v1, "serverId is empty"

    :goto_3d
    invoke-interface {p2, v0, v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_40
    return-void
.end method
