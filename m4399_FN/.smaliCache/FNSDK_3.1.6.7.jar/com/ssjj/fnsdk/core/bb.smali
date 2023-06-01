.class Lcom/ssjj/fnsdk/core/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bb;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/bb;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "serverTime"

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    :try_start_5
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/bb;->b:Ljava/lang/String;

    const-string v6, "GET"

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/bb;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v4, v5, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "-2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    :cond_25
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    const-string v6, "sendIntervalForOnlineLog"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;I)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    const-string v6, "sendOnlyWifiForOnlineLog"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;I)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V

    :cond_52
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_6a

    const-string v4, "Get server time success"

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    :goto_66
    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->h(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V

    goto :goto_a5

    :cond_6a
    const-string v4, "Get server time fail"

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v1

    invoke-static {v4, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7b} :catch_7c

    goto :goto_66

    :catch_7c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get server time fail\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v1

    invoke-static {v4, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->h(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V

    :goto_a5
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->i(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Lcom/ssjj/fnsdk/core/SsjjFNParams;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v1, v3, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->i(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Lcom/ssjj/fnsdk/core/SsjjFNParams;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bb;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->callbackServerTime()V

    return-void
.end method
