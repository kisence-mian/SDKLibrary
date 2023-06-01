.class Lcom/ssjj/fnsdk/core/be;
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
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/be;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/be;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/be;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/be;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/be;->e:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/be;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/be;->b:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/be;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 9

    const-string v0, "msg"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/be;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/os/AsyncTask;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/be;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v1, :cond_ac

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v2, 0x1

    if-eqz p1, :cond_a5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_a5

    :cond_20
    const/4 v3, 0x0

    :try_start_21
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_36} :catch_65

    goto :goto_39

    :cond_37
    const-string v0, "\u83b7\u53d6\u5931\u8d25"

    :goto_39
    if-ne v5, v2, :cond_4b

    :try_start_3b
    const-string v4, "fCode"

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/be;->e:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/be;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v5, ""

    invoke-interface {v4, v3, v5, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const/4 v3, 0x1

    goto :goto_93

    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_64} :catch_65

    goto :goto_93

    :catch_65
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "upFCode err: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_93
    if-nez v3, :cond_ac

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/be;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    :cond_a5
    :goto_a5
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/be;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v0, "\u8fd4\u56de\u503c\u4e3a\u7a7a"

    :goto_a9
    invoke-interface {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_ac
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/be;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/be;->a(Ljava/lang/String;)V

    return-void
.end method
