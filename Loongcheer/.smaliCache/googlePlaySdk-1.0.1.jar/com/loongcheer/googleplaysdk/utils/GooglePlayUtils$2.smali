.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->googlePlay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$shopid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 113
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;->val$shopid:Ljava/lang/String;

    iput-object p2, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;->val$accountId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 4

    .line 131
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    const/16 v1, 0x11

    const-string v2, "onBillingServiceDisconnected"

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 6
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .line 116
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_12

    .line 117
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;->val$shopid:Ljava/lang/String;

    sget-object v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    iget-object v2, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;->val$accountId:Ljava/lang/String;

    # invokes: Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->queryShopp(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->access$100(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1f

    .line 121
    :cond_12
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 125
    :goto_1f
    return-void
.end method
