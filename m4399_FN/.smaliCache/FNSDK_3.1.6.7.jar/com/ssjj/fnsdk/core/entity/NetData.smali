.class public Lcom/ssjj/fnsdk/core/entity/NetData;
.super Ljava/lang/Object;


# instance fields
.field public code:I

.field public data:Ljava/lang/String;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/NetData;->code:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/NetData;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/entity/NetData;->data:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/entity/NetData;
    .registers 5

    const-string v0, "data"

    const-string v1, "msg"

    new-instance v2, Lcom/ssjj/fnsdk/core/entity/NetData;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/entity/NetData;-><init>()V

    if-eqz p0, :cond_49

    :try_start_b
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/ssjj/fnsdk/core/entity/NetData;->code:I

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/ssjj/fnsdk/core/entity/NetData;->msg:Ljava/lang/String;

    :cond_24
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/ssjj/fnsdk/core/entity/NetData;->data:Ljava/lang/String;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_30} :catch_31

    goto :goto_49

    :catch_31
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parse err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_49
    :goto_49
    return-object v2
.end method
