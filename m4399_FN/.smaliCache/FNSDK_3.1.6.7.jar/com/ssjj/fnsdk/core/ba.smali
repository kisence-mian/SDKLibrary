.class Lcom/ssjj/fnsdk/core/ba;
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
.field private final synthetic a:I

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic e:I

.field private final synthetic f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;ILcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;)V
    .registers 7

    iput p1, p0, Lcom/ssjj/fnsdk/core/ba;->a:I

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ba;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/ba;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/ba;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput p5, p0, Lcom/ssjj/fnsdk/core/ba;->e:I

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/ba;->f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p1, "ret"

    iget v0, p0, Lcom/ssjj/fnsdk/core/ba;->a:I

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_b

    const/4 v0, 0x1

    :cond_b
    :goto_b
    if-lt v2, v0, :cond_e

    return-object v1

    :cond_e
    add-int/lit8 v2, v2, 0x1

    :try_start_10
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ba;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/ba;->c:Ljava/lang/String;

    const-string v4, "GET"

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/ba;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v1, v3, v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2b} :catch_31

    goto :goto_2e

    :cond_2c
    const/16 v3, -0x63

    :goto_2e
    if-nez v3, :cond_3a

    return-object v1

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    :cond_3a
    iget v3, p0, Lcom/ssjj/fnsdk/core/ba;->e:I

    if-lez v3, :cond_b

    int-to-long v3, v3

    :try_start_3f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_b

    :catch_43
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7

    const-string v0, "msg"

    const-string v1, "ret"

    const/16 v2, -0x63

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_15
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1f} :catch_23

    goto :goto_24

    :cond_20
    const-string p1, ""

    goto :goto_24

    :catch_23
    move-exception v0

    :goto_24
    if-nez v2, :cond_2c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/ba;->f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;->onSucceed()V

    goto :goto_3e

    :cond_2c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ba;->f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;->onFailed(ILjava/lang/String;)V

    :goto_3e
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/ba;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/ba;->a(Ljava/lang/String;)V

    return-void
.end method
