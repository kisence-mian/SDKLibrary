.class Lcom/googlepay/GooglePay$2;
.super Ljava/lang/Object;
.source "GooglePay.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


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

    .line 106
    iput-object p1, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    const-string v1, "GooglePay onBillingServiceDisconnected "

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/googlepay/GooglePay;->isBillingServiceSonnect:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/googlepay/GooglePay;->access$002(Lcom/googlepay/GooglePay;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 134
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    # invokes: Lcom/googlepay/GooglePay;->RestartInitGooglePay()V
    invoke-static {v0}, Lcom/googlepay/GooglePay;->access$300(Lcom/googlepay/GooglePay;)V

    .line 135
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5
    .param p1, "billingResult"    # Lcom/android/billingclient/api/BillingResult;

    .line 109
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_24

    .line 112
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    const-string v1, "GooglePay  Init success "

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/googlepay/GooglePay;->isBillingServiceSonnect:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/googlepay/GooglePay;->access$002(Lcom/googlepay/GooglePay;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 116
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    # invokes: Lcom/googlepay/GooglePay;->RePurchasesResult()V
    invoke-static {v0}, Lcom/googlepay/GooglePay;->access$100(Lcom/googlepay/GooglePay;)V

    .line 118
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    iget-object v1, v0, Lcom/googlepay/GooglePay;->goodsIDList:Ljava/util/List;

    # invokes: Lcom/googlepay/GooglePay;->GetGoodsInfoFromGoogle(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/googlepay/GooglePay;->access$200(Lcom/googlepay/GooglePay;Ljava/util/List;)V

    goto :goto_40

    .line 122
    :cond_24
    iget-object v0, p0, Lcom/googlepay/GooglePay$2;->this$0:Lcom/googlepay/GooglePay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePay Init failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 124
    :goto_40
    return-void
.end method
