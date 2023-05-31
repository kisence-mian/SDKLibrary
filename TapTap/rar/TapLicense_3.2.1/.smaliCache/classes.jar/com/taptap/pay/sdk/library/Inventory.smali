.class Lcom/taptap/pay/sdk/library/Inventory;
.super Ljava/lang/Object;
.source "Inventory.java"


# instance fields
.field mPurchaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taptap/pay/sdk/library/TapPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method addPurchase(Lcom/taptap/pay/sdk/library/TapPurchase;)V
    .registers 4
    .param p1, "p"    # Lcom/taptap/pay/sdk/library/TapPurchase;

    .line 67
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapPurchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public clear()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 52
    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .registers 3
    .param p1, "sku"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_d
    return-void
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/taptap/pay/sdk/library/TapPurchase;
    .registers 3
    .param p1, "sku"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/pay/sdk/library/TapPurchase;

    return-object v0
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sku"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .registers 4
    .param p1, "sku"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/pay/sdk/library/TapPurchase;

    .line 39
    .local v0, "tapPurchase":Lcom/taptap/pay/sdk/library/TapPurchase;
    if-eqz v0, :cond_10

    iget-boolean v1, v0, Lcom/taptap/pay/sdk/library/TapPurchase;->isBought:Z

    if-eqz v1, :cond_10

    .line 40
    const/4 v1, 0x1

    return v1

    .line 42
    :cond_10
    const/4 v1, 0x0

    return v1
.end method
