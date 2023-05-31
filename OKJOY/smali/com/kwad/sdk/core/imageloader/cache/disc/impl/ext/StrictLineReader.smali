.class Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    sget-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iput v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    return-void

    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 8

    const/16 v6, 0xa

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v3

    :try_start_5
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    if-eqz v0, :cond_93

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->fillBuf()V

    :cond_12
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    :goto_14
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    if-eq v2, v0, :cond_4a

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_47

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    if-eq v2, v0, :cond_45

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    add-int/lit8 v0, v2, -0x1

    aget-byte v1, v1, v0

    const/16 v4, 0xd

    if-ne v1, v4, :cond_45

    move v1, v0

    :goto_2d
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    iget v5, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    iget v6, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    monitor-exit v3

    :goto_44
    return-object v0

    :cond_45
    move v1, v2

    goto :goto_2d

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_4a
    new-instance v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader$1;

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader$1;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;I)V

    :cond_56
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    iget v5, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->fillBuf()V

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    :goto_6a
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->end:I

    if-eq v0, v2, :cond_56

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_90

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    if-eq v0, v2, :cond_83

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->buf:[B

    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    iget v5, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_83
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->pos:I

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader$1;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    goto :goto_44

    :catchall_8d
    move-exception v0

    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_5 .. :try_end_8f} :catchall_8d

    throw v0

    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    :cond_93
    :try_start_93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_8d
.end method
