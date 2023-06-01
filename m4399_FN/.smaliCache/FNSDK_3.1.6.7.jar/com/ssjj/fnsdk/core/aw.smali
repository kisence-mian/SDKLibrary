.class Lcom/ssjj/fnsdk/core/aw;
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

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/aw;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/aw;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/aw;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/aw;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/aw;->b:Ljava/lang/String;

    const-string v2, "GET"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/aw;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logUserOnline ret: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/aw;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlineData"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3f
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    :cond_44
    :goto_44
    return-void
.end method
