.class public Lcom/tds/common/websocket/conn/SSLSocketChannel;
.super Ljava/lang/Object;
.source "SSLSocketChannel.java"

# interfaces
.implements Lcom/tds/common/websocket/conn/WrappedByteChannel;
.implements Ljava/nio/channels/ByteChannel;
.implements Lcom/tds/common/websocket/interfaces/ISSLChannel;


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private myAppData:Ljava/nio/ByteBuffer;

.field private myNetData:Ljava/nio/ByteBuffer;

.field private peerAppData:Ljava/nio/ByteBuffer;

.field private peerNetData:Ljava/nio/ByteBuffer;

.field private final socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V
    .registers 7
    .param p1, "inputSocketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "inputEngine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "inputExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-eqz p1, :cond_4d

    if-eqz p2, :cond_4d

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    if-eq v0, p3, :cond_4d

    .line 131
    iput-object p1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 132
    iput-object p2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    .line 133
    iput-object p3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    .line 134
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 137
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->doHandshake()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 138
    if-eqz p4, :cond_4c

    .line 139
    invoke-virtual {p4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p4, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_4c

    .line 143
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 146
    goto :goto_4c

    .line 144
    :catch_46
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Exception during the closing of the channel"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4c
    :goto_4c
    return-void

    .line 128
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 467
    :try_start_5
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->doHandshake()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    .line 470
    goto :goto_a

    .line 468
    :catch_9
    move-exception v0

    .line 471
    :goto_a
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 472
    return-void
.end method

.method private doHandshake()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 268
    .local v0, "appBufferSize":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    .line 269
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 270
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 271
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 273
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 274
    .local v1, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    const/4 v2, 0x0

    .line 275
    .local v2, "handshakeComplete":Z
    :cond_27
    :goto_27
    const/4 v3, 0x1

    if-nez v2, :cond_1c0

    .line 276
    sget-object v4, Lcom/tds/common/websocket/conn/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "Invalid SSL status: "

    packed-switch v4, :pswitch_data_1c2

    .line 385
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    :pswitch_4e
    goto :goto_27

    .line 376
    :goto_4f
    :pswitch_4f
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v3

    move-object v4, v3

    .local v4, "task":Ljava/lang/Runnable;
    if-eqz v3, :cond_5e

    .line 377
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4f

    .line 379
    :cond_5e
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 380
    goto :goto_27

    .line 333
    .end local v4    # "task":Ljava/lang/Runnable;
    :pswitch_65
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 335
    :try_start_6a
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v6}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 336
    .local v3, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4
    :try_end_78
    .catch Ljavax/net/ssl/SSLException; {:try_start_6a .. :try_end_78} :catch_f0

    move-object v1, v4

    .line 341
    nop

    .line 342
    sget-object v4, Lcom/tds/common/websocket/conn/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_1d0

    .line 371
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 360
    :pswitch_a4
    :try_start_a4
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 361
    :goto_a9
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 362
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_a9

    .line 365
    :cond_b9
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_be} :catch_c0

    .line 368
    goto/16 :goto_27

    .line 366
    :catch_c0
    move-exception v4

    .line 367
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 369
    .end local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_27

    .line 353
    :pswitch_c9
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    .line 354
    goto/16 :goto_27

    .line 356
    :pswitch_d3
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "Buffer underflow occurred after a wrap. I don\'t think we should ever get here."

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    :pswitch_db
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 345
    :goto_e0
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 346
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_e0

    .line 337
    .end local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_f0
    move-exception v3

    .line 338
    .local v3, "sslException":Ljavax/net/ssl/SSLException;
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 339
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 340
    goto/16 :goto_27

    .line 285
    .end local v3    # "sslException":Ljavax/net/ssl/SSLException;
    :pswitch_fe
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_12e

    .line 286
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v3

    if-eqz v3, :cond_11a

    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 287
    return v4

    .line 290
    :cond_11a
    :try_start_11a
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_11f
    .catch Ljavax/net/ssl/SSLException; {:try_start_11a .. :try_end_11f} :catch_120

    .line 293
    goto :goto_121

    .line 291
    :catch_120
    move-exception v3

    .line 294
    :goto_121
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 296
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 297
    goto/16 :goto_27

    .line 299
    :cond_12e
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 301
    :try_start_133
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v6, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v7}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 302
    .local v3, "result":Ljavax/net/ssl/SSLEngineResult;
    iget-object v6, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6
    :try_end_146
    .catch Ljavax/net/ssl/SSLException; {:try_start_133 .. :try_end_146} :catch_19e

    move-object v1, v6

    .line 308
    nop

    .line 309
    sget-object v6, Lcom/tds/common/websocket/conn/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1dc

    .line 329
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    :pswitch_172
    iget-object v5, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 322
    return v4

    .line 324
    :cond_17b
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 325
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 326
    goto/16 :goto_27

    .line 314
    :pswitch_188
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 315
    goto/16 :goto_27

    .line 318
    :pswitch_192
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    .line 319
    goto/16 :goto_27

    .line 311
    :pswitch_19c
    goto/16 :goto_27

    .line 304
    .end local v3    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_19e
    move-exception v3

    .line 305
    .local v3, "sslException":Ljavax/net/ssl/SSLException;
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 306
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 307
    goto/16 :goto_27

    .line 278
    .end local v3    # "sslException":Ljavax/net/ssl/SSLException;
    :pswitch_1ac
    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    xor-int/2addr v4, v3

    move v2, v4

    .line 279
    if-eqz v2, :cond_1b7

    .line 280
    return v3

    .line 282
    :cond_1b7
    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 283
    goto/16 :goto_27

    .line 389
    :cond_1c0
    return v3

    nop

    :pswitch_data_1c2
    .packed-switch 0x1
        :pswitch_1ac
        :pswitch_fe
        :pswitch_65
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_db
        :pswitch_d3
        :pswitch_c9
        :pswitch_a4
    .end packed-switch

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_19c
        :pswitch_192
        :pswitch_188
        :pswitch_172
    .end packed-switch
