.class public Lcom/JoyFramework/user/LoginMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private CidToken:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private result:Z

.field private sdktoken:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userType:I

.field private verifySign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->timestamp:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->uid:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->userName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->sign:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->token:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->sdktoken:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->verifySign:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCidToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->CidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/JoyFramework/user/LoginMessage;->result:Z

    return v0
.end method

.method public getSdktoken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->sdktoken:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/JoyFramework/user/LoginMessage;->userType:I

    return v0
.end method

.method public getVerifySign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/JoyFramework/user/LoginMessage;->verifySign:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->cid:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setCidToken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->CidToken:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->message:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setResult(Z)V
    .registers 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/JoyFramework/user/LoginMessage;->result:Z

    .line 51
    return-void
.end method

.method public setSdktoken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->sdktoken:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->sign:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->timestamp:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->token:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->uid:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->userName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUserType(I)V
    .registers 2

    .prologue
    .line 146
    iput p1, p0, Lcom/JoyFramework/user/LoginMessage;->userType:I

    .line 147
    return-void
.end method

.method public setVerifySign(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/JoyFramework/user/LoginMessage;->verifySign:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginMessage [result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/JoyFramework/user/LoginMessage;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/user/LoginMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/user/LoginMessage;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/user/LoginMessage;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/user/LoginMessage;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/user/LoginMessage;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
