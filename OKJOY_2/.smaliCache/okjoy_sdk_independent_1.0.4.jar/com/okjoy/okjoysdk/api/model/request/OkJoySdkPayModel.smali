.class public Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public balance:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public extraInfo:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public power:Ljava/lang/String;

.field public productDesc:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public roleId:Ljava/lang/String;

.field public roleLevel:Ljava/lang/String;

.field public roleName:Ljava/lang/String;

.field public serverId:Ljava/lang/String;

.field public serverName:Ljava/lang/String;

.field public vipLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productId:Ljava/lang/String;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->channel:Ljava/lang/String;

    iput-object p4, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->extraInfo:Ljava/lang/String;

    iput-object p5, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productName:Ljava/lang/String;

    iput-object p6, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productDesc:Ljava/lang/String;

    iput-object p7, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleId:Ljava/lang/String;

    iput-object p8, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleName:Ljava/lang/String;

    iput-object p9, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleLevel:Ljava/lang/String;

    iput-object p10, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->serverId:Ljava/lang/String;

    iput-object p11, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->serverName:Ljava/lang/String;

    iput-object p12, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->vipLevel:Ljava/lang/String;

    iput-object p13, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->power:Ljava/lang/String;

    iput-object p14, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->balance:Ljava/lang/String;

    iput-object p15, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->power:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->vipLevel:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->balance:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->channel:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->currency:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPower(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->power:Ljava/lang/String;

    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productDesc:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->productName:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleLevel:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->vipLevel:Ljava/lang/String;

    return-void
.end method
