.class Lcom/ssjj/fnsdk/core/cl;
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
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cl;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cl;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cl;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/cl;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object p1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_LON:Ljava/lang/String;

    :try_start_2
    new-instance v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cl;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cl;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ext"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cl;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cl;->c:Landroid/content/Context;

    const-string v2, "GET"

    invoke-static {v1, p1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_31
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oauth ret\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "oauthStr"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cl;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/cl;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/cl;->a(Ljava/lang/String;)V

    return-void
.end method
