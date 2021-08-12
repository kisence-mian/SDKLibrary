.class Lcom/loongcheer/LoogcheerSDK$5;
.super Ljava/lang/Object;
.source "LoogcheerSDK.java"

# interfaces
.implements Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/LoogcheerSDK;->InitPriceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/LoogcheerSDK;


# direct methods
.method constructor <init>(Lcom/loongcheer/LoogcheerSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/LoogcheerSDK;

    .line 290
    iput-object p1, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetGoodsInfo fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public succ(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p1, "skuDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetGoodsInfo succ size ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/loongcheer/LoogcheerSDK;->priceDict:Ljava/util/HashMap;

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 305
    .local v1, "sku":Lcom/android/billingclient/api/SkuDetails;
    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v2, v2, Lcom/loongcheer/LoogcheerSDK;->productIDDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, "goodsID":Ljava/lang/String;
    iget-object v3, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetGoodsInfo ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v3, v3, Lcom/loongcheer/LoogcheerSDK;->priceDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v3, p0, Lcom/loongcheer/LoogcheerSDK$5;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v3, v3, Lcom/loongcheer/LoogcheerSDK;->priceDictByProductID:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v1    # "sku":Lcom/android/billingclient/api/SkuDetails;
    .end local v2    # "goodsID":Ljava/lang/String;
    goto :goto_29

    .line 310
    :cond_88
    return-void
.end method
