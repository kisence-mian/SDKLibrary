.class final Lcom/sigmob/wire/okio/RealBufferedSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/BufferedSink;


# instance fields
.field public final buffer:Lcom/sigmob/wire/okio/Buffer;

.field closed:Z

.field public final sink:Lcom/sigmob/wire/okio/Sink;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/Sink;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v0}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Lcom/sigmob/wire/okio/Buffer;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .registers 6

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v1, v1, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v3, v2, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-interface {v1, v2, v3, v4}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    goto :goto_1b

    :catchall_1a
    move-exception v0

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/Sink;->close()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v1

    if-nez v0, :cond_25

    move-object v0, v1

    :cond_25
    :goto_25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lcom/sigmob/wire/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_2d
    return-void
.end method

.method public emit()Lcom/sigmob/wire/okio/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    :cond_17
    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    iget-object v3, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    :cond_17
    return-object p0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v2, v1, Lcom/sigmob/wire/okio/Buffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Sink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    :cond_17
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Sink;->flush()V

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    new-instance v0, Lcom/sigmob/wire/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lcom/sigmob/wire/okio/RealBufferedSink$1;-><init>(Lcom/sigmob/wire/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/Sink;->timeout()Lcom/sigmob/wire/okio/Timeout;

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

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->sink:Lcom/sigmob/wire/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/sigmob/wire/okio/Source;J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 8

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    sub-long/2addr p2, v0

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    goto :goto_0

    :cond_17
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1d
    return-object p0
.end method

.method public write([B)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->write([B)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lcom/sigmob/wire/okio/Source;)J
    .registers 8

    if-eqz p1, :cond_18

    const-wide/16 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    goto :goto_4

    :cond_17
    return-wide v0

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDecimalLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeDecimalLong(J)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeInt(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeIntLe(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeIntLe(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeLong(J)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLongLe(J)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeLongLe(J)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeShort(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShortLe(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeShortLe(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 6

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/wire/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/BufferedSink;
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeUtf8CodePoint(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {p0}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
