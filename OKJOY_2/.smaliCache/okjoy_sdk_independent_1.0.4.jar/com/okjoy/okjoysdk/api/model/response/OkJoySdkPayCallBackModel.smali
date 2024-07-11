.class public Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;
.super Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;
.source ""


# instance fields
.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->orderId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkBaseCallBackModel;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->orderId:Ljava/lang/String;

    iput-object p2, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->productId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->productId:Ljava/lang/String;

    return-object v0
.end method
