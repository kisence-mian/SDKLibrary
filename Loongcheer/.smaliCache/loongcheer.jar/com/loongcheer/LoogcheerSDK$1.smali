.class Lcom/loongcheer/LoogcheerSDK$1;
.super Ljava/lang/Object;
.source "LoogcheerSDK.java"

# interfaces
.implements Lcom/loongcheer/googleplaysdk/callback/PlayInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loongcheer/LoogcheerSDK;->Pay(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loongcheer/LoogcheerSDK;


# direct methods
.method constructor <init>(Lcom/loongcheer/LoogcheerSDK;)V
    .registers 2
    .param p1, "this$0"    # Lcom/loongcheer/LoogcheerSDK;

    .line 157
    iput-object p1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loongcheer fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v3, v2, Lcom/loongcheer/LoogcheerSDK;->payInfo:LsdkInterface/module/PayInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v4, "Loongcheer"

    const/4 v5, 0x0

    const-string v6, ""

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackPayResult(LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/loongcheer/LoogcheerSDK;->access$000(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public succ(Lcom/android/billingclient/api/Purchase;)V
    .registers 9
    .param p1, "purchase"    # Lcom/android/billingclient/api/Purchase;

    .line 166
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loongcheer succ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v1, v1, Lcom/loongcheer/LoogcheerSDK;->goodsIDCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loongcheer token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v2, v1, Lcom/loongcheer/LoogcheerSDK;->payInfo:LsdkInterface/module/PayInfo;

    const-string v3, "Loongcheer"

    const/4 v4, 0x1

    const-string v6, ""

    move-object v5, v0

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackPayResult(LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/loongcheer/LoogcheerSDK;->access$100(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loongcheer/LoogcheerSDK;->ConsumptionGoods(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-virtual {v1, p1}, Lcom/loongcheer/LoogcheerSDK;->AfPlayValidation(Lcom/android/billingclient/api/Purchase;)V

    .line 179
    return-void
.end method

.method public succNotVerified(Lcom/android/billingclient/api/Purchase;)V
    .registers 9
    .param p1, "purchase"    # Lcom/android/billingclient/api/Purchase;

    .line 184
    iget-object v0, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loongcheer succNotVerified "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v1, v1, Lcom/loongcheer/LoogcheerSDK;->goodsIDCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loongcheer token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loongcheer/LoogcheerSDK;->SendLog(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    iget-object v2, v1, Lcom/loongcheer/LoogcheerSDK;->payInfo:LsdkInterface/module/PayInfo;

    const-string v3, "Loongcheer"

    const/4 v4, 0x1

    const-string v6, ""

    move-object v5, v0

    # invokes: Lcom/loongcheer/LoogcheerSDK;->CallBackPayResult(LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/loongcheer/LoogcheerSDK;->access$200(Lcom/loongcheer/LoogcheerSDK;LsdkInterface/module/PayInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loongcheer/LoogcheerSDK;->ConsumptionGoods(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/loongcheer/LoogcheerSDK$1;->this$0:Lcom/loongcheer/LoogcheerSDK;

    invoke-virtual {v1, p1}, Lcom/loongcheer/LoogcheerSDK;->AfPlayValidation(Lcom/android/billingclient/api/Purchase;)V

    .line 197
    return-void
.end method
