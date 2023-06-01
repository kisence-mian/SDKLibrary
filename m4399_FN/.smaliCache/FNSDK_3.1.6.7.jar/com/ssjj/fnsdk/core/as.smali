.class Lcom/ssjj/fnsdk/core/as;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/as;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/as;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "onlineData"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/as;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tempOnlineData 2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/as;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/as;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->n(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)I

    move-result v1

    if-nez v1, :cond_40

    :goto_3a
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/as;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logUserOnline(Ljava/lang/String;)V

    goto :goto_53

    :cond_40
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/as;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    goto :goto_3a

    :cond_53
    :goto_53
    return-void
.end method
