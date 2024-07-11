.class public final Lcom/anythink/core/common/e/a/c;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/anythink/core/common/e/a/c;


# instance fields
.field a:[B

.field b:[B

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/net/Socket;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/e/a/c;->c:I

    .line 29
    const/4 v0, 0x7

    iput v0, p0, Lcom/anythink/core/common/e/a/c;->d:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/common/e/a/c;->e:I

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/e/a/c;->f:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anythink/core/common/e/a/c;->a:[B

    .line 47
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/anythink/core/common/e/a/c;->b:[B

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/e/a/c;)I
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/anythink/core/common/e/a/c;->e()I

    move-result p0

    return p0
.end method

.method protected static declared-synchronized a()Lcom/anythink/core/common/e/a/c;
    .registers 2

    const-class v0, Lcom/anythink/core/common/e/a/c;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/e/a/c;->g:Lcom/anythink/core/common/e/a/c;

    if-nez v1, :cond_e

    .line 54
    new-instance v1, Lcom/anythink/core/common/e/a/c;

    invoke-direct {v1}, Lcom/anythink/core/common/e/a/c;-><init>()V

    sput-object v1, Lcom/anythink/core/common/e/a/c;->g:Lcom/anythink/core/common/e/a/c;

    .line 56
    :cond_e
    sget-object v1, Lcom/anythink/core/common/e/a/c;->g:Lcom/anythink/core/common/e/a/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/e/a/b;)V
    .registers 9

    monitor-enter p0

    .line 184
    nop

    .line 1099
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    .line 184
    :goto_19
    if-nez v0, :cond_6d

    .line 188
    nop

    .line 2060
    monitor-enter p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_cc

    .line 2061
    :try_start_1d
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    if-nez v0, :cond_2e

    .line 2062
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    .line 2063
    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2066
    :cond_2e
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 2067
    if-eqz v0, :cond_68

    .line 2071
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anythink/core/common/e/a/c;->h:Ljava/lang/String;

    .line 2072
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->f()I

    move-result v3

    iput v3, p0, Lcom/anythink/core/common/e/a/c;->i:I

    .line 2073
    iget-object v3, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->f()I

    move-result v0

    invoke-direct {v4, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x7530

    invoke-virtual {v3, v4, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 2076
    :cond_68
    monitor-exit p0

    goto :goto_6d

    :catchall_6a
    move-exception p1

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_1d .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw p1

    .line 197
    :cond_6d
    :goto_6d
    invoke-virtual {p1}, Lcom/anythink/core/common/e/a/b;->d()[B

    move-result-object v0

    .line 198
    if-eqz v0, :cond_ca

    .line 199
    array-length v3, v0

    .line 204
    array-length v4, v0
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_cc

    if-nez v4, :cond_79

    .line 205
    monitor-exit p0

    return-void

    .line 208
    :cond_79
    add-int/lit8 v4, v3, 0x7

    .line 209
    :try_start_7b
    iget-object v5, p0, Lcom/anythink/core/common/e/a/c;->a:[B

    if-eqz v5, :cond_82

    array-length v5, v5

    if-ge v5, v4, :cond_86

    .line 210
    :cond_82
    new-array v5, v4, [B

    iput-object v5, p0, Lcom/anythink/core/common/e/a/c;->a:[B

    .line 215
    :cond_86
    iget-object v5, p0, Lcom/anythink/core/common/e/a/c;->a:[B

    aput-byte v2, v5, v2

    .line 216
    const/4 v6, 0x3

    aput-byte v6, v5, v1

    .line 217
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/anythink/core/common/e/a/b;->b()I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v5, v1

    .line 218
    iget-object p1, p0, Lcom/anythink/core/common/e/a/c;->a:[B

    ushr-int/lit8 v1, v3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v6

    .line 219
    const/4 v1, 0x4

    ushr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 220
    const/4 v1, 0x5

    ushr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 221
    const/4 v1, 0x6

    ushr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 224
    array-length v1, v0

    const/4 v3, 0x7

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget-object p1, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->a:[B

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 235
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_c8
    .catchall {:try_start_7b .. :try_end_c8} :catchall_cc

    .line 236
    monitor-exit p0

    return-void

    .line 201
    :cond_ca
    monitor-exit p0

    return-void

    .line 183
    :catchall_cc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/anythink/core/common/e/a/b;Lcom/anythink/core/common/e/a/b$a;)V
    .registers 4

    .line 104
    new-instance v0, Lcom/anythink/core/common/e/a/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/core/common/e/a/c$1;-><init>(Lcom/anythink/core/common/e/a/c;Lcom/anythink/core/common/e/a/b;Lcom/anythink/core/common/e/a/b$a;)V

    .line 180
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/anythink/core/common/g/a/a;->a(Lcom/anythink/core/common/g/a/b;I)V

    .line 181
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/e/a/c;Lcom/anythink/core/common/e/a/b;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/anythink/core/common/e/a/c;->a(Lcom/anythink/core/common/e/a/b;)V

    return-void
.end method

.method private b()V
    .registers 5

    .line 60
    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    if-nez v0, :cond_12

    .line 62
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    .line 63
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 66
    :cond_12
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_4c

    .line 71
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/common/e/a/c;->h:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->f()I

    move-result v1

    iput v1, p0, Lcom/anythink/core/common/e/a/c;->i:I

    .line 73
    iget-object v1, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->f()I

    move-result v0

    invoke-direct {v2, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x7530

    invoke-virtual {v1, v2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 76
    :cond_4c
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method static synthetic b(Lcom/anythink/core/common/e/a/c;)V
    .registers 2

    .line 27
    nop

    .line 2081
    monitor-enter p0

    .line 2083
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 2084
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 2085
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_f
    .catchall {:try_start_2 .. :try_end_c} :catchall_d

    .line 2091
    :cond_c
    goto :goto_10

    .line 2095
    :catchall_d
    move-exception v0

    goto :goto_12

    .line 2087
    :catch_f
    move-exception v0

    .line 2095
    :goto_10
    :try_start_10
    monitor-exit p0

    return-void

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    throw v0
.end method

.method static synthetic c(Lcom/anythink/core/common/e/a/c;)Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/core/common/e/a/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .registers 2

    .line 81
    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 84
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    .line 91
    :cond_b
    goto :goto_f

    .line 95
    :catchall_c
    move-exception v0

    goto :goto_11

    .line 87
    :catch_e
    move-exception v0

    .line 95
    :goto_f
    :try_start_f
    monitor-exit p0

    return-void

    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c

    throw v0
.end method

.method static synthetic d(Lcom/anythink/core/common/e/a/c;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/anythink/core/common/e/a/c;->i:I

    return p0
.end method

.method private d()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized e()I
    .registers 5

    monitor-enter p0

    .line 239
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/anythink/core/common/e/a/c;->b:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 243
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 247
    iget-object v0, p0, Lcom/anythink/core/common/e/a/c;->b:[B

    aget-byte v1, v0, v3

    .line 248
    aput-byte v3, v0, v3
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_22

    .line 249
    monitor-exit p0

    return v1

    .line 244
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket.InputStream read length = -1!"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_22

    .line 238
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
