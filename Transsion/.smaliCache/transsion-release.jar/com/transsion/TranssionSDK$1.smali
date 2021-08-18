.class Lcom/transsion/TranssionSDK$1;
.super Ljava/lang/Object;
.source "TranssionSDK.java"

# interfaces
.implements Lcom/transsion/gamepay/core/SupplementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/TranssionSDK;->OnCreate()V
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

    .line 69
    iput-object p1, p0, Lcom/transsion/TranssionSDK$1;->this$0:Lcom/transsion/TranssionSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reissueProduct(Lcom/transsion/gamepay/core/PayParams;Lcom/transsion/gamepay/core/bean/OrderInfo;)V
    .registers 7
    .param p1, "payParams"    # Lcom/transsion/gamepay/core/PayParams;
    .param p2, "orderInfo"    # Lcom/transsion/gamepay/core/bean/OrderInfo;

    .line 76
    iget-object v0, p0, Lcom/transsion/TranssionSDK$1;->this$0:Lcom/transsion/TranssionSDK;

    iget-object v1, p2, Lcom/transsion/gamepay/core/bean/OrderInfo;->orderId:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/TranssionSDK;->SendPayCallBack(ZLjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public supplementOrderFail(Lcom/transsion/gamepay/core/PayParams;Lcom/transsion/gamepay/core/bean/OrderInfo;I)V
    .registers 4
    .param p1, "payParams"    # Lcom/transsion/gamepay/core/PayParams;
    .param p2, "orderInfo"    # Lcom/transsion/gamepay/core/bean/OrderInfo;
    .param p3, "errorCode"    # I

    .line 91
    return-void
.end method

.method public supplementOrderSuccess(Lcom/transsion/gamepay/core/PayParams;Lcom/transsion/gamepay/core/bean/OrderInfo;)V
    .registers 3
    .param p1, "payParams"    # Lcom/transsion/gamepay/core/PayParams;
    .param p2, "orderInfo"    # Lcom/transsion/gamepay/core/bean/OrderInfo;

    .line 84
    return-void
.end method
