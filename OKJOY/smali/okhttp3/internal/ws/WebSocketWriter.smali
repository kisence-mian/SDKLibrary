.class final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field activeWriter:Z

.field final buffer:Lokio/Buffer;

.field final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lokio/BufferedSink;

.field final sinkBuffer:Lokio/Buffer;

.field writerClosed:Z


# direct methods
.method constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    .registers 6
    .param p1, "isClient"    # Z
    .param p2, "sink"    # Lokio/BufferedSink;
    .param p3, "random"    # Ljava/util/Random;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 54
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 62
    if-nez p2, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1c
    if-nez p3, :cond_26

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_26
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 65
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    .line 66
    invoke-interface {p2}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    .line 67
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 70
    if-eqz p1, :cond_43

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_37
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 71
    if-eqz p1, :cond_40

    new-instance v1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_40
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 72
    return-void

    :cond_43
    move-object v0, v1

    .line 70
    goto :goto_37
.end method

.method private writeControlFrame(ILokio/ByteString;)V
    .registers 13
    .param p1, "opcode"    # I
    .param p2, "payload"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_c
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v2

    .line 116
    .local v2, "length":I
    int-to-long v6, v2

    const-wide/16 v8, 0x7d

    cmp-long v3, v6, v8

    if-lez v3, :cond_1f

    .line 117
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Payload size must be less than or equal to 125"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_1f
    or-int/lit16 v0, p1, 0x80

    .line 122
    .local v0, "b0":I
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 124
    move v1, v2

    .line 125
    .local v1, "b1":I
    iget-boolean v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v3, :cond_6b

    .line 126
    or-int/lit16 v1, v1, 0x80

    .line 127
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 129
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextBytes([B)V

    .line 130
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v3, v6}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 132
    if-lez v2, :cond_65

    .line 133
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 134
    .local v4, "payloadStart":J
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 136
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v3, v6}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 137
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v3, v4, v5}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 138
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v3, v6}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 139
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v3}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 146
    .end local v4    # "payloadStart":J
    :cond_65
    :goto_65
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v3}, Lokio/BufferedSink;->flush()V

    .line 147
    return-void

    .line 142
    :cond_6b
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 143
    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v3, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_65
.end method


# virtual methods
.method newMessageSink(IJ)Lokio/Sink;
    .registers 6
    .param p1, "formatOpcode"    # I
    .param p2, "contentLength"    # J

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_d

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_d
    iput-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 160
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 161
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-wide p2, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 162
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput-boolean v1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 163
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 165
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object v0
.end method

.method writeClose(ILokio/ByteString;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "reason"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 92
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 93
    .local v1, "payload":Lokio/ByteString;
    if-nez p1, :cond_7

    if-eqz p2, :cond_1d

    .line 94
    :cond_7
    if-eqz p1, :cond_c

    .line 95
    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 97
    :cond_c
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 98
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 99
    if-eqz p2, :cond_19

    .line 100
    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 102
    :cond_19
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 106
    .end local v0    # "buffer":Lokio/Buffer;
    :cond_1d
    const/16 v2, 0x8

    :try_start_1f
    invoke-direct {p0, v2, v1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    .line 108
    iput-boolean v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 110
    return-void

    .line 108
    :catchall_25
    move-exception v2

    iput-boolean v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw v2
.end method

.method writeMessageFrame(IJZZ)V
    .registers 12
    .param p1, "formatOpcode"    # I
    .param p2, "byteCount"    # J
    .param p4, "isFirstFrame"    # Z
    .param p5, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/io/IOException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_c
    if-eqz p4, :cond_6f

    move v0, p1

    .line 173
    .local v0, "b0":I
    :goto_f
    if-eqz p5, :cond_13

    .line 174
    or-int/lit16 v0, v0, 0x80

    .line 176
    :cond_13
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "b1":I
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v4, :cond_1f

    .line 180
    or-int/lit16 v1, v1, 0x80

    .line 182
    :cond_1f
    const-wide/16 v4, 0x7d

    cmp-long v4, p2, v4

    if-gtz v4, :cond_71

    .line 183
    long-to-int v4, p2

    or-int/2addr v1, v4

    .line 184
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 195
    :goto_2c
    iget-boolean v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v4, :cond_93

    .line 196
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 197
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v4, v5}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 199
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_69

    .line 200
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 201
    .local v2, "bufferStart":J
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v5, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 203
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v4, v5}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 204
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v4, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 205
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v4, v5}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 206
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v4}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 212
    .end local v2    # "bufferStart":J
    :cond_69
    :goto_69
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {v4}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    .line 213
    return-void

    .line 172
    .end local v0    # "b0":I
    .end local v1    # "b1":I
    :cond_6f
    const/4 v0, 0x0

    goto :goto_f

    .line 185
    .restart local v0    # "b0":I
    .restart local v1    # "b1":I
    :cond_71
    const-wide/32 v4, 0xffff

    cmp-long v4, p2, v4

    if-gtz v4, :cond_86

    .line 186
    or-int/lit8 v1, v1, 0x7e

    .line 187
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 188
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    long-to-int v5, p2

    invoke-virtual {v4, v5}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    goto :goto_2c

    .line 190
    :cond_86
    or-int/lit8 v1, v1, 0x7f

    .line 191
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 192
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v4, p2, p3}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    goto :goto_2c

    .line 209
    :cond_93
    iget-object v4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v5, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_69
.end method

.method writePing(Lokio/ByteString;)V
    .registers 3
    .param p1, "payload"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    .line 77
    return-void
.end method

.method writePong(Lokio/ByteString;)V
    .registers 3
    .param p1, "payload"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    .line 82
    return-void
.end method
