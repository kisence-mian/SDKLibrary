.class public Lcom/JoyFramework/common/ExtraDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATEROLE:Ljava/lang/String; = "createRole"

.field public static final ENTERSERVER:Ljava/lang/String; = "enterServer"

.field public static final LEVELUP:Ljava/lang/String; = "levelUp"

.field public static final NOVICEPROCESS:Ljava/lang/String; = "noviceProcess"

.field public static final SELECTSERVER:Ljava/lang/String; = "selectServer"


# instance fields
.field private balance:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private power:Ljava/lang/String;

.field private processId:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private roleTime:Ljava/lang/String;

.field private scene_Id:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private userCode:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->balance:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->power:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->processId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->roleTime:Ljava/lang/String;

    return-object v0
.end method

.method public getScene_Id()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->scene_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/JoyFramework/common/ExtraDataInfo;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->balance:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->currency:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->level:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPower(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->power:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setProcessId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->processId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->roleId:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->roleName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setRoleTime(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->roleTime:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setScene_Id(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->scene_Id:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->serverId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->serverName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->userCode:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/JoyFramework/common/ExtraDataInfo;->vip:Ljava/lang/String;

    .line 127
    return-void
.end method
