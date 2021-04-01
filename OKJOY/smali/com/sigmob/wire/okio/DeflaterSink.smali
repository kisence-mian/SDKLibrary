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
    iput-object p1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    iput-object p2, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/wire/okio/Sink;Ljava/util/zip/Deflater;)V
    .registers 4

    invoke-static {p1}, Lcom/sigmob/wire/okio/Okio;->buffer(Lcom/sigmob/wire/okio/Sink;)Lcom/sigmob/wire/okio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sigmob/wire/okio/DeflaterSink;-><init>(Lcom/sigmob/wire/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private deflate(Z)V
    .registers 10

    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSink;->buffer()Lcom/sigmob/wire/okio/Buffer;

    move-result-object v1

    :cond_6
    :goto_6
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/okio/Buffer;->writableSegment(I)Lcom/sigmob/wire/okio/Segment;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_45

    if-eqz p1, :cond_36

    iget-object v3, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v5, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/zip/Deflater;->deflate([BIII)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_22} :catch_6c

    move-result v0

    :goto_23
    if-lez v0, :cond_54

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget-wide v2, v1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    goto :goto_6

    :cond_36
    :try_start_36
    iget-object v3, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v5, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    goto :goto_23

    :cond_45
    iget-object v3, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v4, v2, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v5, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v6, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BII)I
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_52} :catch_6c

    move-result v0

    goto :goto_23

    :cond_54
    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v2, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v3, v2, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v0, v3, :cond_6b

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v0

    iput-object v0, v1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v2}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :cond_6b
    return-void

    :catch_6c
    move-exception v3

    goto :goto_23
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, Lcom/sigmob/wire/okio/DeflaterSink;->finishDeflate()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_27

    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_1d

    move-object v0, v1

    :cond_f
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->sink:Lcom/sigmob/wire/okio/BufferedSink;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSink;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_22

    :cond_14
    :goto_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/wire/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/sigmob/wire/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1d
    move-exception v0

    if-eqz v1, :cond_f

    move-object v0, v1

    goto :goto_f

    :catch_22
    move-exception v1

    if-nez v0, :cond_14

    move-object v0, v1

    goto :goto_14

    :catch_27
    move-exception v1

    goto :goto_9
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
    .registers 12

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_43

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lcom/sigmob/wire/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v5, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v6, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sigmob/wire/okio/DeflaterSink;->deflate(Z)V

    iget-wide v4, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v5, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v4, v5, :cond_40

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v4

    iput-object v4, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    :cond_40
    int-to-long v0, v1

    sub-long/2addr p2, v0

    goto :goto_8

    :cond_43
    return-void
.end method
