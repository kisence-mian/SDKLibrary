.class public final Lcom/bytedance/sdk/a/a/l;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
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

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/d;
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/bytedance/sdk/a/a/m;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/m;-><init>(Lcom/bytedance/sdk/a/a/r;)V

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/bytedance/sdk/a/a/n;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/n;-><init>(Lcom/bytedance/sdk/a/a/s;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/r;
    .registers 4

    .prologue
    .line 67
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_14
    new-instance v0, Lcom/bytedance/sdk/a/a/l$1;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/a/a/l$1;-><init>(Lcom/bytedance/sdk/a/a/t;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_a
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_18

    .line 121
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s output stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_18
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/l;->c(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/a;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/OutputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/r;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/bytedance/sdk/a/a/s;
    .registers 2

    .prologue
    .line 131
    new-instance v0, Lcom/bytedance/sdk/a/a/t;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/t;-><init>()V

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;
    .registers 4

    .prologue
    .line 135
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_14
    new-instance v0, Lcom/bytedance/sdk/a/a/l$2;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/a/a/l$2;-><init>(Lcom/bytedance/sdk/a/a/t;Ljava/io/InputStream;)V

    return-object v0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .registers 3

    .prologue
    .line 286
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 287
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getsockname failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 286
    :goto_19
    return v0

    .line 287
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static b(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/s;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_a
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket\'s input stream == null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_18
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/l;->c(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/a;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/Socket;)Lcom/bytedance/sdk/a/a/a;
    .registers 2

    .prologue
    .line 252
    new-instance v0, Lcom/bytedance/sdk/a/a/l$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/a/l$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
