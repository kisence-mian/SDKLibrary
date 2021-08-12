.class public Lcom/kwad/sdk/core/diskcache/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/diskcache/b/c$a;
    }
.end annotation


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

    sget-object v0, Lcom/kwad/sdk/core/diskcache/b/c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kwad/sdk/core/diskcache/b/c$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/kwad/sdk/core/diskcache/b/c$1;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_38
    .catchall {:try_start_1 .. :try_end_b} :catchall_35

    :try_start_b
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_31
    .catchall {:try_start_b .. :try_end_15} :catchall_2d

    const/16 p1, 0x400

    :try_start_17
    new-array p1, p1, [B

    :goto_19
    invoke-virtual {v1, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_25

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_2b
    .catchall {:try_start_17 .. :try_end_24} :catchall_29

    goto :goto_19

    :cond_25
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_40

    :catchall_29
    move-exception p1

    goto :goto_2f

    :catch_2b
    move-exception p1

    goto :goto_33

    :catchall_2d
    move-exception p1

    move-object p0, v0

    :goto_2f
    move-object v0, v1

    goto :goto_45

    :catch_31
    move-exception p1

    move-object p0, v0

    :goto_33
    move-object v0, v1

    goto :goto_3a

    :catchall_35
    move-exception p1

    move-object p0, v0

    goto :goto_45

    :catch_38
    move-exception p1

    move-object p0, v0

    :goto_3a
    :try_start_3a
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_44

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_40
    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_44
    move-exception p1

    :goto_45
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method

.method static a(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/lang/String;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object p2

    if-eqz p2, :cond_1d

    invoke-virtual {p2, v0}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a(I)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/kwad/sdk/core/diskcache/b/c;->b(Ljava/lang/String;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p2}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a()V

    const/4 v0, 0x1

    goto :goto_1a

    :cond_17
    invoke-virtual {p2}, Lcom/kwad/sdk/core/diskcache/a/a$a;->b()V

    :goto_1a
    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->b()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_23
    .catchall {:try_start_2 .. :try_end_1d} :catchall_21

    :cond_1d
    :goto_1d
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    goto :goto_35

    :catchall_21
    move-exception p0

    goto :goto_36

    :catch_23
    move-exception p0

    :try_start_24
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const-string p1, "FileHelper"

    const-string p2, "downLoadFileSync file crash"

    invoke-static {p1, p2, p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/kwad/sdk/core/diskcache/b/c$a;->a:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_21

    goto :goto_1d

    :goto_35
    return v0

    :goto_36
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_1b
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    :try_start_6
    new-instance p0, Lcom/kwad/sdk/core/diskcache/b/c$a;

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/b/c$a;-><init>()V

    invoke-static {p1, v1, p0}, Lcom/kwad/sdk/core/diskcache/b/c;->b(Ljava/lang/String;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z

    move-result p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_16
    .catchall {:try_start_6 .. :try_end_f} :catchall_13

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    goto :goto_2a

    :catchall_13
    move-exception p0

    move-object v0, v1

    goto :goto_2b

    :catch_16
    move-exception p0

    move-object v0, v1

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_2b

    :catch_1b
    move-exception p0

    :goto_1c
    :try_start_1c
    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const-string p1, "FileHelper"

    const-string v1, "downLoadFileSync file crash"

    invoke-static {p1, v1, p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_19

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    :goto_2a
    return p0

    :goto_2b
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/kwad/sdk/core/diskcache/b/c;->b(Ljava/lang/String;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/io/OutputStream;Lcom/kwad/sdk/core/diskcache/b/c$a;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_7e
    .catchall {:try_start_2 .. :try_end_d} :catchall_7a

    :try_start_d
    invoke-static {p0}, Lcom/kwad/sdk/core/network/l;->a(Ljava/net/URLConnection;)V

    const-string v2, "Accept-Language"

    const-string v3, "zh-CN"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0x1d4c0

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v3, "Connection"

    const-string v4, "keep-alive"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v4, "UTF-8"

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    invoke-static {}, Lcom/kwad/sdk/core/network/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_77
    .catchall {:try_start_d .. :try_end_49} :catchall_74

    :try_start_49
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_72
    .catchall {:try_start_49 .. :try_end_4e} :catchall_9d

    const/16 p1, 0x400

    :try_start_50
    new-array p1, p1, [B

    :goto_52
    invoke-virtual {v3, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_5d

    invoke-virtual {v4, p1, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_52

    :cond_5d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_60} :catch_6f
    .catchall {:try_start_50 .. :try_end_60} :catchall_6c

    invoke-static {v4}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_6b

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6b
    return v2

    :catchall_6c
    move-exception p1

    move-object v1, v4

    goto :goto_9e

    :catch_6f
    move-exception p1

    move-object v1, v4

    goto :goto_81

    :catch_72
    move-exception p1

    goto :goto_81

    :catchall_74
    move-exception p1

    move-object v3, v1

    goto :goto_9e

    :catch_77
    move-exception p1

    move-object v3, v1

    goto :goto_81

    :catchall_7a
    move-exception p1

    move-object p0, v1

    move-object v3, p0

    goto :goto_9e

    :catch_7e
    move-exception p1

    move-object p0, v1

    move-object v3, p0

    :goto_81
    :try_start_81
    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    const-string v2, "FileHelper"

    const-string v4, "downloadUrlToStream file crash"

    invoke-static {v2, v4, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/kwad/sdk/core/diskcache/b/c$a;->a:Ljava/lang/String;
    :try_end_91
    .catchall {:try_start_81 .. :try_end_91} :catchall_9d

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_9c

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9c
    return v0

    :catchall_9d
    move-exception p1

    :goto_9e
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_a9

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a9
    throw p1
.end method
