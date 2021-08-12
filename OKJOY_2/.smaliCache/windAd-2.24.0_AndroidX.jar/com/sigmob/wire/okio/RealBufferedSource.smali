.class final Lcom/sigmob/wire/okio/RealBufferedSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/BufferedSource;


# instance fields
.field public final buffer:Lcom/sigmob/wire/okio/Buffer;

.field closed:Z

.field public final source:Lcom/sigmob/wire/okio/Source;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/Source;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Lcom/sigmob/wire/okio/Buffer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Source;->close()V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->clear()V

    return-void
.end method

.method public exhausted()Z
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(B)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->indexOf(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .registers 12

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_29

    :goto_4
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->indexOf(BJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    :cond_11
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_24

    return-wide v2

    :cond_24
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_4

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOf(Lcom/sigmob/wire/okio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->indexOf(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/sigmob/wire/okio/ByteString;J)J
    .registers 12

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_32

    :goto_4
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->indexOf(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    :cond_11
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_24

    return-wide v2

    :cond_24
    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_4

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public indexOfElement(Lcom/sigmob/wire/okio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J
    .registers 12

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_29

    :goto_4
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    return-wide v0

    :cond_11
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_24

    return-wide v2

    :cond_24
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_4

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/RealBufferedSource$1;-><init>(Lcom/sigmob/wire/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sigmob/wire/okio/RealBufferedSource;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 13

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object p3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, p3, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_24

    iget-object p3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v1, 0x2000

    invoke-interface {p3, v0, v1, v2}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_24

    const/4 p1, -0x1

    return p1

    :cond_24
    iget-object p3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, p3, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 8

    if-eqz p1, :cond_55

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3c

    iget-boolean v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    return-wide v2

    :cond_25
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide p1

    return-wide p1

    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readAll(Lcom/sigmob/wire/okio/Sink;)J
    .registers 10

    if-eqz p1, :cond_41

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v4}, Lcom/sigmob/wire/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    goto :goto_5

    :cond_26
    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v4}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_40

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    :cond_40
    return-wide v2

    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByte()B
    .registers 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeAll(Lcom/sigmob/wire/okio/Source;)J

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readByteArray(J)[B

    move-result-object p1

    return-object p1
.end method

.method public readByteString()Lcom/sigmob/wire/okio/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeAll(Lcom/sigmob/wire/okio/Source;)J

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lcom/sigmob/wire/okio/ByteString;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readByteString(J)Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public readDecimalLong()J
    .registers 7

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/sigmob/wire/okio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_26

    :cond_1f
    if-nez v1, :cond_28

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_26

    goto :goto_28

    :cond_26
    move v1, v2

    goto :goto_7

    :cond_28
    :goto_28
    if-eqz v1, :cond_2b

    goto :goto_40

    :cond_2b
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 5

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_9

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->readFully(Lcom/sigmob/wire/okio/Buffer;J)V

    return-void

    :catch_9
    move-exception p2

    iget-object p3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p1, p3}, Lcom/sigmob/wire/okio/Buffer;->writeAll(Lcom/sigmob/wire/okio/Source;)J

    throw p2
.end method

.method public readFully([B)V
    .registers 8

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->readFully([B)V

    return-void

    :catchall_b
    move-exception v0

    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v3, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    add-int/2addr v1, v2

    goto :goto_d

    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2b
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 7

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/sigmob/wire/okio/RealBufferedSource;->request(J)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1f

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_1f
    const/16 v4, 0x61

    if-lt v3, v4, :cond_27

    const/16 v4, 0x66

    if-le v3, v4, :cond_30

    :cond_27
    const/16 v4, 0x41

    if-lt v3, v4, :cond_32

    const/16 v4, 0x46

    if-le v3, v4, :cond_30

    goto :goto_32

    :cond_30
    move v1, v2

    goto :goto_7

    :cond_32
    :goto_32
    if-eqz v1, :cond_35

    goto :goto_4a

    :cond_35
    new-instance v1, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .registers 3

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    if-eqz p3, :cond_c

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeAll(Lcom/sigmob/wire/okio/Source;)J

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeAll(Lcom/sigmob/wire/okio/Source;)J

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readUtf8CodePoint()I
    .registers 4

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_19

    const-wide/16 v0, 0x2

    :goto_15
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    goto :goto_2b

    :cond_19
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_22

    const-wide/16 v0, 0x3

    goto :goto_15

    :cond_22
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2b

    const-wide/16 v0, 0x4

    goto :goto_15

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readUtf8CodePoint()I

    move-result v0

    return v0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 5

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_21

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0

    :cond_21
    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 10

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x20

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sigmob/wire/okio/Buffer;->copyTo(Lcom/sigmob/wire/okio/Buffer;JJ)Lcom/sigmob/wire/okio/Buffer;

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public request(J)Z
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_26

    :cond_a
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_24

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_24
    const/4 p1, 0x1

    return p1

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/RealBufferedSource;->request(J)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public select(Lcom/sigmob/wire/okio/Options;)I
    .registers 8

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_36

    :cond_4
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->selectPrefix(Lcom/sigmob/wire/okio/Options;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return v1

    :cond_e
    iget-object v2, p1, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v4, v4, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_25

    iget-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    return v0

    :cond_25
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    return v1

    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)V
    .registers 7

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3b

    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3a

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    goto :goto_29

    :cond_23
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_4

    :cond_3a
    return-void

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Source;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