.end method

.method private enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 410
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sessionProposedCapacity"    # I

    .line 424
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_b

    .line 425
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_15

    .line 427
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 429
    :goto_15
    return-object p1
.end method

.method private enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 400
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 444
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 445
    return-object p1

    .line 447
    :cond_11
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    .local v0, "replaceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 449
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 450
    return-object v0
.end method

.method private handleEndOfStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 489
    goto :goto_c

    .line 486
    :catch_6
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "This engine was forced to close inbound, without having received the proper SSL/TLS close notification message from the peer, due to end of stream."

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->closeConnection()V

    .line 491
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->closeConnection()V

    .line 527
    return-void
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public isBlocking()Z
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isNeedRead()Z
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public isNeedWrite()Z
    .registers 2

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 521
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c7

    if-nez v0, :cond_a

    .line 153
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 155
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 156
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 157
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/tds/common/websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_c7

    monitor-exit p0

    return v0

    .line 159
    .end local p0    # "this":Lcom/tds/common/websocket/conn/SSLSocketChannel;
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 161
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 165
    .local v0, "bytesRead":I
    if-gtz v0, :cond_3e

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_3e

    .line 194
    :cond_37
    if-gez v0, :cond_c0

    .line 195
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->handleEndOfStream()V

    goto/16 :goto_c0

    .line 166
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 167
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 168
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_50
    .catchall {:try_start_1f .. :try_end_50} :catchall_c7

    .line 171
    :try_start_50
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_5a
    .catch Ljavax/net/ssl/SSLException; {:try_start_50 .. :try_end_5a} :catch_b9
    .catchall {:try_start_50 .. :try_end_5a} :catchall_c7

    .line 175
    .local v1, "result":Ljavax/net/ssl/SSLEngineResult;
    nop

    .line 176
    :try_start_5b
    sget-object v2, Lcom/tds/common/websocket/conn/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ca

    .line 191
    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_9e

    .line 187
    :pswitch_6d
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->closeConnection()V

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_c7

    .line 189
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 184
    :pswitch_76
    :try_start_76
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_c7

    monitor-exit p0

    return v2

    .line 181
    :pswitch_84
    :try_start_84
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 182
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v2, p1}, Lcom/tds/common/websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_8f
    .catchall {:try_start_84 .. :try_end_8f} :catchall_c7

    monitor-exit p0

    return v2

    .line 178
    :pswitch_91
    :try_start_91
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 179
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v2, p1}, Lcom/tds/common/websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_c7

    monitor-exit p0

    return v2

    .line 191
    :goto_9e
    :try_start_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid SSL status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_b9
    move-exception v1

    .line 173
    .local v1, "e":Ljavax/net/ssl/SSLException;
    const-string v2, "SSLException during unwrap"

    invoke-static {v2, v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    throw v1

    .line 197
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :cond_c0
    :goto_c0
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1}, Lcom/tds/common/websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_c5
    .catchall {:try_start_9e .. :try_end_c5} :catchall_c7

    .line 198
    monitor-exit p0

    return v0

    .line 151
    .end local v0    # "bytesRead":I
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_c7
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_91
        :pswitch_84
        :pswitch_76
        :pswitch_6d
    .end packed-switch
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "num":I
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 207
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 208
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 209
    .local v1, "result":Ljavax/net/ssl/SSLEngineResult;
    sget-object v2, Lcom/tds/common/websocket/conn/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_76

    .line 226
    .end local p0    # "this":Lcom/tds/common/websocket/conn/SSLSocketChannel;
    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_56

    .line 223
    .restart local p0    # "this":Lcom/tds/common/websocket/conn/SSLSocketChannel;
    :pswitch_27
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->closeConnection()V
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_73

    .line 224
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 217
    .end local p0    # "this":Lcom/tds/common/websocket/conn/SSLSocketChannel;
    :pswitch_2d
    :try_start_2d
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lcom/tds/common/websocket/conn/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    .line 218
    goto :goto_55

    .line 220
    :pswitch_36
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Buffer underflow occurred after a wrap. I don\'t think we should ever get here."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :pswitch_3e
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    :goto_43
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 213
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_43

    .line 228
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_55
    :goto_55
    goto :goto_2

    .line 226
    .restart local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :goto_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid SSL status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_71
    .catchall {:try_start_2d .. :try_end_71} :catchall_73

    .line 229
    .end local v1    # "result":Ljavax/net/ssl/SSLEngineResult;
    :cond_71
    monitor-exit p0

    return v0

    .line 202
    .end local v0    # "num":I
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    :catchall_73
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_36
        :pswitch_2d
        :pswitch_27
    .end packed-switch
.end method

.method public writeMore()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    return-void
.end method
