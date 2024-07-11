.class public Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;
.super Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OkJoyDataModel"
.end annotation


# instance fields
.field public param:Ljava/lang/String;

.field public paytype:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public productid:Ljava/lang/String;

.field public productname:Ljava/lang/String;

.field public final synthetic this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;


# direct methods
.method public constructor <init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->this$0:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    invoke-direct {p0, p1}, Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel$OkJoyDataBaseModel;-><init>(Lcom/okjoy/okjoysdk/entity/response/OkJoyBaseResponseModel;)V

    return-void
.end method


# virtual methods
.method public getParam()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getPaytype()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->paytype:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->productname:Ljava/lang/String;

    return-object v0
.end method

.method public setParam(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->param:Ljava/lang/String;

    return-void
.end method

.method public setPaytype(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->paytype:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->price:Ljava/lang/String;

    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->productid:Ljava/lang/String;

    return-void
.end method

.method public setProductname(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->productname:Ljava/lang/String;

    return-void
.end method
