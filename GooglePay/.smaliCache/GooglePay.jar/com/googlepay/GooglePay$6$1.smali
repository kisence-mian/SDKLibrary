.class Lcom/googlepay/GooglePay$6$1;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlepay/GooglePay$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/googlepay/GooglePay$6;


# direct methods
.method constructor <init>(Lcom/googlepay/GooglePay$6;)V
    .registers 2
    .param p1, "this$1"    # Lcom/googlepay/GooglePay$6;

    .line 254
    iput-object p1, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 8
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p2, "lkuDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_60

    if-eqz p2, :cond_60

    .line 259
    iget-object v0, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v0, v0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GooglePay Pay \u67e5\u8be2\u6210\u529f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v0, v0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    # invokes: Lcom/googlepay/GooglePay;->AddSkuDetailsList(Lcom/android/billingclient/api/SkuDetails;)V
    invoke-static {v0, v2}, Lcom/googlepay/GooglePay;->access$500(Lcom/googlepay/GooglePay;Lcom/android/billingclient/api/SkuDetails;)V

    .line 263
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 264
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 266
    .local v0, "flowParams":Lcom/android/billingclient/api/BillingFlowParams;
    iget-object v1, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v1, v1, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    # getter for: Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-static {v1}, Lcom/googlepay/GooglePay;->access$400(Lcom/googlepay/GooglePay;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v2, v2, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    invoke-virtual {v2}, Lcom/googlepay/GooglePay;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 268
    .end local v0    # "flowParams":Lcom/android/billingclient/api/BillingFlowParams;
    goto :goto_9d

    .line 270
    :cond_60
    iget-object v0, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v0, v0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GooglePay Pay \u67e5\u8be2\u5931\u8d25 \u8fd4\u56de\u652f\u4ed8\u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v3, v3, Lcom/googlepay/GooglePay$6;->val$finalGoodsID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v0, v0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePay  Pay No Goods: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlepay/GooglePay$6$1;->this$1:Lcom/googlepay/GooglePay$6;

    iget-object v4, v4, Lcom/googlepay/GooglePay$6;->val$finalGoodsID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlepay/GooglePay;->SendPayCallBack(ZLcom/android/billingclient/api/Purchase;Ljava/lang/String;)V

    .line 273
    :goto_9d
    return-void
.end method
