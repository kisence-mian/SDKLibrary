.class Lcom/googlepay/GooglePay$1;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlepay/GooglePay;->Init(Lorg/json/JSONObject;)V
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

    .line 73
    iput-object p1, p0, Lcom/googlepay/GooglePay$1;->this$0:Lcom/googlepay/GooglePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 8
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    iget-object v0, p0, Lcom/googlepay/GooglePay$1;->this$0:Lcom/googlepay/GooglePay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePay  onPurchasesUpdated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3b

    if-eqz p2, :cond_3b

    .line 80
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 82
    .local v1, "purchase":Lcom/android/billingclient/api/Purchase;
    iget-object v2, p0, Lcom/googlepay/GooglePay$1;->this$0:Lcom/googlepay/GooglePay;

    invoke-virtual {v2, v1}, Lcom/googlepay/GooglePay;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    .line 83
    .end local v1    # "purchase":Lcom/android/billingclient/api/Purchase;
    goto :goto_28

    :cond_3a
    goto :goto_95

    .line 84
    :cond_3b
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_75

    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 87
    .restart local v1    # "purchase":Lcom/android/billingclient/api/Purchase;
    iget-object v2, p0, Lcom/googlepay/GooglePay$1;->this$0:Lcom/googlepay/GooglePay;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePay   ITEM_ALREADY_OWNED =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/googlepay/GooglePay$1;->this$0:Lcom/googlepay/GooglePay;

    invoke-virtual {v2, v1}, Lcom/googlepay/GooglePay;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    .line 89
    .end local v1    # "purchase":Lcom/android/billingclient/api/Purchase;
    goto :goto_46

    :cond_74
    goto :goto_95

    .line 90
    :cond_75
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_88

    .line 93
    iget-object v0, p0, Lcom/googlepay/GooglePay$1;->this$0:Lcom/googlepay/GooglePay;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/googlepay/GooglePay;->SendPayCallBack(ZLcom/android/billingclient/api/Purchase;Ljava/lang/String;)V

    goto :goto_95

    .line 97
    :cond_88
    iget-object v0, p0, Lcom/googlepay/GooglePay$1;->this$0:Lcom/googlepay/GooglePay;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/googlepay/GooglePay;->SendPayCallBack(ZLcom/android/billingclient/api/Purchase;Ljava/lang/String;)V

    .line 99
    :goto_95
    return-void
.end method
