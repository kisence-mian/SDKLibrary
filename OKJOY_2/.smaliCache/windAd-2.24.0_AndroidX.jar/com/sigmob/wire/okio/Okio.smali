.class public final Lcom/sigmob/wire/okio/Okio;
.super Ljava/lang/Object;


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/sigmob/wire/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Lcom/sigmob/wire/okio/Sink;
    .registers 3

    if-eqz p0, :cond_d

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/sigmob/wire/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Sink;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buffer(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/sigmob/wire/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/RealBufferedSink;-><init>(Lcom/sigmob/wire/okio/Sink;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buffer(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/BufferedSource;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/sigmob/wire/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/RealBufferedSource;-><init>(Lcom/sigmob/wire/okio/Source;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static sink(Ljava/io/File;)Lcom/sigmob/wire/okio/Sink;
    .registers 2

    if-eqz p0, :cond_c

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sigmob/wire/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Sink;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Sink;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/Timeout;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/sigmob/wire/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method private static sink(Ljava/io/OutputStream;Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/Sink;
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    new-instance v0, Lcom/sigmob/wire/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Lcom/sigmob/wire/okio/Okio$1;-><init>(Lcom/sigmob/wire/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/net/Socket;)Lcom/sigmob/wire/okio/Sink;
    .registers 2

    if-eqz p0, :cond_13

    invoke-static {p0}, Lcom/sigmob/wire/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/sigmob/wire/okio/AsyncTimeout;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sigmob/wire/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/Sink;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->sink(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/Sink;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/sigmob/wire/okio/Sink;
    .registers 4

    if-eqz p0, :cond_24

    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/wire/okio/Okio;->sink(Ljava/io/OutputStream;)Lcom/sigmob/wire/okio/Sink;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_19

    return-object p0

    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no support os version"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_19
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/File;)Lcom/sigmob/wire/okio/Source;
    .registers 2

    if-eqz p0, :cond_c

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sigmob/wire/okio/Okio;->source(Ljava/io/InputStream;)Lcom/sigmob/wire/okio/Source;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/InputStream;)Lcom/sigmob/wire/okio/Source;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/Timeout;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Lcom/sigmob/wire/okio/Okio;->source(Ljava/io/InputStream;Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/Source;

    move-result-object p0

    return-object p0
.end method

.method private static source(Ljava/io/InputStream;Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/Source;
    .registers 3

    if-eqz p0, :cond_12

    if-eqz p1, :cond_a

    new-instance v0, Lcom/sigmob/wire/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Lcom/sigmob/wire/okio/Okio$2;-><init>(Lcom/sigmob/wire/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/net/Socket;)Lcom/sigmob/wire/okio/Source;
    .registers 2

    if-eqz p0, :cond_13

    invoke-static {p0}, Lcom/sigmob/wire/okio/Okio;->timeout(Ljava/net/Socket;)Lcom/sigmob/wire/okio/AsyncTimeout;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sigmob/wire/okio/Okio;->source(Ljava/io/InputStream;Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/Source;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sigmob/wire/okio/AsyncTimeout;->source(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/Source;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lcom/sigmob/wire/okio/Source;
    .registers 4

    if-eqz p0, :cond_24

    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/wire/okio/Okio;->source(Ljava/io/InputStream;)Lcom/sigmob/wire/okio/Source;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_19

    return-object p0

    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no support os version"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_19
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static timeout(Ljava/net/Socket;)Lcom/sigmob/wire/okio/AsyncTimeout;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/Okio$3;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/Okio$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
