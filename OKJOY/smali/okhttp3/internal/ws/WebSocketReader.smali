.class final Lokhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field closed:Z

.field private final controlFrameBuffer:Lokio/Buffer;

.field final frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

.field frameLength:J

.field final isClient:Z

.field isControlFrame:Z

.field isFinalFrame:Z

.field private final maskCursor:Lokio/Buffer$UnsafeCursor;

.field private final maskKey:[B

.field private final messageFrameBuffer:Lokio/Buffer;

.field opcode:I

.field final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .registers 6
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lokio/BufferedSource;
    .param p3, "frameCallback"    # Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    .line 73
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    .line 79
    if-nez p2, :cond_1c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1c
    if-nez p3, :cond_26

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_26
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 82
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    .line 83
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 86
    if-eqz p1, :cond_36

    move-object v0, v1

    :goto_2f
    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 87
    if-eqz p1, :cond_3a

    :goto_33
    iput-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    .line 88
    return-void

    .line 86
    :cond_36
    const/4 v0, 0x4

    new-array v0, v0, [B

    goto :goto_2f

    .line 87
    :cond_3a
    new-instance v1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {v1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    goto :goto_33
.end method

.method private readControlFrame()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 172
    iget-wide v6, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_2d

    .line 173
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v5, v6, v8, v9}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 175
    iget-boolean v5, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v5, :cond_2d

    .line 176
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v5, v6}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 177
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v5, v10, v11}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 178
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v5, v6}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 179
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v5}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 183
    :cond_2d
    iget v5, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v5, :pswitch_data_a6

    .line 206
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown control opcode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :pswitch_51
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPing(Lokio/ByteString;)V

    .line 208
    :goto_5c
    return-void

    .line 188
    :pswitch_5d
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v6, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadPong(Lokio/ByteString;)V

    goto :goto_5c

    .line 191
    :pswitch_69
    const/16 v2, 0x3ed

    .line 192
    .local v2, "code":I
    const-string v4, ""

    .line 193
    .local v4, "reason":Ljava/lang/String;
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 194
    .local v0, "bufferSize":J
    const-wide/16 v6, 0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_81

    .line 195
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Malformed close payload length of 1."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_81
    cmp-long v5, v0, v10

    if-eqz v5, :cond_9d

    .line 197
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readShort()S

    move-result v2

    .line 198
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->controlFrameBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-static {v2}, Lokhttp3/internal/ws/WebSocketProtocol;->closeCodeExceptionMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "codeExceptionMessage":Ljava/lang/String;
    if-eqz v3, :cond_9d

    new-instance v5, Ljava/net/ProtocolException;

    invoke-direct {v5, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    .end local v3    # "codeExceptionMessage":Ljava/lang/String;
    :cond_9d
    iget-object v5, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v5, v2, v4}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadClose(ILjava/lang/String;)V

    .line 203
    const/4 v5, 0x1

    iput-boolean v5, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    goto :goto_5c

    .line 183
    :pswitch_data_a6
    .packed-switch 0x8
        :pswitch_69
        :pswitch_51
        :pswitch_5d
    .end packed-switch
.end method

