.class public Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public message:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public vsign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->vsign:Ljava/lang/String;

    iput-object p4, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getVsign()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->vsign:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->time:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->userName:Ljava/lang/String;

    return-void
.end method

.method public setVsign(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkLoginCallBackModel;->vsign:Ljava/lang/String;

    return-void
.end method
