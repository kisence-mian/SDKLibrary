.class final Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Lokhttp3/internal/ws/WebSocketWriter;


# direct methods
.method constructor <init>(Lokhttp3/internal/ws/WebSocketWriter;)V
    .registers 2
    .param p1, "this$0"    # Lokhttp3/internal/ws/WebSocketWriter;

    .line 215
    iput-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_1d

    .line 253
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, v1, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 255
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 256
    return-void

    .line 251
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_18

    .line 241
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v0, v1, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 243
    return-void

    .line 239
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 246
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 15
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_4a

    .line 224
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 227
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 229
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v6, 0x2000

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 231
    .local v0, "deferWrite":Z
    :goto_2c
    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget-object v2, v2, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v9

    .line 232
    .local v9, "emitCount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_49

    if-nez v0, :cond_49

    .line 233
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lokhttp3/internal/ws/WebSocketWriter;

    iget v4, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-boolean v7, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v8, 0x0

    move-wide v5, v9

    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/ws/WebSocketWriter;->writeMessageFrame(IJZZ)V

    .line 234
    iput-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 236
    :cond_49
    return-void

    .line 222
    .end local v0    # "deferWrite":Z
    .end local v9    # "emitCount":J
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
