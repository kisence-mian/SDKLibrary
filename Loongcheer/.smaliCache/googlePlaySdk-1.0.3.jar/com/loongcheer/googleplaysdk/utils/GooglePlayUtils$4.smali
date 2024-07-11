.class final Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->querySkuDetailsing(Ljava/util/List;Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;


# direct methods
.method constructor <init>(Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;->val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 7
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

    .line 193
    .local p2, "skuDetailsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/billingclient/api/SkuDetails;>;"
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;->val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

    invoke-interface {v0, p2}, Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;->succ(Ljava/util/List;)V

    .line 201
    return-void

    .line 194
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;->val$querySkuDetailsInterface:Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5546\u54c1\u672a\u67e5\u8be2\u5230"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/loongcheer/googleplaysdk/callback/QuerySkuDetailsInterface;->fail(ILjava/lang/String;)V

    .line 195
    return-void
.end method
