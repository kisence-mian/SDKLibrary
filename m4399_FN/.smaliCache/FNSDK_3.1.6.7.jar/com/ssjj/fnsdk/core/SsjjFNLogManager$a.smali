.class Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

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

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object p1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_CHECK:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->c:Z

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->d:Z

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->f:Landroid/content/Context;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .registers 5

    new-instance p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    const-string v0, "url"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_id"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_15
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->b:Ljava/lang/String;

    const-string v2, "GET"

    invoke-static {v0, v1, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_23

    :catch_20
    move-exception p1

    const-string p1, ""

    :goto_23
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->c:Z

    return-void

    :cond_8
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_8a

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v2, "imageUrl"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_82

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_82

    :cond_23
    :try_start_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "1"
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_30} :catch_6c

    const-string v4, "state"

    if-ne v2, v1, :cond_40

    :try_start_34
    invoke-virtual {v0, v4, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v3, "\u5ba1\u6838\u901a\u8fc7"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_8a

    :cond_40
    if-nez v2, :cond_47

    const-string v2, "\u672a\u5ba1\u6838"

    const-string v3, "0"

    goto :goto_63

    :cond_47
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4f

    const-string v2, "\u56fe\u7247\u5df2\u5220\u9664\u6216\u5df2\u5ba1\u6838\u4f46\u4e0d\u901a\u8fc7"

    const-string v3, "-1"

    goto :goto_63

    :cond_4f
    const/4 v3, -0x2

    if-ne v2, v3, :cond_57

    const-string v2, "URL\u4f20\u5165\u4e0d\u6b63\u786e"

    const-string v3, "-2"

    goto :goto_63

    :cond_57
    const/4 v3, -0x3

    if-ne v2, v3, :cond_5f

    const-string v2, "\u67e5\u8be2\u8d85\u65f6\uff0c\u9700\u8981\u518d\u5c1d\u8bd5"

    const-string v3, "-3"

    goto :goto_63

    :cond_5f
    const-string v2, "\u672a\u77e5\u9519\u8bef"

    const-string v3, "-4"

    :goto_63
    invoke-virtual {v0, v4, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-interface {v3, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_6b} :catch_6c

    goto :goto_8a

    :catch_6c
    move-exception v2

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u63a5\u53e3\u8fd4\u56de\u7ed3\u679c\u89e3\u6790\u9519\u8bef "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_8a

    :cond_82
    :goto_82
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->g:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v2, "\u8bf7\u6c42\u7f51\u7edc\u5931\u8d25!"

    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_8a
    :goto_8a
    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->c:Z

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;->a(Ljava/lang/String;)V

    return-void
.end method
