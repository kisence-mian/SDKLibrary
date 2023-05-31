.class public Lcom/JoyFramework/common/PaymentInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private balance:Ljava/lang/String;

.field private billNo:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private extraInfo:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private partyName:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private userCode:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getBillNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->billNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getPartyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->partyName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/JoyFramework/common/PaymentInfo;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->balance:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setBillNo(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->billNo:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->currency:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->extraInfo:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->level:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setPartyName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->partyName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->productId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->roleId:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->roleName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->serverId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->serverName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->userCode:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/JoyFramework/common/PaymentInfo;->vip:Ljava/lang/String;

    .line 56
    return-void
.end method
