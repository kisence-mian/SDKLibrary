.class Lcom/kwad/sdk/core/diskcache/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    sget-object v0, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/kwad/sdk/core/diskcache/a/b;->b:Ljava/nio/charset/Charset;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/kwad/sdk/core/diskcache/a/b;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/b;)Ljava/nio/charset/Charset;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/diskcache/a/b;->b:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/b;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iput v3, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    iput v0, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    return-void

    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/b;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    if-eqz v1, :cond_83

    iget v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    if-lt v1, v2, :cond_10

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/b;->c()V

    :cond_10
    iget v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    :goto_12
    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_45

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    aget-byte v4, v2, v1

    if-ne v4, v3, :cond_42

    iget v3, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    if-eq v1, v3, :cond_2b

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v3, v1

    :goto_2c
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    iget v5, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    sub-int/2addr v3, v5

    iget-object v6, p0, Lcom/kwad/sdk/core/diskcache/a/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    monitor-exit v0

    return-object v2

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_45
    new-instance v1, Lcom/kwad/sdk/core/diskcache/a/b$1;

    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    iget v4, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/kwad/sdk/core/diskcache/a/b$1;-><init>(Lcom/kwad/sdk/core/diskcache/a/b;I)V

    :cond_51
    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    iget v4, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    iget v5, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/b;->c()V

    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    :goto_63
    iget v4, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    if-eq v2, v4, :cond_51

    iget-object v4, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    aget-byte v5, v4, v2

    if-ne v5, v3, :cond_80

    iget v3, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    if-eq v2, v3, :cond_76

    sub-int v5, v2, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_76
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kwad/sdk/core/diskcache/a/b;->d:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_83
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/b;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/b;->a:Ljava/io/InputStream;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->c:[B

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/b;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
