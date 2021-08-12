.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->consumption(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$consumptionInterface:Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;


# direct methods
.method constructor <init>(Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;->val$consumptionInterface:Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 5
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_c

    .line 288
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;->val$consumptionInterface:Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;

    invoke-interface {v0}, Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;->successful()V

    goto :goto_15

    .line 290
    :cond_c
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;->val$consumptionInterface:Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;->onError(Ljava/lang/String;)V

    .line 293
    :goto_15
    return-void
.end method
