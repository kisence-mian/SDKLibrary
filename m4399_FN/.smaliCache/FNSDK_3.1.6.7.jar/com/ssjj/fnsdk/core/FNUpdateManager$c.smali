.class Lcom/ssjj/fnsdk/core/FNUpdateManager$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/FNUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

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
.field a:Landroid/content/Context;

.field b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field d:Z

.field final synthetic e:Lcom/ssjj/fnsdk/core/FNUpdateManager;


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->e:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->d:Z

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "client_id"

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "fnpid"

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "pkg_name"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object p2

    const-string p3, "app_version"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getChannel()Ljava/lang/String;

    move-result-object p2

    const-string p3, "channel"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getSyChannel()Ljava/lang/String;

    move-result-object p2

    const-string p3, "channelSy"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object p2

    const-string p3, "did"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getCustomUpdateKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getCustomUpdateValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_8f

    if-eqz p2, :cond_8f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_8f

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {p3, p1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/FNUpdateManager$c;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object p1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UPDATE:Ljava/lang/String;

    :try_start_2
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->a:Landroid/content/Context;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v0, p1, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    move-object p1, v0

    :goto_16
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_NO_UPDATE:I

    new-instance v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-direct {v1, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->e()Z

    move-result v2

    if-eqz v2, :cond_22

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_HAS_UPDATE:I

    const-string v2, "savePath"

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-static {}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->addObj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v1, :cond_32

    const-string v2, ""

    invoke-interface {v1, v0, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_32
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->a(Ljava/lang/String;)V

    return-void
.end method
