.class Lcom/ssjj/fnsdk/core/dk;
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
.field final synthetic a:Lcom/ssjj/fnsdk/core/StatManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/StatManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Z)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/dk;->a:Lcom/ssjj/fnsdk/core/StatManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/dk;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/dk;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/dk;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ssjj/fnsdk/core/dk;->e:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p1, "1"

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_LOG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "event.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1e

    return-object v1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    :try_start_20
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/dk;->b:Landroid/content/Context;

    const-string v4, "POST"

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/dk;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v3, v0, v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_2e
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_20 .. :try_end_2e} :catch_31

    if-eqz v3, :cond_35

    return-object p1

    :catch_31
    move-exception v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    :cond_35
    const/16 v3, 0x2710

    int-to-long v3, v3

    :try_start_38
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_1a

    :catch_3c
    move-exception v3

    goto :goto_1a
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "event ok: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/dk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/dk;->e:Z

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/dk;->b:Landroid/content/Context;

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3c
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/dk;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/dk;->a(Ljava/lang/String;)V

    return-void
.end method
