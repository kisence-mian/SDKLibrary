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
    .registers 5

    iput-object p1, p0, Lcom/qq/e/comm/services/a$1;->c:Lcom/qq/e/comm/services/a;

    iput-object p2, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    iput-wide p3, p0, Lcom/qq/e/comm/services/a$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .registers 12

    const-string v0, "ActivateError"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object p1

    new-instance v9, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {p1, v9}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    return-void
.end method

.method public final onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V
    .registers 14

    const-string p1, "url"

    const-string v0, "jar"

    const-string v1, "sig"

    const-string v2, "ret"

    :try_start_8
    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_ae

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStringContent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ACTIVERESPONSE:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    const-string p1, "SDK Server response empty string,maybe zip or tea format error"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->report(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_31} :catch_10c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_31} :catch_e5
    .catchall {:try_start_8 .. :try_end_31} :catchall_e3

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object p1

    new-instance v9, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    :goto_50
    invoke-virtual {p1, v9}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    return-void

    :cond_54
    :try_start_54
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    :cond_64
    if-eqz v5, :cond_79

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Response Error,retCode="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_75
    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_c2

    :cond_79
    iget-object v2, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7b} :catch_10c
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_7b} :catch_e5
    .catchall {:try_start_54 .. :try_end_7b} :catchall_e3

    if-eqz v2, :cond_c2

    :try_start_7d
    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3}, Lcom/qq/e/comm/pi/POFactory;->config(ILjava/lang/String;)V
    :try_end_85
    .catch Lcom/qq/e/comm/managers/plugin/c; {:try_start_7d .. :try_end_85} :catch_86
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_85} :catch_10c
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_85} :catch_e5
    .catchall {:try_start_7d .. :try_end_85} :catchall_e3

    goto :goto_8a

    :catch_86
    move-exception v2

    :try_start_87
    invoke-virtual {v2}, Lcom/qq/e/comm/managers/plugin/c;->printStackTrace()V

    :goto_8a
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/qq/e/comm/services/a$1;->a:Lcom/qq/e/comm/managers/plugin/PM;

    invoke-virtual {v1, v0, p1}, Lcom/qq/e/comm/managers/plugin/PM;->update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    :cond_ae
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SDK server response code error while launch or activate,code:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_c1} :catch_10c
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_c1} :catch_e5
    .catchall {:try_start_87 .. :try_end_c1} :catchall_e3

    goto :goto_75

    :cond_c2
    :goto_c2
    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object p1

    new-instance v9, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    goto/16 :goto_50

    :catchall_e3
    move-exception p1

    goto :goto_133

    :catch_e5
    move-exception p1

    :try_start_e6
    const-string v0, "Parse Active or launch response exception"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_e3

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object p1

    new-instance v9, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    goto/16 :goto_50

    :catch_10c
    move-exception p1

    :try_start_10d
    const-string v0, "ActivateError"

    invoke-static {v0, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_112
    .catchall {:try_start_10d .. :try_end_112} :catchall_e3

    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object p1

    new-instance v9, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v1, "sdk.e.qq.com"

    const-string v2, "launch"

    const-string v3, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    goto/16 :goto_50

    :goto_133
    invoke-static {}, Lcom/qq/e/comm/services/RetCodeService;->getInstance()Lcom/qq/e/comm/services/RetCodeService;

    move-result-object v0

    new-instance v10, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;

    invoke-interface {p2}, Lcom/qq/e/comm/net/rr/Response;->getStatusCode()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/qq/e/comm/services/a$1;->b:J

    sub-long/2addr v1, v3

    long-to-int v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v2, "sdk.e.qq.com"

    const-string v3, "launch"

    const-string v4, ""

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-virtual {v0, v10}, Lcom/qq/e/comm/services/RetCodeService;->send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    throw p1
.end method
