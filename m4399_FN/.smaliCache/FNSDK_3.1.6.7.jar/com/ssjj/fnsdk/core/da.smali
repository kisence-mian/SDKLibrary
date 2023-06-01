.class Lcom/ssjj/fnsdk/core/da;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/da;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/da;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/da;->c:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "sign"

    const-string v1, "updateDesc"

    const-string v2, "forceUpdate"

    const-string v3, "downloadUrl"

    const-string v4, "update err: "

    :try_start_a
    iget-object v5, p0, Lcom/ssjj/fnsdk/core/da;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->i(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/da;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->i(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v5, ""

    :goto_30
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/da;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->o(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?client_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/da;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&fnpid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pkg_name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/da;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->i(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&app_version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&channel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&channelSy="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getSyChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&did="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_b4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "update start: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "update end: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_dc} :catch_135

    if-eqz v5, :cond_12f

    const-string v7, "versionName"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12f

    :try_start_e6
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_e6 .. :try_end_10e} :catch_114

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/da;->c:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;

    invoke-interface {v0, v6}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;->a(Landroid/os/Bundle;)V

    goto :goto_134

    :catch_114
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_129
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/da;->c:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;->a()V

    return-void

    :cond_12f
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/da;->c:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;->a()V

    :goto_134
    return-void

    :catch_135
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_129
.end method
