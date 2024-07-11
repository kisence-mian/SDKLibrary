.class public final Lcom/bytedance/sdk/a/a/l;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/bytedance/sdk/a/a/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/a/l;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;
    .registers 2

    .line 56
    new-instance v0, Lcom/bytedance/sdk/a/a/m;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/m;-><init>(Lcom/bytedance/sdk/a/a/r;)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;
    .registers 2

    .line 47
    new-instance v0, Lcom/bytedance/sdk/a/a/n;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/n;-><init>(Lcom/bytedance/sdk/a/a/s;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/r;
    .registers 3

    .line 67
    if-eqz p0, :cond_12

    .line 68
    if-eqz p1, :cond_a

    .line 70
    new-instance v0, Lcom/bytedance/sdk/a/a/l$1;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/a/a/l$1;-><init>(Lcom/bytedance/sdk/a/a/t;Ljava/io/OutputStream;)V

    return-object v0

    .line 68
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/r;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-eqz p0, :cond_21

    .line 120
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 122
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/l;->c(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/a;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/OutputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/r;

    move-result-object p0

    .line 124
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/r;

    move-result-object p0

    return-object p0

    .line 121
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/bytedance/sdk/a/a/s;
    .registers 2

    .line 131
    new-instance v0, Lcom/bytedance/sdk/a/a/t;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/t;-><init>()V

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;
    .registers 3

    .line 135
    if-eqz p0, :cond_12

    .line 136
    if-eqz p1, :cond_a

    .line 138
    new-instance v0, Lcom/bytedance/sdk/a/a/l$2;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/a/a/l$2;-><init>(Lcom/bytedance/sdk/a/a/t;Ljava/io/InputStream;)V

    return-object v0

    .line 136
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .registers 2

    .line 286
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 287
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

    .line 286
    :goto_1b
    return p0
.end method

.method public static b(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/s;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    if-eqz p0, :cond_21

    .line 245
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 246
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/l;->c(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/a;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;

    move-result-object p0

    .line 248
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/s;

    move-result-object p0

    return-object p0

    .line 245
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/a;
    .registers 2

    .line 252
    new-instance v0, Lcom/bytedance/sdk/a/a/l$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/l$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
