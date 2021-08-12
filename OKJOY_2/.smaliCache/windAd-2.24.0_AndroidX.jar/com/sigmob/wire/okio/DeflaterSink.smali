.class public final Lcom/sigmob/wire/okio/DeflaterSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lcom/sigmob/wire/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    iput-object p2, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

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

.method public constructor <init>(Lcom/sigmob/wire/okio/Sink;Ljava/util/zip/Deflater;)V
    .registers 3

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/wire/okio/DeflaterSink;-><init>(Lcom/sigmob/wire/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private deflate(Z)V
    .registers 10

    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSink;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v0

    :cond_6
    :goto_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_33

    if-eqz p1, :cond_24

    iget-object v3, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v5, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_43

    :cond_24
    iget-object v3, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v5, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    goto :goto_43

    :cond_33
    iget-object v3, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v1, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v5, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_42

    goto :goto_43

    :catchall_42
    move-exception v3

    :goto_43
    if-lez v2, :cond_56

    iget v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v3, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    goto :goto_6

    :cond_56
    iget-object v2, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_6

    iget p1, v1, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v1, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne p1, v2, :cond_6d

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object p1

    iput-object p1, v0, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v1}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :cond_6d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Lcom/sigmob/wire/okio/DeflaterSink;->finishDeflate()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v1

    if-nez v0, :cond_15

    move-object v0, v1

    :cond_15
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSink;->close()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v1

    if-nez v0, :cond_1f

    move-object v0, v1

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_27

    invoke-static {v0}, Lcom/sigmob/wire/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_27
    return-void
.end method

.method finishDeflate()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/DeflaterSink;->deflate(Z)V

    return-void
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sigmob/wire/okio/DeflaterSink;->deflate(Z)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSink;->timeout()Lcom/sigmob/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sigmob/wire/okio/Buffer;J)V
    .registers 10

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_44

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sigmob/wire/okio/DeflaterSink;->deflate(Z)V

    iget-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v2, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v1, v2, :cond_42

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :cond_42
    sub-long/2addr p2, v4

    goto :goto_8

    :cond_44
    return-void
.end method
