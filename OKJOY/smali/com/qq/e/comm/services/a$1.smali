.class final Lcom/qq/e/comm/services/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/NetworkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/services/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/managers/plugin/PM;

.field private synthetic b:J

.field private synthetic c:Lcom/qq/e/comm/services/a;


# direct methods
.method constructor <init>(Lcom/qq/e/comm/services/a;Lcom/qq/e/comm/managers/plugin/PM;J)V
    .registers 6

    iput-object p1, p0, Lcom/qq/e/comm/services/a$1;->c:Lcom/qq/e/comm/services/a;

    iput-object p2, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    iput-wide p3, p0, Lcom/qq/e/comm/services/a$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .registers 16
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    const-string v0, "ActivateError"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    const/4 v4, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v10, v12

    long-to-int v5, v10

    const/4 v8, 0x1

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V
    .registers 17
    .param p2, "response"    # Lcom/qq/e/comm/net/rr/Response;

    .prologue
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_12a

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStringContent()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ACTIVERESPONSE:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "SDK Server response empty string,maybe zip or tea format error"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_101
    .catchall {:try_start_0 .. :try_end_29} :catchall_142

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    :goto_4a
    return-void

    :cond_4b
    :try_start_4b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v3, "ret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string v0, "ret"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_5f
    if-eqz v0, :cond_95

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response Error,retCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_73} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_73} :catch_101
    .catchall {:try_start_4b .. :try_end_73} :catchall_142

    :cond_73
    :goto_73
    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    goto :goto_4a

    :cond_95
    :try_start_95
    iget-object v0, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_97} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_97} :catch_101
    .catchall {:try_start_95 .. :try_end_97} :catchall_142

    if-eqz v0, :cond_73

    :try_start_99
    iget-object v0, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1}, Lcom/qq/e/comm/pi/POFactory;->config(ILjava/lang/String;)V
    :try_end_a3
    .catch Lcom/qq/e/comm/managers/plugin/c; {:try_start_99 .. :try_end_a3} :catch_fc
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a3} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_a3} :catch_101
    .catchall {:try_start_99 .. :try_end_a3} :catchall_142

    :goto_a3
    :try_start_a3
    const-string v0, "sig"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "sig"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "jar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-virtual {v2, v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->update(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_d2} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_a3 .. :try_end_d2} :catch_101
    .catchall {:try_start_a3 .. :try_end_d2} :catchall_142

    goto :goto_73

    :catch_d3
    move-exception v0

    :try_start_d4
    const-string v1, "ActivateError"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_142

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    goto/16 :goto_4a

    :catch_fc
    move-exception v0

    :try_start_fd
    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/c;->printStackTrace()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_fd .. :try_end_100} :catch_101
    .catchall {:try_start_fd .. :try_end_100} :catchall_142

    goto :goto_a3

    :catch_101
    move-exception v0

    :try_start_102
    const-string v1, "Parse Active or launch response exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_107
    .catchall {:try_start_102 .. :try_end_107} :catchall_142

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v9

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v10

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v9, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    goto/16 :goto_4a

    :cond_12a
    :try_start_12a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK server response code error while launch or activate,code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_140} :catch_d3
    .catch Lorg/json/JSONException; {:try_start_12a .. :try_end_140} :catch_101
    .catchall {:try_start_12a .. :try_end_140} :catchall_142

    goto/16 :goto_73

    :catchall_142
    move-exception v0

    move-object v9, v0

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v10

    new-instance v0, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    invoke-interface/range {p2 .. p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v12, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v6, v12

    long-to-int v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v10, v0}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    throw v9
.end method
