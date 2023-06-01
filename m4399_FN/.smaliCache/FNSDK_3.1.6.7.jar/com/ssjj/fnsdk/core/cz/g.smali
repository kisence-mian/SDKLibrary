.class Lcom/ssjj/fnsdk/core/cz/g;
.super Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/SsjjFNParams;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/g;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/cz/g;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/cz/g;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0, p1, p3, p4}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/g;)Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/cz/g;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    return-object p0
.end method

.method private a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lorg/json/JSONObject;)V
    .registers 11

    const-string v0, "uid"

    const-string v1, "fnpid"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    const-string v3, "data"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_18

    goto/16 :goto_9a

    :cond_18
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v6, "orderId"

    const-string v7, "order_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "gameId"

    const-string v7, "game_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "serverId"

    const-string v7, "server_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "payWay"

    const-string v7, "pay_way"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "price"

    const-string v7, "amount"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "callbackInfo"

    const-string v7, "callback_info"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "orderStatus"

    const-string v7, "order_status"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "fnpidRaw"

    const-string v7, "fnpidraw"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "failedDesc"

    const-string v7, "failed_desc"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_95} :catch_99

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_10

    :catch_99
    move-exception p2

    :goto_9a
    const-string p2, "list"

    invoke-virtual {p1, p2, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->addObj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/g;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/g;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x1

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_23

    const-string p1, "sign"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/ssjj/fnsdk/core/cz/h;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/cz/g;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/cz/g;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/cz/h;-><init>(Lcom/ssjj/fnsdk/core/cz/g;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/cz/h;->start()V

    goto :goto_58

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "err code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", msg: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/g;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v1, :cond_58

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/g;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v1, v0, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4b} :catch_4c

    goto :goto_58

    :catch_4c
    move-exception p1

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/g;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_58

    const-string v1, ""

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/g;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_58
    :goto_58
    return-void
.end method
