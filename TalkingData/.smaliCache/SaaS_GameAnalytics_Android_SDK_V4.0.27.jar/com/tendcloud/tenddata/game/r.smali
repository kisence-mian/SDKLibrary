.class Lcom/tendcloud/tenddata/game/r;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/zz;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$order:Lcom/tendcloud/tenddata/game/en;

.field final synthetic val$service:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;)V
    .registers 5

    .line 1126
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/r;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/r;->val$service:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/r;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/r;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1131
    const-string v0, "keyOrderDetail"

    :try_start_2
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1132
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/r;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    const-string v4, "iap"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "placeOrder"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1137
    const-string v3, "accountId"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/r;->val$account:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string v3, "orderId"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/r;->val$order:Lcom/tendcloud/tenddata/game/en;

    const-string v5, "keyOrderId"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/game/en;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v3, "amount"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/r;->val$order:Lcom/tendcloud/tenddata/game/en;

    const-string v5, "keyTotalPrice"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/game/en;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/r;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TRACKING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_65
    .catchall {:try_start_2 .. :try_end_65} :catchall_d2

    const-string v4, "keyCurrencyType"

    const-string v5, "currencyType"

    if-eqz v3, :cond_75

    .line 1141
    :try_start_6b
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/r;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    .line 1142
    :cond_75
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/r;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v6, "APP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/r;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v6, "FINTECH"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 1143
    :cond_91
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/r;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1144
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 1146
    const-string v3, "CNY"

    .line 1148
    :cond_9f
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_a2
    :goto_a2
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/r;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/game/en;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1151
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/r;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/game/en;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_bd

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_bd

    .line 1153
    const-string v3, "items"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    :cond_bd
    iget-object v0, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_d1
    .catchall {:try_start_6b .. :try_end_d1} :catchall_d2

    .line 1160
    goto :goto_d3

    .line 1158
    :catchall_d2
    move-exception v0

    .line 1161
    :goto_d3
    return-void
.end method
