.class Lcom/ssjj/fnsdk/core/bf;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Landroid/app/Activity;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 9

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bf;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bf;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/bf;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/bf;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/bf;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/bf;->f:Landroid/app/Activity;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/bf;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/bf;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6

    sget-object p1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bf;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bf;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bf;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bf;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    const-string v3, "fnpid"

    invoke-virtual {v2, v3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fngid"

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bf;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "img_url"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/bf;->c:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "time"

    invoke-virtual {v2, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sign"

    invoke-virtual {v2, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bf;->d:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reason"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bf;->e:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bf;->f:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bf;->g:Ljava/lang/String;

    const-string v1, "POST"

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_87
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_7d .. :try_end_87} :catch_88

    goto :goto_8b

    :catch_88
    move-exception p1

    const-string p1, ""

    :goto_8b
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 8

    const-string v0, "data"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bf;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    const-string p1, "\u4e3e\u62a5\u5931\u8d25, \u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6709\u95ee\u9898"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bf;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_1a

    const-string v0, "\u4e3e\u62a5\u56fe\u7247\u5931\u8d25, \u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6709\u95ee\u9898"

    invoke-interface {p1, v3, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bf;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-nez v1, :cond_20

    return-void

    :cond_20
    :try_start_20
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v3, :cond_46

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bf;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v5, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_61

    :cond_46
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bf;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-interface {v0, v3, v5, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_4b} :catch_4c

    goto :goto_61

    :catch_4c
    move-exception v0

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bf;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\u63a5\u53e3\u8fd4\u56de\u7ed3\u679c\u89e3\u6790\u9519\u8bef: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_61
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bf;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bf;->a(Ljava/lang/String;)V

    return-void
.end method
