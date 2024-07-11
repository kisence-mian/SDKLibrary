.class public Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;
.super Ljava/lang/Object;
.source "GooglePlayJsonBean.java"


# instance fields
.field private acknowledged:Z

.field private orderId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private purchaseState:I

.field private purchaseTime:J

.field private purchaseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->purchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->purchaseTime:J

    return-wide v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAcknowledged()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->acknowledged:Z

    return v0
.end method

.method public setAcknowledged(Z)V
    .registers 2
    .param p1, "acknowledged"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->acknowledged:Z

    .line 88
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderId"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->orderId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->packageName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2
    .param p1, "productId"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->productId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPurchaseState(I)V
    .registers 2
    .param p1, "purchaseState"    # I

    .line 71
    iput p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->purchaseState:I

    .line 72
    return-void
.end method

.method public setPurchaseTime(J)V
    .registers 3
    .param p1, "purchaseTime"    # J

    .line 63
    iput-wide p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->purchaseTime:J

    .line 64
    return-void
.end method

.method public setPurchaseToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "purchaseToken"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/bean/GooglePlayJsonBean;->purchaseToken:Ljava/lang/String;

    .line 80
    return-void
.end method
