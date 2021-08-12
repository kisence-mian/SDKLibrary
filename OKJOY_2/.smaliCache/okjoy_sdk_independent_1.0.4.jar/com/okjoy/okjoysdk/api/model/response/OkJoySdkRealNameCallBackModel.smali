.class public Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;
.super Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;
.source ""


# instance fields
.field public age:I

.field public isAdult:Z

.field public isReal:Z


# direct methods
.method public constructor <init>(ZZI)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;->isReal:Z

    iput-boolean p2, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;->isAdult:Z

    iput p3, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;->age:I

    return-void
.end method


# virtual methods
.method public getAge()I
    .registers 2

    iget v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;->age:I

    return v0
.end method

.method public isAdult()Z
    .registers 2

    iget-boolean v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;->isAdult:Z

    return v0
.end method

.method public isReal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkRealNameCallBackModel;->isReal:Z

    return v0
.end method
