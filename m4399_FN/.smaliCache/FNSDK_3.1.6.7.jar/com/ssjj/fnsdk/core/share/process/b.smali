.class Lcom/ssjj/fnsdk/core/share/process/b;
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
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/String;

.field private final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/process/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/process/b;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/process/b;->e:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/share/process/b;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/share/process/b;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/share/process/b;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/ssjj/fnsdk/core/share/process/b;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/ssjj/fnsdk/core/share/process/b;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/ssjj/fnsdk/core/share/process/b;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/ssjj/fnsdk/core/share/process/b;->l:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/b;->c:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/process/b;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

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
    .registers 9

    const-string v0, "data"

    const-string v1, "msg"

    const-string v2, "code"

    const/4 v3, 0x1

    const-string v4, "fail"

    const-string v5, ""

    if-eqz p1, :cond_78

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_78

    :try_start_17
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_26
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_35

    const/4 p1, 0x0

    const/4 v3, 0x0

    goto :goto_57

    :cond_35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    :cond_57
    :goto_57
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_61} :catch_74

    goto :goto_63

    :cond_62
    move-object p1, v5

    :goto_63
    if-eqz p1, :cond_72

    :try_start_65
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6b} :catch_6e

    if-eqz v0, :cond_72

    goto :goto_78

    :catch_6e
    move-exception v0

    move-object v5, p1

    move-object p1, v0

    goto :goto_75

    :cond_72
    move-object v5, p1

    goto :goto_78

    :catch_74
    move-exception p1

    :goto_75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_78
    :goto_78
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->e:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_e5

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, "fromUrl"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callbackInfo"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uid"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleId"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleName"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serverId"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serverName"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rawData"

    invoke-virtual {p1, v0, v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_e0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e0

    :try_start_bf
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_e0

    :goto_ca
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d1

    goto :goto_e0

    :cond_d1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_bf .. :try_end_de} :catchall_df

    goto :goto_ca

    :catchall_df
    move-exception v0

    :cond_e0
    :goto_e0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/b;->e:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-interface {v0, v3, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_e5
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/b;->a(Ljava/lang/String;)V

    return-void
.end method
