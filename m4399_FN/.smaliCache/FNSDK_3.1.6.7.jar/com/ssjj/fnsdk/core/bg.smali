.class Lcom/ssjj/fnsdk/core/bg;
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

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bg;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bg;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/bg;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object p1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CFG2:Ljava/lang/String;

    :try_start_2
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bg;->b:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bg;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v0, p1, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bg;->a:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_1c
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bg;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_3b

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_24

    :cond_1b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bg;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bg;->a:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_3b

    :cond_24
    :goto_24
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bg;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fd4\u56de\u503c\u4e3a\u7a7a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bg;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bg;->a(Ljava/lang/String;)V

    return-void
.end method
