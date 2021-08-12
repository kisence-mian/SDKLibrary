.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lokio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V
    .registers 5
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_14

    .line 50
    if-eqz p2, :cond_c

    .line 51
    iput-object p1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    .line 52
    iput-object p2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    .line 53
    return-void

    .line 50
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lokio/Source;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "source"    # Lokio/Source;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 40
    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 41
    return-void
.end method

.method private releaseInflatedBytes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget v0, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_5

    return-void

    .line 114
    :cond_5
    iget-object v1, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 115
    .local v0, "toRelease":I
    iget v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 116
    iget-object v1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 117
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 125
    :cond_5
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    .line 127
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 128
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 12
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7c

    .line 58
    iget-boolean v2, p0, Lokio/InflaterSource;->closed:Z

    if-nez v2, :cond_74

    .line 59
    cmp-long v2, p2, v0

    if-nez v2, :cond_f

    return-wide v0

    .line 62
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lokio/InflaterSource;->refill()Z

    move-result v0

    .line 66
    .local v0, "sourceExhausted":Z
    const/4 v1, 0x1

    :try_start_14
    invoke-virtual {p1, v1}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 67
    .local v1, "tail":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 68
    .local v2, "toRead":I
    iget-object v3, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v4, v1, Lokio/Segment;->data:[B

    iget v5, v1, Lokio/Segment;->limit:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    .line 69
    .local v3, "bytesInflated":I
    if-lez v3, :cond_3b

    .line 70
    iget v4, v1, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v1, Lokio/Segment;->limit:I

    .line 71
    iget-wide v4, p1, Lokio/Buffer;->size:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p1, Lokio/Buffer;->size:J

    .line 72
    int-to-long v4, v3

    return-wide v4

    .line 74
    :cond_3b
    iget-object v4, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_58

    iget-object v4, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_58

    .line 83
    :cond_4c
    if-nez v0, :cond_50

    .line 86
    .end local v1    # "tail":Lokio/Segment;
    .end local v2    # "toRead":I
    .end local v3    # "bytesInflated":I
    nop

    .line 87
    .end local v0    # "sourceExhausted":Z
    goto :goto_f

    .line 83
    .restart local v0    # "sourceExhausted":Z
    .restart local v1    # "tail":Lokio/Segment;
    .restart local v2    # "toRead":I
    .restart local v3    # "bytesInflated":I
    :cond_50
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "source exhausted prematurely"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sourceExhausted":Z
    .end local p1    # "sink":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v4

    .line 75
    .restart local v0    # "sourceExhausted":Z
    .restart local p1    # "sink":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_58
    :goto_58
    invoke-direct {p0}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 76
    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    if-ne v4, v5, :cond_6a

    .line 78
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 79
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    :try_end_6a
    .catch Ljava/util/zip/DataFormatException; {:try_start_14 .. :try_end_6a} :catch_6d

    .line 81
    :cond_6a
    const-wide/16 v4, -0x1

    return-wide v4

    .line 84
    .end local v1    # "tail":Lokio/Segment;
    .end local v2    # "toRead":I
    .end local v3    # "bytesInflated":I
    :catch_6d
    move-exception v1

    .line 85
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v0    # "sourceExhausted":Z
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_7c
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

.method public final refill()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 98
    :cond_a
    invoke-direct {p0}, Lokio/InflaterSource;->releaseInflatedBytes()V

    .line 99
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_3a

    .line 102
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    .line 105
    :cond_1f
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 106
    .local v0, "head":Lokio/Segment;
    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 107
    iget-object v2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lokio/Segment;->data:[B

    iget v4, v0, Lokio/Segment;->pos:I

    iget v5, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 108
    return v1

    .line 99
    .end local v0    # "head":Lokio/Segment;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 120
    iget-object v0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
