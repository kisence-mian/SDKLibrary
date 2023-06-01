.class Lcom/ssjj/fnsdk/core/log2/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/log2/DataCFImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/log2/b;->a:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterRequest(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;
    .registers 4

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->isSucc()Z

    move-result v0

    if-eqz v0, :cond_4e

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "meta"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    const-string p1, "Send log succ"

    :goto_1f
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_53

    :cond_23
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send log fail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_39

    goto :goto_1f

    :catch_39
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process data error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :cond_4e
    const-string p1, "Send log fail: network error"

    :goto_50
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_53
    const/4 p1, 0x0

    return-object p1
.end method
