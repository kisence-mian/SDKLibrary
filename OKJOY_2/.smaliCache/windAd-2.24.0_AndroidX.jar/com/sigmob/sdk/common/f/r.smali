.class public Lcom/sigmob/sdk/common/f/r;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/f/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/common/f/r$a;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/common/f/r$a;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/r;->a:Lcom/sigmob/sdk/common/f/r$a;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 7

    const-string v0, "\n redirectUrl="

    const-string v1, "Invalid URL redirection. baseUrl="

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v4, "Location"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_67

    const/16 v4, 0x190

    if-ge v3, v4, :cond_67

    :try_start_1b
    invoke-virtual {v2, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_42
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    goto :goto_68

    :catchall_24
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    throw v2

    :catch_42
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/net/URISyntaxException;

    const-string v0, "Unable to parse invalid URL"

    invoke-direct {p0, p1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_67
    const/4 p0, 0x0

    :goto_68
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/common/f/r$a;)V
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/common/f/r;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/common/f/r;-><init>(Lcom/sigmob/sdk/common/f/r$a;)V

    :try_start_5
    invoke-static {}, Lcom/sigmob/sdk/common/b/c$a;->b()Lcom/sigmob/sdk/common/b/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/b/c$a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/common/f/r;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_1d

    :catchall_17
    move-exception p0

    const-string v0, "Failed to resolve url"

    invoke-interface {p1, v0, p0}, Lcom/sigmob/sdk/common/f/r$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "IOException when closing httpUrlConnection. Ignoring."

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_3a

    const/4 v2, 0x0

    :try_start_f
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v2, Lcom/sigmob/sdk/common/e/i;->b:Lcom/sigmob/sdk/common/e/i;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/e/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/sigmob/sdk/common/f/r;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_37

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_33

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v2

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_33
    :goto_33
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_36
    return-object p1

    :catchall_37
    move-exception p1

    move-object v2, v1

    goto :goto_3b

    :catchall_3a
    move-exception p1

    :goto_3b
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4b

    :try_start_43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v1

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4e
    throw p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_30

    :cond_7
    const/4 v1, 0x0

    :try_start_8
    aget-object p1, p1, v1
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_26

    :goto_a
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    if-eqz v0, :cond_2f

    :try_start_f
    sget-object v1, Lcom/sigmob/sdk/common/f/p;->c:Lcom/sigmob/sdk/common/f/p;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/f/p;->a(Landroid/net/Uri;)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_21

    if-nez p1, :cond_1c

    return-object v0

    :cond_1c
    :try_start_1c
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/f/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_26

    goto :goto_a

    :catchall_21
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_27

    :catchall_26
    move-exception p1

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->w(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2f
    return-object p1

    :cond_30
    :goto_30
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/f/r;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p1, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/common/f/r;->a:Lcom/sigmob/sdk/common/f/r$a;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/common/f/r$a;->a(Ljava/lang/String;)V

    goto :goto_15

    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/f/r;->onCancelled()V

    :goto_15
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/f/r;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .registers 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sigmob/sdk/common/f/r;->a:Lcom/sigmob/sdk/common/f/r$a;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/common/f/r$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/f/r;->a(Ljava/lang/String;)V

    return-void
.end method
