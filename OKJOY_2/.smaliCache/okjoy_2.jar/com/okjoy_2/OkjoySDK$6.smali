.class Lcom/okjoy_2/OkjoySDK$6;
.super Ljava/lang/Object;
.source "OkjoySDK.java"

# interfaces
.implements Lcom/okjoy/okjoysdk/api/listener/OkJoySdkPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/okjoy_2/OkjoySDK;->sdk_listener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/okjoy_2/OkjoySDK;


# direct methods
.method constructor <init>(Lcom/okjoy_2/OkjoySDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/okjoy_2/OkjoySDK;

    .line 544
    iput-object p1, p0, Lcom/okjoy_2/OkjoySDK$6;->this$0:Lcom/okjoy_2/OkjoySDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    .line 553
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$6;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$6;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba2\u5355\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public onSuccess(Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;)V
    .registers 5
    .param p1, "model"    # Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;

    .line 547
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$6;->this$0:Lcom/okjoy_2/OkjoySDK;

    const-string v1, "\u652f\u4ed8\u6210\u529f\uff0c\u6b64\u5904\u56de\u8c03\u53ea\u4f5c\u4e3a\u53c2\u8003\uff0c\u53d1\u8d27\u4f9d\u636e\u4ee5\u670d\u52a1\u7aef\u56de\u8c03\u4e3a\u51c6"

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/okjoy_2/OkjoySDK$6;->this$0:Lcom/okjoy_2/OkjoySDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba2\u5355\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/model/response/OkJoySdkPayCallBackModel;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/okjoy_2/OkjoySDK;->SendLog(Ljava/lang/String;)V

    .line 549
    return-void
.end method
