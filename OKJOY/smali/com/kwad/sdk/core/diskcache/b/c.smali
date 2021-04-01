.class Lcom/kwad/sdk/core/diskcache/b/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/diskcache/b/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static a(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0    # Lcom/kwad/sdk/core/diskcache/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kwad/sdk/core/diskcache/b/c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/diskcache/b/c$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/kwad/sdk/core/diskcache/b/c$a;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/diskcache/b/c;->b(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method static b(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0    # Lcom/kwad/sdk/core/diskcache/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a(I)Ljava/io/OutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_3c
    .catchall {:try_start_2 .. :try_end_c} :catchall_34

    move-result-object v0

    :try_start_d
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/diskcache/b/c;->b(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Lcom/kwad/sdk/core/diskcache/a/a$c;->b()V

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->b()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_22
    .catchall {:try_start_d .. :try_end_1a} :catchall_41

    :cond_1a
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    :goto_1d
    return v1

    :cond_1e
    :try_start_1e
    invoke-virtual {v2}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_41

    goto :goto_17

    :catch_22
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_26
    :try_start_26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "FileHelper"

    const-string v4, "downLoadFileSync file crash"

    invoke-static {v3, v4, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_46

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    goto :goto_1d

    :catchall_34
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_38
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_3c
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_26

    :catchall_41
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_38

    :catchall_46
    move-exception v0

    move-object v1, v2

    goto :goto_38
.end method

.method private static b(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_8d
    .catchall {:try_start_3 .. :try_end_e} :catchall_7e

    :try_start_e
    const-string v3, "Accept-Language"

    const-string v5, "zh-CN"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0x1d4c0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v3, "Connection"

    const-string v5, "keep-alive"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3f} :catch_99
    .catchall {:try_start_e .. :try_end_3f} :catchall_9e

    :try_start_3f
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_a0
    .catchall {:try_start_3f .. :try_end_44} :catchall_a2

    const/16 v1, 0x400

    :try_start_46
    new-array v1, v1, [B

    :goto_48
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6e

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_54
    .catchall {:try_start_46 .. :try_end_53} :catchall_94

    goto :goto_48

    :catch_54
    move-exception v1

    move-object v2, v1

    move-object v1, v5

    :goto_57
    :try_start_57
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "FileHelper"

    const-string v6, "downloadUrlToStream file crash"

    invoke-static {v5, v6, v2}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_97

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6c
    move v0, v4

    :goto_6d
    return v0

    :cond_6e
    :try_start_6e
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_54
    .catchall {:try_start_6e .. :try_end_71} :catchall_94

    invoke-static {v5}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7c
    move v0, v2

    goto :goto_6d

    :catchall_7e
    move-exception v2

    move-object v0, v1

    :goto_80
    move-object v3, v1

    :goto_81
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8c
    throw v2

    :catch_8d
    move-exception v0

    move-object v2, v1

    :goto_8f
    move-object v3, v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    goto :goto_57

    :catchall_94
    move-exception v2

    move-object v1, v5

    goto :goto_81

    :catchall_97
    move-exception v2

    goto :goto_81

    :catch_99
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_8f

    :catchall_9e
    move-exception v2

    goto :goto_80

    :catch_a0
    move-exception v2

    goto :goto_57

    :catchall_a2
    move-exception v2

    goto :goto_81
.end method
