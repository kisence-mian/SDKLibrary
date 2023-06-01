.class Lcom/ssjj/fnsdk/core/share/price/c;
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
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/c;->a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/price/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/price/c;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/price/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/share/price/c;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/c;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/c;->c:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/price/c;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_22

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/c;->a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/price/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/price/c;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-static {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_31

    :cond_16
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/c;->a:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/price/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/price/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/price/c;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_31

    :cond_22
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/c;->f:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_31

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, 0x1

    const-string v2, "type is null"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_31
    :goto_31
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/c;->a(Ljava/lang/String;)V

    return-void
.end method
