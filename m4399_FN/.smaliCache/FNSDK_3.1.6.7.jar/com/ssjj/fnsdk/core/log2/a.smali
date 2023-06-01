.class Lcom/ssjj/fnsdk/core/log2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

.field private final synthetic b:Lorg/json/JSONObject;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/log2/DataCFImpl;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/log2/a;->a:Lcom/ssjj/fnsdk/core/log2/DataCFImpl;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/log2/a;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/log2/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRequest(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V
    .registers 13

    const-string v0, "TIMELACK"

    const-string v1, "Get server time fail, use system time"

    const-string v2, "0"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getServerTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_160

    const-wide/16 v4, 0x3e8

    :try_start_1d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gtz v10, :cond_3d

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_3f

    goto :goto_55

    :cond_3d
    move-object v0, v3

    goto :goto_55

    :catch_3f
    move-exception v3

    :try_start_40
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_55
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/log2/a;->b:Lorg/json/JSONObject;

    const-string v4, "rectime"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "did"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adtype"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "regtype"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "pt"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fnpid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "gameid"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fngid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "os"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "osver"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appver"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->appVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sdkver"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->sdkVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "screen"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mno"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->operatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "nm"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dev"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "devtype"

    const-string v4, "android"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ip"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "osid"

    const-string v4, "2"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cid"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "oid"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "aid"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "fnchannel"

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->fnchannel:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/log2/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillJson(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/log2/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillSS(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_139

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    :cond_139
    const-string v2, "User default projectId"

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v4, "MuTBYh2Z"

    :cond_140
    const-string v2, "projectid"

    invoke-virtual {p1, v2, v4}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v2, "tid"

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/log2/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v2, "t"

    invoke-virtual {p1, v2, v3}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v2, "sign"

    invoke-virtual {p1, v2, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_15f} :catch_160

    goto :goto_164

    :catch_160
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_164
    return-void
.end method
