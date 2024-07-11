.class public final Lcom/sigmob/wire/okio/GzipSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lcom/sigmob/wire/okio/DeflaterSink;

.field private final sink:Lcom/sigmob/wire/okio/BufferedSink;


# direct methods
.method public constructor <init>(Lcom/sigmob/wire/okio/Sink;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_26

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/wire/okio/GzipSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    new-instance v1, Lcom/sigmob/wire/okio/DeflaterSink;

    invoke-direct {v1, p1, v0}, Lcom/sigmob/wire/okio/DeflaterSink;-><init>(Lcom/sigmob/wire/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lcom/sigmob/wire/okio/GzipSink;->deflaterSink:Lcom/sigmob/wire/okio/DeflaterSink;

    invoke-direct {p0}, Lcom/sigmob/wire/okio/GzipSink;->writeHeader()V

    return-void

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateCrc(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 8

    iget-object p1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_21

    iget v0, p1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v1, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v3, p1, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lcom/sigmob/wire/okio/Segment;->next:Lcom/sigmob/wire/okio/Segment;

    goto :goto_2

    :cond_21
    return-void
.end method

.method private writeFooter()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/sigmob/wire/okio/BufferedSink;->writeIntLe(I)Lcom/sigmob/wire/okio/BufferedSink;

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/wire/okio/BufferedSink;->writeIntLe(I)Lcom/sigmob/wire/okio/BufferedSink;

    return-void
.end method

.method private writeHeader()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSink;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeShort(I)Lcom/sigmob/wire/okio/Buffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeInt(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSink;->deflaterSink:Lcom/sigmob/wire/okio/DeflaterSink;

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/DeflaterSink;->finishDeflate()V

    invoke-direct {p0}, Lcom/sigmob/wire/okio/GzipSink;->writeFooter()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception v0

    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v1

    if-nez v0, :cond_1a

    move-object v0, v1

    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lcom/sigmob/wire/okio/GzipSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSink;->close()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v1

    if-nez v0, :cond_24

    move-object v0, v1

    :cond_24
    :goto_24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/wire/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_2c

    invoke-static {v0}, Lcom/sigmob/wire/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_2c
    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->deflaterSink:Lcom/sigmob/wire/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/DeflaterSink;->flush()V

    return-void
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSink;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_12

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/wire/okio/GzipSink;->updateCrc(Lcom/sigmob/wire/okio/Buffer;J)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/GzipSink;->deflaterSink:Lcom/sigmob/wire/okio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/DeflaterSink;->write(Lcom/sigmob/wire/okio/Buffer;J)V

    return-void

    :cond_12
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
.end method
