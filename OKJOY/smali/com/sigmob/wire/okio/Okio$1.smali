.class final Lcom/sigmob/wire/okio/Okio$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/wire/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/okio/Okio;->sink(Ljava/io/OutputStream;Lcom/sigmob/wire/okio/Timeout;)Lcom/sigmob/wire/okio/Sink;
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lcom/sigmob/wire/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/Timeout;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/wire/okio/Okio$1;->val$timeout:Lcom/sigmob/wire/okio/Timeout;

    iput-object p2, p0, Lcom/sigmob/wire/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()Lcom/sigmob/wire/okio/Timeout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/Okio$1;->val$timeout:Lcom/sigmob/wire/okio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/wire/okio/Okio$1;->val$out:Ljava/io/OutputStream;

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

    :cond_8
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/wire/okio/Okio$1;->val$timeout:Lcom/sigmob/wire/okio/Timeout;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Timeout;->throwIfReached()V

    iget-object v0, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lcom/sigmob/wire/okio/Okio$1;->val$out:Ljava/io/OutputStream;

    iget-object v5, v0, Lcom/sigmob/wire/okio/Segment;->data:[B

    iget v6, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-wide v4, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/sigmob/wire/okio/Buffer;->size:J

    iget v1, v0, Lcom/sigmob/wire/okio/Segment;->pos:I

    iget v4, v0, Lcom/sigmob/wire/okio/Segment;->limit:I

    if-ne v1, v4, :cond_8

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Segment;->pop()Lcom/sigmob/wire/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Lcom/sigmob/wire/okio/Buffer;->head:Lcom/sigmob/wire/okio/Segment;

    invoke-static {v0}, Lcom/sigmob/wire/okio/SegmentPool;->recycle(Lcom/sigmob/wire/okio/Segment;)V

    goto :goto_8

    :cond_44
    return-void
.end method
