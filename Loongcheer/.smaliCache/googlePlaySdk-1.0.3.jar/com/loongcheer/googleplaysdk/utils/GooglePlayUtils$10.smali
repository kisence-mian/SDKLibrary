.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;
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

    .line 390
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    const-string v1, "onBillingServiceDisconnected"

    invoke-interface {v0, v1}, Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;->onError(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    # invokes: Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->startConnection(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->access$300(Landroid/app/Activity;)V

    .line 419
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .line 394
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3f

    .line 395
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 396
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

    .line 399
    :cond_27
    iget-object v1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;->onBillingSetupFinished(Ljava/util/List;)V

    goto :goto_3e

    .line 397
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;->onError(Ljava/lang/String;)V

    .line 402
    .end local v0    # "purchasesResult":Lcom/android/billingclient/api/Purchase$PurchasesResult;
    :goto_3e
    goto :goto_84

    .line 403
    :cond_3f
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$10;->val$purchasesResultInterface:Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

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

    .line 406
    :try_start_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7d} :catch_7e

    .line 410
    goto :goto_84

    .line 407
    :catch_7e
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "\u6253\u5370\u51fa\u9519"

    invoke-static {v1}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_84
    return-void
.end method
