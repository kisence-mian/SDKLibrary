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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    return-void
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

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Source;->close()V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->clear()V

    goto :goto_4
.end method

.method public exhausted()Z
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
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

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_12
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->indexOf(BJ)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    :goto_1c
    return-wide v0

    :cond_1d
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_e

    move-wide v0, v2

    goto :goto_1c
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

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->indexOf(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_26

    :goto_25
    return-wide v0

    :cond_26
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_e

    move-wide v0, v2

    goto :goto_25
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

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_12
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->indexOfElement(Lcom/sigmob/wire/okio/ByteString;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    :goto_1c
    return-wide v0

    :cond_1d
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_e

    move-wide v0, v2

    goto :goto_1c
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/RealBufferedSource$1;-><init>(Lcom/sigmob/wire/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    const/4 v0, -0x1

    :goto_22
    return v0

    :cond_23
    int-to-long v0, p3

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result v0

    goto :goto_22
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 10

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    cmp-long v2, p2, v4

    if-gez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-boolean v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v2, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_4e

    :goto_4d
    return-wide v0

    :cond_4e
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    goto :goto_4d
.end method

.method public readAll(Lcom/sigmob/wire/okio/Sink;)J
    .registers 10

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-wide v0, v2

    :cond_d
    :goto_d
    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v5, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v4}, Lcom/sigmob/wire/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_d

    add-long/2addr v0, v4

    iget-object v6, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    goto :goto_d

    :cond_2e
    iget-object v4, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v4}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_4a

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v2, v4, v5}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    :cond_4a
    return-wide v0
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

    move-result-object v0

    return-object v0
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

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    move v0, v1

    :goto_7
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x39

    if-le v2, v3, :cond_3c

    :cond_1f
    if-nez v0, :cond_25

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3c

    :cond_25
    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9] or \'-\' character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_3f
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 6

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_3} :catch_9

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->readFully(Lcom/sigmob/wire/okio/Buffer;J)V

    return-void

    :catch_9
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p1, v1}, Lcom/sigmob/wire/okio/Buffer;->writeAll(Lcom/sigmob/wire/okio/Source;)J

    throw v0
.end method

.method public readFully([B)V
    .registers 8

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->readFully([B)V

    return-void

    :catch_b
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2e

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v4, v3, Lcom/sigmob/wire/okio/Buffer;->size:J

    long-to-int v3, v4

    invoke-virtual {v2, p1, v0, v3}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2c
    add-int/2addr v0, v2

    goto :goto_e

    :cond_2e
    throw v1
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 7

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    move v0, v1

    :goto_7
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x39

    if-le v2, v3, :cond_46

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_27

    const/16 v3, 0x66

    if-le v2, v3, :cond_46

    :cond_27
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x46

    if-le v2, v3, :cond_46

    :cond_2f
    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_49
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
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    if-nez p3, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeAll(Lcom/sigmob/wire/okio/Source;)J

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .registers 5

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/wire/okio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1f

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readUtf8CodePoint()I

    move-result v0

    return v0

    :cond_1f
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_2b

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    goto :goto_18

    :cond_2b
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_18

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/okio/RealBufferedSource;->require(J)V

    goto :goto_18
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

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e

    :cond_21
    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_5b

    new-instance v1, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v1}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v6}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/wire/okio/Buffer;->copyTo(Lcom/sigmob/wire/okio/Buffer;JJ)Lcom/sigmob/wire/okio/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v3}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_45

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x1

    goto :goto_44
.end method

.method public require(J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method

.method public select(Lcom/sigmob/wire/okio/Options;)I
    .registers 10

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v1, p1}, Lcom/sigmob/wire/okio/Buffer;->selectPrefix(Lcom/sigmob/wire/okio/Options;)I

    move-result v1

    if-ne v1, v0, :cond_16

    :goto_15
    return v0

    :cond_16
    iget-object v2, p1, Lcom/sigmob/wire/okio/Options;->byteStrings:[Lcom/sigmob/wire/okio/ByteString;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v2

    int-to-long v4, v2

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v6, v3, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2f

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    move v0, v1

    goto :goto_15

    :cond_2f
    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v1, v2, v4, v5}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    goto :goto_15
.end method

.method public skip(J)V
    .registers 10

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/sigmob/wire/okio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    :cond_1e
    cmp-long v0, p1, v4

    if-lez v0, :cond_40

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_40
    return-void
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
