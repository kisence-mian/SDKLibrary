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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    iput-object p2, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/wire/okio/Source;Ljava/util/zip/Inflater;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Source;)Lcom/sigmob/wire/okio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sigmob/wire/okio/InflaterSource;-><init>(Lcom/sigmob/wire/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    return-void
.end method

.method private releaseInflatedBytes()V
    .registers 5

    iget v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

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

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->closed:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->closed:Z

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->close()V

    goto :goto_4
.end method

.method public read(Lcom/sigmob/wire/okio/Buffer;J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1f

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

    :cond_1f
    iget-boolean v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->closed:Z

    if-eqz v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    cmp-long v2, p2, v0

    if-nez v2, :cond_30

    :goto_2f
    return-wide v0

    :cond_30
    invoke-virtual {p0}, Lcom/sigmob/wire/okio/InflaterSource;->refill()Z

    move-result v0

    const/4 v1, 0x1

    :try_start_35
    invoke-virtual {p1, v1}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v4, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v5, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_56

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v0, v2

    goto :goto_2f

    :cond_56
    iget-object v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_66
    invoke-direct {p0}, Lcom/sigmob/wire/okio/InflaterSource;->releaseInflatedBytes()V

    iget v0, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v0, v2, :cond_78

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iput-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v1}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :cond_78
    const-wide/16 v0, -0x1

    goto :goto_2f

    :cond_7b
    if-eqz v0, :cond_30

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catch Ljava/util/zip/DataFormatException; {:try_start_35 .. :try_end_85} :catch_85

    :catch_85
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public refill()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/sigmob/wire/okio/InflaterSource;->releaseInflatedBytes()V

    iget-object v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    goto :goto_9

    :cond_27
    iget-object v1, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v2, p0, Lcom/sigmob/wire/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, p0, Lcom/sigmob/wire/okio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v1, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_9
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/InflaterSource;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
