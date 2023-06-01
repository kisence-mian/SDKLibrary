.class Lcom/ssjj/fnsdk/core/cz/f;
.super Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/SsjjFNParams;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz/f;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/cz/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/cz/f;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0, p1, p3, p4}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_40

    const-string p1, "sign"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/f;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/f;->a:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, v1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_75

    const-string v1, "\u786e\u8ba4\u8ba2\u5355\u6210\u529f"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/f;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_75

    :cond_34
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_75

    const-string v1, "sign\u6821\u9a8c\u5931\u8d25!"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/f;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_75

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "err code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", msg: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cz/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v1, :cond_75

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/f;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v1, v0, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_68} :catch_69

    goto :goto_75

    :catch_69
    move-exception p1

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz/f;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_75

    const-string v1, ""

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz/f;->e:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_75
    :goto_75
    return-void
.end method