.method private readHeader()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 110
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v8, :cond_e

    new-instance v8, Ljava/io/IOException;

    const-string v9, "closed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 114
    :cond_e
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    .line 115
    .local v6, "timeoutBefore":J
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 117
    :try_start_21
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_56

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 119
    .local v0, "b0":I
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v8

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v6, v7, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 122
    and-int/lit8 v8, v0, 0xf

    iput v8, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 123
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_63

    move v8, v9

    :goto_3d
    iput-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 124
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_65

    move v8, v9

    :goto_44
    iput-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 127
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v8, :cond_67

    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v8, :cond_67

    .line 128
    new-instance v8, Ljava/net/ProtocolException;

    const-string v9, "Control frames must be final."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 119
    .end local v0    # "b0":I
    :catchall_56
    move-exception v8

    iget-object v9, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v6, v7, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v8

    .restart local v0    # "b0":I
    :cond_63
    move v8, v10

    .line 123
    goto :goto_3d

    :cond_65
    move v8, v10

    .line 124
    goto :goto_44

    .line 131
    :cond_67
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_84

    move v3, v9

    .line 132
    .local v3, "reservedFlag1":Z
    :goto_6c
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_86

    move v4, v9

    .line 133
    .local v4, "reservedFlag2":Z
    :goto_71
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_88

    move v5, v9

    .line 134
    .local v5, "reservedFlag3":Z
    :goto_76
    if-nez v3, :cond_7c

    if-nez v4, :cond_7c

    if-eqz v5, :cond_8a

    .line 136
    :cond_7c
    new-instance v8, Ljava/net/ProtocolException;

    const-string v9, "Reserved flags are unsupported."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v3    # "reservedFlag1":Z
    .end local v4    # "reservedFlag2":Z
    .end local v5    # "reservedFlag3":Z
    :cond_84
    move v3, v10

    .line 131
    goto :goto_6c

    .restart local v3    # "reservedFlag1":Z
    :cond_86
    move v4, v10

    .line 132
    goto :goto_71

    .restart local v4    # "reservedFlag2":Z
    :cond_88
    move v5, v10

    .line 133
    goto :goto_76

    .line 139
    .restart local v5    # "reservedFlag3":Z
    :cond_8a
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readByte()B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 141
    .local v1, "b1":I
    and-int/lit16 v8, v1, 0x80

    if-eqz v8, :cond_a7

    move v2, v9

    .line 142
    .local v2, "isMasked":Z
    :goto_97
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v2, v8, :cond_ac

    .line 144
    new-instance v9, Ljava/net/ProtocolException;

    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v8, :cond_a9

    .line 145
    const-string v8, "Server-sent frames must not be masked."

    .line 146
    :goto_a3
    invoke-direct {v9, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v2    # "isMasked":Z
    :cond_a7
    move v2, v10

    .line 141
    goto :goto_97

    .line 146
    .restart local v2    # "isMasked":Z
    :cond_a9
    const-string v8, "Client-sent frames must be masked."

    goto :goto_a3

    .line 150
    :cond_ac
    and-int/lit8 v8, v1, 0x7f

    int-to-long v8, v8

    iput-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 151
    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x7e

    cmp-long v8, v8, v10

    if-nez v8, :cond_da

    .line 152
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readShort()S

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    iput-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 161
    :cond_c6
    iget-boolean v8, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v8, :cond_117

    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x7d

    cmp-long v8, v8, v10

    if-lez v8, :cond_117

    .line 162
    new-instance v8, Ljava/net/ProtocolException;

    const-string v9, "Control frame must be less than 125B."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 153
    :cond_da
    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x7f

    cmp-long v8, v8, v10

    if-nez v8, :cond_c6

    .line 154
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    invoke-interface {v8}, Lokio/BufferedSource;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 155
    iget-wide v8, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_c6

    .line 156
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Frame length 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 157
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 165
    :cond_117
    if-eqz v2, :cond_120

    .line 167
    iget-object v8, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v9, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v8, v9}, Lokio/BufferedSource;->readFully([B)V

    .line 169
    :cond_120
    return-void
.end method

.method private readMessage()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_c
    iget-wide v0, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_42

    .line 246
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-wide v2, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v1, v2, v3}, Lokio/BufferedSource;->readFully(Lokio/Buffer;J)V

    .line 248
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-nez v0, :cond_42

    .line 249
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0, v1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 250
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v2

    iget-wide v4, p0, Lokhttp3/internal/ws/WebSocketReader;->frameLength:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 251
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-static {v0, v1}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 252
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketReader;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->close()V

    .line 256
    :cond_42
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-eqz v0, :cond_47

    .line 263
    return-void

    .line 258
    :cond_47
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    .line 259
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected continuation opcode. Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMessageFrame()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 211
    iget v0, p0, Lokhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 212
    .local v0, "opcode":I
    if-eq v0, v2, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    .line 213
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_25
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessage()V

    .line 218
    if-ne v0, v2, :cond_36

    .line 219
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Ljava/lang/String;)V

    .line 223
    :goto_35
    return-void

    .line 221
    :cond_36
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketReader;->frameCallback:Lokhttp3/internal/ws/WebSocketReader$FrameCallback;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketReader;->messageFrameBuffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lokhttp3/internal/ws/WebSocketReader$FrameCallback;->onReadMessage(Lokio/ByteString;)V

    goto :goto_35
.end method

.method private readUntilNonControlFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_b

    .line 228
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 229
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_c

    .line 234
    :cond_b
    return-void

    .line 232
    :cond_c
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method


# virtual methods
.method processNextFrame()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 102
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_b

    .line 103
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    .line 107
    :goto_a
    return-void

    .line 105
    :cond_b
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_a
.end method
