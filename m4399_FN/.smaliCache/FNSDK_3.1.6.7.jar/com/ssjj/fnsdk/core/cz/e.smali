.class Lcom/ssjj/fnsdk/core/cz/e;
.super Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/SsjjFNParams;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/e;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0, p1, p3, p4}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 10

    const-string v0, "uid"

    const-string v1, "fnpidraw"

    const-string v2, "fnpid"

    new-instance v3, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    :try_start_b
    const-string v4, ""

    const-string v5, "order_status"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_8a

    const-string v6, "state"

    if-eqz v5, :cond_7a

    :try_start_1d
    const-string v5, "1"

    invoke-virtual {v3, v6, v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "orderId"

    const-string v6, "order_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "gameId"

    const-string v6, "game_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "serverId"

    const-string v6, "server_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "payWay"

    const-string v1, "pay_way"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    const-string v1, "amount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callbackInfo"

    const-string v1, "callback_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_7a
    const-string v0, "0"

    invoke-virtual {v3, v6, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "failed_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_85
    const/4 p1, 0x0

    invoke-interface {p2, p1, v4, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_89} :catch_8a

    goto :goto_93

    :catch_8a
    move-exception p1

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_93
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 9

    const-string v0, "true"

    const-string v1, "loop"

    const/4 v2, 0x1

    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_56

    const-string p1, "sign"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/e;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-static {v4, v3, v2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/cz/e;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p1, v6, v4}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    const-string v4, "verity sign succ"

    invoke-static {p1, v4}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_e1

    const-string p1, "data"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0, p1, v3}, Lcom/ssjj/fnsdk/core/cz/e;->a(Lorg/json/JSONObject;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_e1

    :cond_42
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    const-string v3, "verity sign fail"

    invoke-static {p1, v3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_e1

    const-string v3, "sign\u6821\u9a8c\u5931\u8d25!"

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p1, v2, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto/16 :goto_e1

    :cond_56
    const/4 v4, 0x2

    if-ne p1, v4, :cond_71

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_e1

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v3, "state"

    const-string v4, "2"

    invoke-virtual {p1, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v3, "\u8ba2\u5355\u5df2\u786e\u8ba4"

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v5, 0x0

    invoke-interface {p1, v5, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_e1

    :cond_71
    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_e1

    const-string p1, "\u67e5\u4e0d\u5230\u8be5\u8ba2\u5355"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {v3, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v3, v2, p1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_e1

    :cond_86
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v4, :cond_e1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "err code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", msg: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v3, v2, p1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check order fail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c4} :catch_c5

    goto :goto_e1

    :catch_c5
    move-exception p1

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v3, :cond_e1

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    const-string v4, "no net err"

    invoke-static {v3, v4}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->c(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {v3, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/e;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/e;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_e1
    :goto_e1
    return-void
.end method
