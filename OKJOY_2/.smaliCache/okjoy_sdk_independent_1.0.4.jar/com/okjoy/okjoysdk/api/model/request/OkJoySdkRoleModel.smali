.class public Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public balance:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public power:Ljava/lang/String;

.field public roleId:Ljava/lang/String;

.field public roleLevel:Ljava/lang/String;

.field public roleName:Ljava/lang/String;

.field public scene:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public vipLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->scene:Ljava/lang/String;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleLevel:Ljava/lang/String;

    iput-object p5, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->serverId:Ljava/lang/String;

    iput-object p6, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->serverName:Ljava/lang/String;

    iput-object p7, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->vipLevel:Ljava/lang/String;

    iput-object p8, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->power:Ljava/lang/String;

    iput-object p9, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->createTime:Ljava/lang/String;

    iput-object p10, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->balance:Ljava/lang/String;

    iput-object p11, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->power:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->vipLevel:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->balance:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->currency:Ljava/lang/String;

    return-void
.end method

.method public setPower(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->power:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleLevel:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->scene:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkRoleModel;->vipLevel:Ljava/lang/String;

    return-void
.end method
