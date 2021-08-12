.class Lcom/sigmob/wire/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/wire/okio/RealBufferedSink;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/okio/RealBufferedSink;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/RealBufferedSink;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/RealBufferedSink;->flush()V

    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/okio/Buffer;->writeByte(I)Lcom/sigmob/wire/okio/Buffer;

    iget-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    return-void

    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    iget-boolean v0, v0, Lcom/sigmob/wire/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/sigmob/wire/okio/RealBufferedSink;->buffer:Lcom/sigmob/wire/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/wire/okio/Buffer;->write([BII)Lcom/sigmob/wire/okio/Buffer;

    iget-object p1, p0, Lcom/sigmob/wire/okio/RealBufferedSink$1;->this$0:Lcom/sigmob/wire/okio/RealBufferedSink;

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/RealBufferedSink;->emitCompleteSegments()Lcom/sigmob/wire/okio/BufferedSink;

    return-void

    :cond_13
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
