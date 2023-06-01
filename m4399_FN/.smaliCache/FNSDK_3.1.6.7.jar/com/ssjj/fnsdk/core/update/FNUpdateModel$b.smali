.class Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/update/FNUpdateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field final synthetic c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateModel;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->c:Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    if-eqz p1, :cond_64

    array-length v0, p1

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_64

    :cond_f
    aget-object p1, p1, v0

    const/4 v1, 0x0

    :try_start_12
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_46
    .catchall {:try_start_12 .. :try_end_1d} :catchall_44

    :try_start_1d
    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1770

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_37} :catch_42
    .catchall {:try_start_1d .. :try_end_37} :catchall_57

    if-eqz p1, :cond_52

    :try_start_39
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_52

    :catch_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    :catch_42
    move-exception v1

    goto :goto_4a

    :catchall_44
    move-exception v0

    goto :goto_59

    :catch_46
    move-exception p1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_57

    if-eqz p1, :cond_52

    :try_start_4f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_3d

    :cond_52
    :goto_52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_57
    move-exception v0

    move-object v1, p1

    :goto_59
    if-eqz v1, :cond_63

    :try_start_5b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    :goto_63
    throw v0

    :cond_64
    :goto_64
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->a:Z

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Integer;)V
    .registers 5

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "size"

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_1e

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_29

    sget v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->CODE_GET_SIZE_FAILURE:I

    const-string v2, "\u6587\u4ef6\u5927\u5c0f\u83b7\u53d6\u5931\u8d25\uff0c\u5c0f\u4e8e0"

    goto :goto_26

    :cond_1e
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_29

    sget v1, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;->CODE_GET_SIZE_SUCCESS:I

    const-string v2, ""

    :goto_26
    invoke-interface {p1, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_29
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel$b;->a(Ljava/lang/Integer;)V

    return-void
.end method
