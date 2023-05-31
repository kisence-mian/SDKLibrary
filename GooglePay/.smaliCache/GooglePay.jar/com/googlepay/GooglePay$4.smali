.class Lcom/googlepay/GooglePay$4;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlepay/GooglePay;->Init(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlepay/GooglePay;


# direct methods
.method constructor <init>(Lcom/googlepay/GooglePay;)V
    .registers 2
    .param p1, "this$0"    # Lcom/googlepay/GooglePay;

    .line 155
    iput-object p1, p0, Lcom/googlepay/GooglePay$4;->this$0:Lcom/googlepay/GooglePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 6
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;
    .param p2, "purchaseToken"    # Ljava/lang/String;

    .line 159
    const-string v0, "GooglePay  onConsumeResponse "

    if-eqz p1, :cond_1f

    .line 161
    iget-object v1, p0, Lcom/googlepay/GooglePay$4;->this$0:Lcom/googlepay/GooglePay;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    goto :goto_24

    .line 165
    :cond_1f
    iget-object v1, p0, Lcom/googlepay/GooglePay$4;->this$0:Lcom/googlepay/GooglePay;

    invoke-virtual {v1, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 167
    :goto_24
    return-void
.end method
