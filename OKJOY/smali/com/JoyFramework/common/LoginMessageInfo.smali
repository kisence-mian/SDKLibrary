.class public Lcom/JoyFramework/common/LoginMessageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private LoginToken:Ljava/lang/String;

.field private UserCode:Ljava/lang/String;

.field private UserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/common/LoginMessageInfo;->UserName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/common/LoginMessageInfo;->LoginToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLoginToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/JoyFramework/common/LoginMessageInfo;->LoginToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/JoyFramework/common/LoginMessageInfo;->UserCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/JoyFramework/common/LoginMessageInfo;->UserName:Ljava/lang/String;

    return-object v0
.end method

.method public setLoginToken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/JoyFramework/common/LoginMessageInfo;->LoginToken:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUserCode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/JoyFramework/common/LoginMessageInfo;->UserCode:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/JoyFramework/common/LoginMessageInfo;->UserName:Ljava/lang/String;

    .line 26
    return-void
.end method
