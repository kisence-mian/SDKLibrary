.class public Lcom/JoyFramework/user/User;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isLogin:Z

.field private pwd:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/user/User;->isLogin:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/JoyFramework/user/User;->isLogin:Z

    .line 21
    iput-object p1, p0, Lcom/JoyFramework/user/User;->userName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/JoyFramework/user/User;->pwd:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/JoyFramework/user/User;->uid:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getPwd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/JoyFramework/user/User;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/user/User;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/user/User;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isLogin()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/JoyFramework/user/User;->isLogin:Z

    return v0
.end method

.method public setLogin(Z)V
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/JoyFramework/user/User;->isLogin:Z

    .line 58
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/user/User;->pwd:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/JoyFramework/user/User;->uid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/JoyFramework/user/User;->userName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/JoyFramework/user/User;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/user/User;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/user/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
