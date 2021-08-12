.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;
.super Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public adult:I

.field public age:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;-><init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;)V

    return-void
.end method


# virtual methods
.method public getAdult()I
    .registers 2

    iget v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->adult:I

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setAdult(I)V
    .registers 2

    iput p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->adult:I

    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->age:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyRealNameResponseModel$OkJoyDataModel;->state:Ljava/lang/String;

    return-void
.end method
