.class Lcom/tendcloud/tenddata/game/o;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/zz;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$amount:I

.field final synthetic val$currencyType:Ljava/lang/String;

.field final synthetic val$order:Lcom/tendcloud/tenddata/game/en;

.field final synthetic val$orderid:Ljava/lang/String;

.field final synthetic val$payType:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;)V
    .registers 9

    .line 1005
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/o;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/o;->val$service:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/o;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/o;->val$orderid:Ljava/lang/String;

    iput p5, p0, Lcom/tendcloud/tenddata/game/o;->val$amount:I

    iput-object p6, p0, Lcom/tendcloud/tenddata/game/o;->val$currencyType:Ljava/lang/String;

    iput-object p7, p0, Lcom/tendcloud/tenddata/game/o;->val$payType:Ljava/lang/String;

    iput-object p8, p0, Lcom/tendcloud/tenddata/game/o;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1009
    const-string v0, "keyOrderDetail"

    const-string v1, "currencyType"

    const-string v2, "amount"

    const-string v3, "orderId"

    :try_start_8
    new-instance v4, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v4}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1010
    iget-object v5, v4, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "apiType"

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    iget-object v5, v4, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "service"

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/o;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v5, v4, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "domain"

    const-string v7, "iap"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget-object v5, v4, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "action"

    const-string v7, "recharge"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1015
    const-string v6, "accountId"

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/o;->val$account:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    iget-object v6, p0, Lcom/tendcloud/tenddata/game/o;->val$orderid:Ljava/lang/String;

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget v6, p0, Lcom/tendcloud/tenddata/game/o;->val$amount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v6, p0, Lcom/tendcloud/tenddata/game/o;->val$currencyType:Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string v6, "payType"

    iget-object v7, p0, Lcom/tendcloud/tenddata/game/o;->val$payType:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1021
    iget-object v7, p0, Lcom/tendcloud/tenddata/game/o;->val$order:Lcom/tendcloud/tenddata/game/en;

    const-string v8, "keyOrderId"

    invoke-virtual {v7, v8}, Lcom/tendcloud/tenddata/game/en;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->val$order:Lcom/tendcloud/tenddata/game/en;

    const-string v7, "keyTotalPrice"

    invoke-virtual {v3, v7}, Lcom/tendcloud/tenddata/game/en;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1023
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/o;->val$order:Lcom/tendcloud/tenddata/game/en;

    const-string v3, "keyCurrencyType"

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/en;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/o;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/en;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 1026
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/o;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/en;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9c

    .line 1028
    const-string v1, "items"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1031
    :cond_9c
    const-string v0, "order"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v0, v4, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_b5
    .catchall {:try_start_8 .. :try_end_b5} :catchall_b6

    .line 1036
    goto :goto_b7

    .line 1034
    :catchall_b6
    move-exception v0

    .line 1037
    :goto_b7
    return-void
.end method
