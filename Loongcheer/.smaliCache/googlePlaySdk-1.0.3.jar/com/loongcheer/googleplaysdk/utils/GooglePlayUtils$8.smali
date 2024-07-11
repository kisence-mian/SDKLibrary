.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/Purchase;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 6
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .param p2, "s"    # Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_e

    .line 328
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    iget-object v1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-interface {v0, v1}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->succ(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_1b

    .line 331
    :cond_e
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 336
    :goto_1b
    return-void
.end method
