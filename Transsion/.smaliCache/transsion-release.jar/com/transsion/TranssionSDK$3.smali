.class Lcom/transsion/TranssionSDK$3;
.super Ljava/lang/Object;
.source "TranssionSDK.java"

# interfaces
.implements Lcom/transsion/gamepay/core/PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/TranssionSDK;->Pay(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/TranssionSDK;


# direct methods
.method constructor <init>(Lcom/transsion/TranssionSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/transsion/TranssionSDK;

    .line 260
    iput-object p1, p0, Lcom/transsion/TranssionSDK$3;->this$0:Lcom/transsion/TranssionSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payFailure(Lcom/transsion/gamepay/core/PayParams;Lcom/transsion/gamepay/core/bean/OrderInfo;I)V
    .registers 8
    .param p1, "params"    # Lcom/transsion/gamepay/core/PayParams;
    .param p2, "orderInfo"    # Lcom/transsion/gamepay/core/bean/OrderInfo;
    .param p3, "errorCode"    # I

    .line 270
    iget-object v0, p0, Lcom/transsion/TranssionSDK$3;->this$0:Lcom/transsion/TranssionSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transsion payFailure , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/transsion/gamepay/core/bean/OrderInfo;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/TranssionSDK$3;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v1, p2, Lcom/transsion/gamepay/core/bean/OrderInfo;->orderId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/TranssionSDK;->SendPayCallBack(ZLjava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public paySuccess(Lcom/transsion/gamepay/core/PayParams;Lcom/transsion/gamepay/core/bean/OrderInfo;)V
    .registers 7
    .param p1, "params"    # Lcom/transsion/gamepay/core/PayParams;
    .param p2, "orderInfo"    # Lcom/transsion/gamepay/core/bean/OrderInfo;

    .line 263
    iget-object v0, p0, Lcom/transsion/TranssionSDK$3;->this$0:Lcom/transsion/TranssionSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transsion paySuccess , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/transsion/gamepay/core/bean/OrderInfo;->orderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/TranssionSDK;->SendLog(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/TranssionSDK$3;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v1, p2, Lcom/transsion/gamepay/core/bean/OrderInfo;->orderId:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/TranssionSDK;->SendPayCallBack(ZLjava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method
