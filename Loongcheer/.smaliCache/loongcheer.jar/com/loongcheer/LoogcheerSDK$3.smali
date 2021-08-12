.class Lcom/loongcheer/LoogcheerSDK$3;
.super Ljava/lang/Object;
.source "LoogcheerSDK.java"

# interfaces
.implements Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/LoogcheerSDK;->ClearGoodOrder()V
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

    .line 229
    iput-object p1, p0, Lcom/loongcheer/LoogcheerSDK$3;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingSetupFinished(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$3;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClearGoodOrder onBillingSetupFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 236
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 238
    .local v1, "purchase":Lcom/android/billingclient/api/Purchase;
    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK$3;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearGoodOrder purchase "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK$3;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/loongcheer/LoogcheerSDK;->ConsumptionGoods(Ljava/lang/String;)V

    .line 234
    .end local v1    # "purchase":Lcom/android/billingclient/api/Purchase;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 242
    .end local v0    # "i":I
    :cond_6b
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$3;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClearGoodOrder error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendError(Ljava/lang/String;)V

    .line 247
    return-void
.end method
