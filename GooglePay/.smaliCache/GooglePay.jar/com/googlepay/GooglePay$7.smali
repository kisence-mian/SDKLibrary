.class Lcom/googlepay/GooglePay$7;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlepay/GooglePay;->GetGoodsInfoFromGoogle(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlepay/GooglePay;


# direct methods
.method constructor <init>(Lcom/googlepay/GooglePay;)V
    .registers 2
    .param p1, "this$0"    # Lcom/googlepay/GooglePay;

    .line 377
    iput-object p1, p0, Lcom/googlepay/GooglePay$7;->this$0:Lcom/googlepay/GooglePay;

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

    .line 381
    .local p2, "l_skuDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_5d

    if-eqz p2, :cond_5d

    .line 382
    iget-object v0, p0, Lcom/googlepay/GooglePay$7;->this$0:Lcom/googlepay/GooglePay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePay onSkuDetailsResponse GetGoodsInfo success size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 384
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 385
    .local v1, "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    iget-object v2, p0, Lcom/googlepay/GooglePay$7;->this$0:Lcom/googlepay/GooglePay;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePay onSkuDetailsResponse GetGoodsInfo success id : >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/googlepay/GooglePay$7;->this$0:Lcom/googlepay/GooglePay;

    # invokes: Lcom/googlepay/GooglePay;->AddSkuDetailsList(Lcom/android/billingclient/api/SkuDetails;)V
    invoke-static {v2, v1}, Lcom/googlepay/GooglePay;->access$500(Lcom/googlepay/GooglePay;Lcom/android/billingclient/api/SkuDetails;)V

    .line 388
    .end local v1    # "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    goto :goto_28

    :cond_5c
    goto :goto_83

    .line 390
    :cond_5d
    iget-object v0, p0, Lcom/googlepay/GooglePay$7;->this$0:Lcom/googlepay/GooglePay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePay  GetGoodsInfo getResponseCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skuDetailsList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 392
    :goto_83
    return-void
.end method
