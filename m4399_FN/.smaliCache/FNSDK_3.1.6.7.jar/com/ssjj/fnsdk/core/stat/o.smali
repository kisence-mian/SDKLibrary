.class Lcom/ssjj/fnsdk/core/stat/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/n;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/n;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/o;->a:Lcom/ssjj/fnsdk/core/stat/n;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/stat/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/stat/o;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRequest(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_11
    const-string v2, "event"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/stat/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventTime"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/stat/o;->a:Lcom/ssjj/fnsdk/core/stat/n;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/stat/o;->c:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcom/ssjj/fnsdk/core/stat/n;->a(Lcom/ssjj/fnsdk/core/stat/n;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_29
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1, v3, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v0, "flag"

    invoke-virtual {p1, v0, v2}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-void
.end method
