.class public final Lcom/sigmob/wire/okio/InflaterSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lcom/sigmob/wire/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/BufferedSource;Ljava/util/zip/Inflater;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    iput-object p2, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/sigmob/wire/okio/Source;Ljava/util/zip/Inflater;)V
    .registers 3

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/BufferedSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/wire/okio/InflaterSource;-><init>(Lcom/sigmob/wire/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private releaseInflatedBytes()V
    .registers 5

    iget v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->closed:Z

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->close()V

    return-void
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_72

    iget-boolean p2, p0, Lcom/sigmob/wire/okio/InflaterSource;->closed:Z

    if-nez p2, :cond_6a

    if-nez v2, :cond_d

    return-wide v0

    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/sigmob/wire/okio/InflaterSource;->refill()Z

    move-result p2

    const/4 p3, 0x1

    :try_start_12
    invoke-virtual {p1, p3}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object p3

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v1, p3, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v2, p3, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, p3, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-lez v0, :cond_32

    iget p2, p3, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr p2, v0

    iput p2, p3, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide p2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p2, v0

    iput-wide p2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    return-wide v0

    :cond_32
    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_4e

    :cond_43
    if-nez p2, :cond_46

    goto :goto_d

    :cond_46
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "source exhausted prematurely"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    :goto_4e
    invoke-direct {p0}, Lcom/sigmob/wire/okio/InflaterSource;->releaseInflatedBytes()V

    iget p2, p3, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v0, p3, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne p2, v0, :cond_60

    invoke-virtual {p3}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object p2

    iput-object p2, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {p3}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V
    :try_end_60
    .catch Ljava/util/zip/DataFormatException; {:try_start_12 .. :try_end_60} :catch_63

    :cond_60
    const-wide/16 p1, -0x1

    return-wide p1

    :catch_63
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
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

.method public refill()Z
    .registers 6

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/sigmob/wire/okio/InflaterSource;->releaseInflatedBytes()V

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v0, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    return v1

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
