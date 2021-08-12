.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->handleacknowledgePurchase(Lcom/android/billingclient/api/Purchase;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gooleplayintface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

.field final synthetic val$purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Lcom/android/billingclient/api/Purchase;)V
    .registers 3

    .line 362
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;->val$gooleplayintface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    iput-object p2, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .line 365
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_e

    .line 366
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;->val$gooleplayintface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    iget-object v1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-interface {v0, v1}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->succ(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_1b

    .line 369
    :cond_e
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$9;->val$gooleplayintface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 372
    :goto_1b
    return-void
.end method
