.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->querySkuDetails(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 148
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$list:Ljava/util/List;

    iput-object p2, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

    iput-object p3, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

    const/16 v1, 0x11

    const-string v2, "onBillingServiceDisconnected"

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;->fail(ILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 6
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .line 151
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_12

    .line 152
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

    iget-object v2, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$type:Ljava/lang/String;

    # invokes: Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->querySkuDetailsing(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->access$200(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1f

    .line 156
    :cond_12
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;->val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;->fail(ILjava/lang/String;)V

    .line 160
    :goto_1f
    return-void
.end method
