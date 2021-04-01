.class Lcom/sigmob/wire/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/wire/okio/RealBufferedSource;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/RealBufferedSource;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/RealBufferedSource;->close()V

    return-void
.end method

.method public read()I
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    const/4 v0, -0x1

    :goto_2f
    return v0

    :cond_30
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_2f
.end method

.method public read([BII)I
    .registers 10

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sigmob/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/sigmob/wire/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->source:Lcom/sigmob/wire/okio/Source;

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/wire/okio/Source;->read(Lcom/sigmob/wire/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    const/4 v0, -0x1

    :goto_36
    return v0

    :cond_37
    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSource;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->read([BII)I

    move-result v0

    goto :goto_36
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSource$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
