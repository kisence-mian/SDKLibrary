.class public Lcom/okjoy/okjoysdk/user/OkJoyUserModel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;
    }
.end annotation


# instance fields
.field public age:Ljava/lang/String;

.field public idCard:Ljava/lang/String;

.field public isAdult:Z

.field public isNew:Ljava/lang/String;

.field public isReal:Z

.field public loginType:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

.field public passWord:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public vsign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getIdCard()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->idCard:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isNew:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->loginType:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getVsign()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->vsign:Ljava/lang/String;

    return-object v0
.end method

.method public isAdult()Z
    .registers 2

    iget-boolean v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult:Z

    return v0
.end method

.method public isReal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal:Z

    return v0
.end method

.method public setAdult(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isAdult:Z

    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->age:Ljava/lang/String;

    return-void
.end method

.method public setIdCard(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->idCard:Ljava/lang/String;

    return-void
.end method

.method public setIsNew(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isNew:Ljava/lang/String;

    return-void
.end method

.method public setLoginType(Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->loginType:Lcom/okjoy/okjoysdk/user/OkJoyUserModel$OKJOY_SDK_LOGIN_TYPE;

    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->passWord:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->phone:Ljava/lang/String;

    return-void
.end method

.method public setReal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->isReal:Z

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->realName:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->time:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->userName:Ljava/lang/String;

    return-void
.end method

.method public setVsign(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->vsign:Ljava/lang/String;

    return-void
.end method
