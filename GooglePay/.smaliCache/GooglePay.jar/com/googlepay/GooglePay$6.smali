.class Lcom/googlepay/GooglePay$6;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlepay/GooglePay;->Pay(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlepay/GooglePay;

.field final synthetic val$finalGoodsID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/googlepay/GooglePay;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/googlepay/GooglePay;

    .line 231
    iput-object p1, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    iput-object p2, p0, Lcom/googlepay/GooglePay$6;->val$finalGoodsID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 234
    iget-object v0, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    const-string v1, "GooglePay Pay UI\u7ebf\u7a0b\u53bb\u6267\u884c "

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    iget-object v1, p0, Lcom/googlepay/GooglePay$6;->val$finalGoodsID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->GetSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    .line 236
    .local v0, "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    if-eqz v0, :cond_50

    .line 237
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v1

    .line 240
    .local v1, "flowParams":Lcom/android/billingclient/api/BillingFlowParams;
    iget-object v2, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    # getter for: Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-static {v2}, Lcom/googlepay/GooglePay;->access$400(Lcom/googlepay/GooglePay;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    iget-object v3, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    invoke-virtual {v3}, Lcom/googlepay/GooglePay;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    .line 241
    .local v2, "billingResult":Lcom/android/billingclient/api/BillingResult;
    iget-object v3, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GooglePay Pay  reusltCode >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 242
    .end local v1    # "flowParams":Lcom/android/billingclient/api/BillingFlowParams;
    .end local v2    # "billingResult":Lcom/android/billingclient/api/BillingResult;
    goto :goto_80

    .line 246
    :cond_50
    iget-object v1, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    const-string v2, "GooglePay Pay \u67e5\u4e0d\u5230 sku \u6570\u636e  \u5148\u8fdb\u884c\u4e00\u6b21\u67e5\u8be2<"

    invoke-virtual {v1, v2}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/googlepay/GooglePay$6;->val$finalGoodsID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v2

    .line 252
    .local v2, "params":Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v3

    const-string v4, "inapp"

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 253
    iget-object v3, p0, Lcom/googlepay/GooglePay$6;->this$0:Lcom/googlepay/GooglePay;

    # getter for: Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-static {v3}, Lcom/googlepay/GooglePay;->access$400(Lcom/googlepay/GooglePay;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v4

    new-instance v5, Lcom/googlepay/GooglePay$6$1;

    invoke-direct {v5, p0}, Lcom/googlepay/GooglePay$6$1;-><init>(Lcom/googlepay/GooglePay$6;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 276
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "params":Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    :goto_80
    return-void
.end method
