.class Lcom/m4399/m4399SDK$3;
.super Ljava/lang/Object;
.source "m4399SDK.java"

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m4399/m4399SDK;->Pay(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m4399/m4399SDK;


# direct methods
.method constructor <init>(Lcom/m4399/m4399SDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/m4399/m4399SDK;

    .line 438
    iput-object p1, p0, Lcom/m4399/m4399SDK$3;->this$0:Lcom/m4399/m4399SDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 4

    .line 459
    iget-object v0, p0, Lcom/m4399/m4399SDK$3;->this$0:Lcom/m4399/m4399SDK;

    const-string v1, "\u8ba2\u5355\u53d6\u6d88 "

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/m4399/m4399SDK$3;->this$0:Lcom/m4399/m4399SDK;

    const/4 v1, 0x0

    const-string v2, "user cancel"

    invoke-virtual {v0, v1, v2}, Lcom/m4399/m4399SDK;->SendPayCallBack(ZLjava/lang/String;)V

    .line 462
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/m4399/m4399SDK$3;->this$0:Lcom/m4399/m4399SDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba2\u5355\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/m4399/m4399SDK$3;->this$0:Lcom/m4399/m4399SDK;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/m4399/m4399SDK;->SendPayCallBack(ZLjava/lang/String;)V

    .line 455
    return-void
.end method

.method public onSucceed()V
    .registers 4

    .line 445
    iget-object v0, p0, Lcom/m4399/m4399SDK$3;->this$0:Lcom/m4399/m4399SDK;

    const-string v1, "\u8ba2\u5355\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/m4399/m4399SDK;->SendLog(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/m4399/m4399SDK$3;->this$0:Lcom/m4399/m4399SDK;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/m4399/m4399SDK;->SendPayCallBack(ZLjava/lang/String;)V

    .line 448
    return-void
.end method
