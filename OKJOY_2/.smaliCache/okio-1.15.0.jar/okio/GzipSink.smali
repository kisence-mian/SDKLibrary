.class public final Lokio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lokio/DeflaterSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .registers 5
    .param p1, "sink"    # Lokio/Sink;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 57
    if-eqz p1, :cond_26

    .line 58
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 59
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    .line 60
    new-instance v2, Lokio/DeflaterSink;

    invoke-direct {v2, v1, v0}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v2, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    .line 62
    invoke-direct {p0}, Lokio/GzipSink;->writeHeader()V

    .line 63
    return-void

    .line 57
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCrc(Lokio/Buffer;J)V
    .registers 9
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    .line 139
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .local v0, "head":Lokio/Segment;
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_21

    .line 140
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 141
    .local v1, "segmentLength":I
    iget-object v2, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v4, v0, Lokio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 142
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 139
    .end local v1    # "segmentLength":I
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_2

    .line 144
    .end local v0    # "head":Lokio/Segment;
    :cond_21
    return-void
.end method

.method private writeFooter()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    .line 134
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    .line 135
    return-void
.end method

.method private writeHeader()V
    .registers 3

    .line 123
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    .line 124
    .local v0, "buffer":Lokio/Buffer;
    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 125
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 127
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 128
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 129
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 130
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Lokio/GzipSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 89
    :cond_5
    const/4 v0, 0x0

    .line 91
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_6
    iget-object v1, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v1}, Lokio/DeflaterSink;->finishDeflate()V

    .line 92
    invoke-direct {p0}, Lokio/GzipSink;->writeFooter()V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    .line 95
    goto :goto_11

    .line 93
    :catchall_f
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 98
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_11
    :try_start_11
    iget-object v1, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    .line 101
    goto :goto_1b

    .line 99
    :catchall_17
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1b

    move-object v0, v1

    .line 104
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_21

    .line 107
    goto :goto_25

    .line 105
    :catchall_21
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_25

    move-object v0, v1

    .line 108
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_25
    :goto_25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/GzipSink;->closed:Z

    .line 110
    if-eqz v0, :cond_2d

    invoke-static {v0}, Lokio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 111
    :cond_2d
    return-void
.end method

.method public final deflater()Ljava/util/zip/Deflater;
    .registers 2

    .line 118
    iget-object v0, p0, Lokio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0}, Lokio/DeflaterSink;->flush()V

    .line 75
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 78
    iget-object v0, p0, Lokio/GzipSink;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 7
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_14

    .line 67
    cmp-long v0, p2, v0

    if-nez v0, :cond_b

    return-void

    .line 69
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lokio/GzipSink;->updateCrc(Lokio/Buffer;J)V

    .line 70
    iget-object v0, p0, Lokio/GzipSink;->deflaterSink:Lokio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lokio/DeflaterSink;->write(Lokio/Buffer;J)V

    .line 71
    return-void

    .line 66
    :cond_14
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
.end method
