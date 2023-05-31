.class public Lcom/JoyFramework/user/LoginUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/user/LoginUser$LoginType;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private psw:Ljava/lang/String;

.field private type:Lcom/JoyFramework/user/LoginUser$LoginType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/JoyFramework/user/LoginUser;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/JoyFramework/user/LoginUser;->psw:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/user/LoginUser$LoginType;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/JoyFramework/user/LoginUser;->name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/JoyFramework/user/LoginUser;->psw:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/JoyFramework/user/LoginUser;->type:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 23
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/JoyFramework/user/LoginUser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPsw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/JoyFramework/user/LoginUser;->psw:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/JoyFramework/user/LoginUser$LoginType;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/JoyFramework/user/LoginUser;->type:Lcom/JoyFramework/user/LoginUser$LoginType;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcom/JoyFramework/user/LoginUser;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPsw(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/JoyFramework/user/LoginUser;->psw:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Lcom/JoyFramework/user/LoginUser$LoginType;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/JoyFramework/user/LoginUser;->type:Lcom/JoyFramework/user/LoginUser$LoginType;

    .line 54
    return-void
.end method
