.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->queryShopp(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;


# direct methods
.method constructor <init>(Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4

    .line 244
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;->val$playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    iput-object p2, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;->val$accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;->val$activity:Landroid/app/Activity;

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

    .line 247
    .local p2, "skuDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    if-eqz p2, :cond_33

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_33

    .line 252
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 253
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 254
    .local v1, "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;->val$accountId:Ljava/lang/String;

    .line 256
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v2

    .line 258
    .local v2, "flowParams":Lcom/android/billingclient/api/BillingFlowParams;
    sget-object v3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v4, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 252
    .end local v1    # "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    .end local v2    # "flowParams":Lcom/android/billingclient/api/BillingFlowParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 267
    .end local v0    # "i":I
    :cond_32
    return-void

    .line 248
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;->val$playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5546\u54c1\u672a\u67e5\u8be2\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 249
    return-void
.end method
