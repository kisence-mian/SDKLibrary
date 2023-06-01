.class Lcom/ssjj/fnsdk/core/bn;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-wide p2, p0, Lcom/ssjj/fnsdk/core/bn;->c:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bn;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget-object p1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CFG:Ljava/lang/String;

    new-instance v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    const-string v1, "client_id"

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fnpid"

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->encodeUrlWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "did"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->encodeUrlWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nm"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->encodeUrlWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3.1.6.7"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->encodeUrlWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelSy"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_73

    const-string v1, ""

    goto :goto_7d

    :cond_73
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_7d
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9b
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "GET"

    invoke-static {v1, p1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a7} :catch_a8

    goto :goto_bc

    :catch_a8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bn;->a:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_bc
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_9

    const/16 v0, 0x67

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bn;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fncfg time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/bn;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bn;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bn;->a(Ljava/lang/String;)V

    return-void
.end method
