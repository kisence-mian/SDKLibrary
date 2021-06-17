.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->queryPurchasesList(Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;


# direct methods
.method constructor <init>(Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    const-string v1, "onBillingServiceDisconnected"

    invoke-interface {v0, v1}, Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;->onError(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    # invokes: Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->startConnection(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->access$200(Landroid/app/Activity;)V

    .line 345
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .line 327
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3f

    .line 328
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 329
    .local v0, "purchasesResult":Lcom/android/billingclient/api/Purchase$PurchasesResult;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_27

    goto :goto_31

    .line 332
    :cond_27
    iget-object v1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;->onBillingSetupFinished(Ljava/util/List;)V

    goto :goto_3e

    .line 330
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;->onError(Ljava/lang/String;)V

    .line 335
    .end local v0    # "purchasesResult":Lcom/android/billingclient/api/Purchase$PurchasesResult;
    :goto_3e
    goto :goto_5b

    .line 336
    :cond_3f
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;->onError(Ljava/lang/String;)V

    .line 339
    :goto_5b
    return-void
.end method
