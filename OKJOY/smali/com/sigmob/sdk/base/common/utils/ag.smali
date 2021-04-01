.class public Lcom/sigmob/sdk/base/common/utils/ag;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0xa


# instance fields
.field private final b:Lcom/sigmob/sdk/base/common/utils/ah;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/base/common/utils/ah;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ag;->b:Lcom/sigmob/sdk/base/common/utils/ah;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/16 v4, 0x12c

    if-lt v2, v4, :cond_20

    const/16 v4, 0x190

    if-ge v2, v4, :cond_20

    :try_start_18
    invoke-virtual {v1, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1f} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_4a

    move-result-object v0

    :cond_20
    return-object v0

    :catch_21
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URL redirection. baseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n redirectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "Unable to parse invalid URL"

    invoke-direct {v0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_4a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL redirection. baseUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n redirectUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/utils/ah;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ag;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/common/utils/ag;-><init>(Lcom/sigmob/sdk/base/common/utils/ah;)V

    const/4 v1, 0x1

    :try_start_6
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v1, "Failed to resolve url"

    invoke-interface {p1, v1, v0}, Lcom/sigmob/sdk/base/common/utils/ah;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_37

    const/4 v1, 0x0

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v1, Lcom/sigmob/sdk/base/c/p;->b:Lcom/sigmob/sdk/base/c/p;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/c/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/ag;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_4e

    move-result-object v1

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2c

    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_30

    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2f
    return-object v1

    :catch_30
    move-exception v2

    const-string v2, "IOException when closing httpUrlConnection. Ignoring."

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_2c

    :catchall_37
    move-exception v0

    :goto_38
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_47

    :cond_43
    :goto_43
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_46
    throw v0

    :catch_47
    move-exception v2

    const-string v2, "IOException when closing httpUrlConnection. Ignoring."

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_43

    :catchall_4e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_38
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    const/4 v1, 0x0

    :try_start_8
    aget-object v1, p1, v1

    :goto_a
    if-eqz v1, :cond_6

    sget-object v2, Lcom/sigmob/sdk/base/common/utils/ab;->c:Lcom/sigmob/sdk/base/common/utils/ab;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/base/common/utils/ab;->a(Landroid/net/Uri;)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_22

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v1

    goto :goto_6

    :cond_1a
    :try_start_1a
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/common/utils/ag;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_2b

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_a

    :catch_22
    move-exception v1

    :goto_23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V

    goto :goto_6

    :catch_2b
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_23
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ag;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p1, :cond_f

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/utils/ag;->onCancelled()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ag;->b:Lcom/sigmob/sdk/base/common/utils/ah;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/utils/ah;->a(Ljava/lang/String;)V

    goto :goto_e
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ag;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .registers 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ag;->b:Lcom/sigmob/sdk/base/common/utils/ah;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ah;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ag;->a(Ljava/lang/String;)V

    return-void
.end method
