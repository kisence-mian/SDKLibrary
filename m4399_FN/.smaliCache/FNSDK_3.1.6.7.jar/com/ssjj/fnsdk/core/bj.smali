.class Lcom/ssjj/fnsdk/core/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bj;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterRequest(Lcom/ssjj/fnsdk/core/http/FNHttpResponse;)Lcom/ssjj/fnsdk/core/http/FNHttpResponse;
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->isSucc()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->msg:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    goto :goto_34

    :cond_29
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_34

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->msg:Ljava/lang/String;

    :cond_34
    :goto_34
    return-object p1
.end method
