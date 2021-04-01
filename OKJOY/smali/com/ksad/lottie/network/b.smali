.class public Lcom/ksad/lottie/network/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ksad/lottie/network/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/network/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    new-instance v0, Lcom/ksad/lottie/network/a;

    iget-object v1, p0, Lcom/ksad/lottie/network/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/ksad/lottie/network/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ksad/lottie/network/b;->c:Lcom/ksad/lottie/network/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksad/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ksad/lottie/network/b;

    invoke-direct {v0, p0, p1}, Lcom/ksad/lottie/network/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/ksad/lottie/network/b;->b()Lcom/ksad/lottie/k;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/ksad/lottie/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/k",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ksad/lottie/k;

    new-instance v1, Lcom/ksad/lottie/network/b$a;

    invoke-direct {v1, p0}, Lcom/ksad/lottie/network/b$a;-><init>(Lcom/ksad/lottie/network/b;)V

    invoke-direct {v0, v1}, Lcom/ksad/lottie/k;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private c()Lcom/ksad/lottie/d;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/network/b;->c:Lcom/ksad/lottie/network/a;

    invoke-virtual {v0}, Lcom/ksad/lottie/network/a;->a()Landroid/support/v4/util/Pair;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v0, v2

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/ksad/lottie/network/FileExtension;

    iget-object v1, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    sget-object v3, Lcom/ksad/lottie/network/FileExtension;->Zip:Lcom/ksad/lottie/network/FileExtension;

    if-ne v0, v3, :cond_2f

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksad/lottie/e;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;

    move-result-object v0

    :goto_22
    invoke-virtual {v0}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/d;

    goto :goto_a

    :cond_2f
    iget-object v0, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ksad/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;

    move-result-object v0

    goto :goto_22

    :cond_36
    move-object v0, v2

    goto :goto_a
.end method

.method private d()Lcom/ksad/lottie/j;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/ksad/lottie/network/b;->e()Lcom/ksad/lottie/j;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v1

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private e()Lcom/ksad/lottie/j;
    .registers 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/lottie/c;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_60

    :cond_3d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_101

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4a67ee1e

    if-eq v5, v6, :cond_d0

    const v6, -0x29cf5b9

    if-eq v5, v6, :cond_c6

    :cond_73
    :goto_73
    if-eqz v1, :cond_da

    const-string v1, "Received json response."

    invoke-static {v1}, Lcom/ksad/lottie/c;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/ksad/lottie/network/FileExtension;->Json:Lcom/ksad/lottie/network/FileExtension;

    iget-object v4, p0, Lcom/ksad/lottie/network/b;->c:Lcom/ksad/lottie/network/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/ksad/lottie/network/a;->a(Ljava/io/InputStream;Lcom/ksad/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ksad/lottie/e;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_9d
    invoke-virtual {v1}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/ksad/lottie/network/b;->c:Lcom/ksad/lottie/network/a;

    invoke-virtual {v4, v0}, Lcom/ksad/lottie/network/a;->a(Lcom/ksad/lottie/network/FileExtension;)V

    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completed fetch from network. Success: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ksad/lottie/j;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ff

    move v0, v2

    :goto_ba
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/lottie/c;->b(Ljava/lang/String;)V

    :goto_c5
    return-object v1

    :cond_c6
    const-string v5, "application/json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    move v1, v2

    goto :goto_73

    :cond_d0
    const-string v5, "application/zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    move v1, v3

    goto :goto_73

    :cond_da
    const-string v1, "Handling zip response."

    invoke-static {v1}, Lcom/ksad/lottie/c;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/ksad/lottie/network/FileExtension;->Zip:Lcom/ksad/lottie/network/FileExtension;

    iget-object v4, p0, Lcom/ksad/lottie/network/b;->c:Lcom/ksad/lottie/network/a;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/ksad/lottie/network/a;->a(Ljava/io/InputStream;Lcom/ksad/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/ksad/lottie/e;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/ksad/lottie/j;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_9d

    :cond_ff
    move v0, v3

    goto :goto_ba

    :cond_101
    new-instance v1, Lcom/ksad/lottie/j;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to fetch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c5
.end method


# virtual methods
.method public a()Lcom/ksad/lottie/j;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksad/lottie/j",
            "<",
            "Lcom/ksad/lottie/d;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ksad/lottie/network/b;->c()Lcom/ksad/lottie/d;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/ksad/lottie/j;

    invoke-direct {v0, v1}, Lcom/ksad/lottie/j;-><init>(Ljava/lang/Object;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/network/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/lottie/c;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ksad/lottie/network/b;->d()Lcom/ksad/lottie/j;

    move-result-object v0

    goto :goto_b
.end method
