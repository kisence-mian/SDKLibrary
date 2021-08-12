.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;
.super Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public cno:Ljava/lang/String;

.field public paytype:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;-><init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;)V

    return-void
.end method


# virtual methods
.method public getCno()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->cno:Ljava/lang/String;

    return-object v0
.end method

.method public getPaytype()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->paytype:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCno(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->cno:Ljava/lang/String;

    return-void
.end method

.method public setPaytype(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->paytype:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->price:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->url:Ljava/lang/String;

    return-void
.end method
