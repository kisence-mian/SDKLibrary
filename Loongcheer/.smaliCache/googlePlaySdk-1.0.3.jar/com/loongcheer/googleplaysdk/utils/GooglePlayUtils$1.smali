.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$1;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$1;->val$activity:Landroid/app/Activity;

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

    .line 64
    .local p2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/Purchase;>;"
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3b

    if-eqz p2, :cond_3b

    .line 66
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 68
    .local v1, "purchase":Lcom/android/billingclient/api/Purchase;
    sget-object v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    if-nez v2, :cond_1d

    .line 69
    return-void

    .line 72
    :cond_1d
    # invokes: Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getPlayVerify()Z
    invoke-static {}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->access$000()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 73
    sget-object v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    invoke-static {v1, v2}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->handleacknowledgePurchase(Lcom/android/billingclient/api/Purchase;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;)V

    .line 74
    iget-object v2, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$1;->val$activity:Landroid/app/Activity;

    sget-object v3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->SpKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loongcheer/interactivesdk/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 76
    :cond_34
    sget-object v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    invoke-interface {v2, v1}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->succNotVerified(Lcom/android/billingclient/api/Purchase;)V

    .line 81
    .end local v1    # "purchase":Lcom/android/billingclient/api/Purchase;
    :goto_39
    goto :goto_c

    :cond_3a
    goto :goto_5d

    .line 83
    :cond_3b
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    if-nez v0, :cond_40

    .line 84
    return-void

    .line 87
    :cond_40
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8ba2\u5355\u672a\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 91
    :goto_5d
    return-void
.end method
