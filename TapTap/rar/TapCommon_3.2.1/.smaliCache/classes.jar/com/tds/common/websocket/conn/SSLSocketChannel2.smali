.class public Lcom/tds/common/websocket/conn/SSLSocketChannel2;
.super Ljava/lang/Object;
.source "SSLSocketChannel2.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;
.implements Lcom/tds/common/websocket/conn/WrappedByteChannel;
.implements Lcom/tds/common/websocket/interfaces/ISSLChannel;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static emptybuffer:Ljava/nio/ByteBuffer;


# instance fields
.field protected bufferallocations:I

.field protected exec:Ljava/util/concurrent/ExecutorService;

.field protected inCrypt:Ljava/nio/ByteBuffer;

.field protected inData:Ljava/nio/ByteBuffer;

.field protected outCrypt:Ljava/nio/ByteBuffer;

.field protected readEngineResult:Ljavax/net/ssl/SSLEngineResult;

.field private saveCryptData:[B

.field protected selectionKey:Ljava/nio/channels/SelectionKey;

.field protected socketChannel:Ljava/nio/channels/SocketChannel;

.field protected sslEngine:Ljavax/net/ssl/SSLEngine;

.field protected tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected writeEngineResult:Ljavax/net/ssl/SSLEngineResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    nop

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V
    .registers 9
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "sslEngine"    # Ljavax/net/ssl/SSLEngine;
    .param p3, "exec"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->bufferallocations:I

    .line 475
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->saveCryptData:[B

    .line 107
    if-eqz p1, :cond_4f

    if-eqz p2, :cond_4f

    if-eqz p3, :cond_4f

    .line 111
    iput-object p1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 112
    iput-object p2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 113
    iput-object p3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->exec:Ljava/util/concurrent/ExecutorService;

    .line 115
    new-instance v1, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 116
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, v0}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    iput-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    iput-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->tasks:Ljava/util/List;

    .line 119
    if-eqz p4, :cond_39

    .line 120
    invoke-virtual {p4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p4, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 121
    iput-object p4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->selectionKey:Ljava/nio/channels/SelectionKey;

    .line 123
    :cond_39
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V

    .line 125
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    sget-object v1, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 126
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->processHandshake()V

    .line 127
    return-void

    .line 108
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeFutureUninterruptible(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 133
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_6

    .line 134
    nop

    .line 141
    nop

    .line 142
    return-void

    .line 139
    :catch_6
    move-exception v0

    goto :goto_11

    .line 135
    :catch_8
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_10} :catch_6

    .line 137
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 140
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :goto_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isHandShakeComplete()Z
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 393
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method private declared-synchronized processHandshake()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_cb

    if-ne v0, v1, :cond_d

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 153
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 154
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 156
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 164
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_1b

    .line 159
    .end local p0    # "this":Lcom/tds/common/websocket/conn/SSLSocketChannel2;
    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_31
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 160
    invoke-direct {p0, v1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->consumeFutureUninterruptible(Ljava/util/concurrent/Future;)V
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_cb

    .line 162
    :cond_3a
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/Future<*>;>;"
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_90

    .line 168
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_6b

    .line 169
    :cond_56
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 170
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 171
    .local v0, "read":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_88

    .line 174
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 176
    .end local v0    # "read":I
    :cond_6b
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 177
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->unwrap()Ljava/nio/ByteBuffer;

    .line 178
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_90

    .line 179
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V
    :try_end_86
    .catchall {:try_start_3c .. :try_end_86} :catchall_cb

    .line 180
    monitor-exit p0

    return-void

    .line 172
    .restart local v0    # "read":I
    :cond_88
    :try_start_88
    new-instance v1, Ljava/io/IOException;

    const-string v2, "connection closed unexpectedly by peer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "read":I
    :cond_90
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->consumeDelegatedTasks()V

    .line 184
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 185
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_c5

    .line 186
    :cond_a5
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    sget-object v1, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 187
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_c5

    .line 188
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->createBuffers(Ljavax/net/ssl/SSLSession;)V
    :try_end_c3
    .catchall {:try_start_88 .. :try_end_c3} :catchall_cb

    .line 189
    monitor-exit p0

    return-void

    .line 192
    :cond_c5
    nop

    .line 195
    const/4 v0, 0x1

    :try_start_c7
    iput v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->bufferallocations:I
    :try_end_c9
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_cb

    .line 196
    monitor-exit p0

    return-void

    .line 148
    :catchall_cb
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readRemaining(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 358
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 360
    :cond_f
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 361
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 363
    :cond_1c
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->tryRestoreCryptedData()V

    .line 365
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 366
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->unwrap()Ljava/nio/ByteBuffer;

    .line 367
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 368
    .local v0, "amount":I
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_3c

    .line 369
    const/4 v1, -0x1

    return v1

    .line 371
    :cond_3c
    if-lez v0, :cond_3f

    .line 372
    return v0

    .line 375
    .end local v0    # "amount":I
    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method private saveCryptedData()V
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_19

    .line 480
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 481
    .local v0, "saveCryptSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->saveCryptData:[B

    .line 482
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 484
    .end local v0    # "saveCryptSize":I
    :cond_19
    return-void
.end method

.method private transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 8
    .param p1, "from"    # Ljava/nio/ByteBuffer;
    .param p2, "to"    # Ljava/nio/ByteBuffer;

    .line 446
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 447
    .local v0, "fremain":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 448
    .local v1, "toremain":I
    if-le v0, v1, :cond_1c

    .line 450
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 451
    .local v2, "limit":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1b

    .line 452
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 454
    .end local v3    # "i":I
    :cond_1b
    return v2

    .line 456
    .end local v2    # "limit":I
    :cond_1c
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 457
    return v0
.end method

.method private tryRestoreCryptedData()V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->saveCryptData:[B

    if-eqz v0, :cond_18

    .line 489
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 490
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->saveCryptData:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 491
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->saveCryptData:[B

    .line 494
    :cond_18
    return-void
.end method

.method private declared-synchronized unwrap()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 212
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_4f

    if-ne v0, v1, :cond_1a

    .line 214
    :try_start_15
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_4f

    .line 217
    goto :goto_1a

    .line 215
    .end local p0    # "this":Lcom/tds/common/websocket/conn/SSLSocketChannel2;
    :catch_19
    move-exception v0

    .line 220
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 221
    .local v0, "rem":I
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 222
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_46

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    .line 223
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v1, v2, :cond_1a

    .line 224
    :cond_46
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 225
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;
    :try_end_4d
    .catchall {:try_start_1a .. :try_end_4d} :catchall_4f

    monitor-exit p0

    return-object v1

    .line 210
    .end local v0    # "rem":I
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 200
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 201
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 202
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 198
    .end local p0    # "this":Lcom/tds/common/websocket/conn/SSLSocketChannel2;
    .end local p1    # "b":Ljava/nio/ByteBuffer;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 384
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 385
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 386
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    sget-object v1, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->emptybuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 388
    :cond_21
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 389
    return-void
.end method

.method public configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .registers 3
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;)Z
    .registers 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v0

    return v0
.end method

.method protected consumeDelegatedTasks()V
    .registers 4

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    move-object v1, v0

    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_15

    .line 231
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->tasks:Ljava/util/List;

    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_15
    return-void
.end method

.method protected createBuffers(Ljavax/net/ssl/SSLSession;)V
    .registers 8
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 237
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->saveCryptedData()V

    .line 238
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    .line 239
    .local v0, "netBufferMax":I
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 241
    .local v1, "appBufferMax":I
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_26

    .line 242
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    .line 243
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    .line 244
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    goto :goto_4e

    .line 246
    :cond_26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eq v2, v1, :cond_32

    .line 247
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    .line 249
    :cond_32
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eq v2, v0, :cond_40

    .line 250
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    .line 252
    :cond_40
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eq v2, v0, :cond_4e

    .line 253
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    .line 256
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_70

    .line 257
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 259
    :cond_70
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 260
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 261
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_9c

    .line 262
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 264
    :cond_9c
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 265
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 266
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 267
    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 268
    iget v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->bufferallocations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->bufferallocations:I

    .line 269
    return-void
.end method

.method public finishConnect()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    return v0
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .line 469
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public isBlocking()Z
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    return v0
.end method

.method public isNeedRead()Z
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->saveCryptData:[B

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 436
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 437
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    .line 435
    :goto_2c
    return v0
.end method

.method public isNeedWrite()Z
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    .line 425
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 424
    :goto_12
    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 419
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->tryRestoreCryptedData()V

    .line 297
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 298
    return v1

    .line 300
    :cond_b
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 301
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 302
    :goto_17
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 303
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->processHandshake()V

    goto :goto_17

    .line 306
    :cond_21
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->processHandshake()V

    .line 307
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 308
    return v1

    .line 320
    :cond_2b
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readRemaining(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 321
    .local v0, "purged":I
    if-eqz v0, :cond_32

    .line 322
    return v0

    .line 328
    :cond_32
    nop

    .line 329
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 331
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_46

    .line 332
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4b

    .line 334
    :cond_46
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 337
    :goto_4b
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_67

    .line 338
    :cond_5b
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_67

    .line 339
    return v2

    .line 342
    :cond_67
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 343
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->unwrap()Ljava/nio/ByteBuffer;

    .line 345
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->inData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->transfereTo(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 346
    .local v1, "transferred":I
    if-nez v1, :cond_7e

    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 347
    goto :goto_3

    .line 349
    :cond_7e
    return v1
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->readRemaining(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public socket()Ljava/net/Socket;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->isHandShakeComplete()Z

    move-result v0

    if-nez v0, :cond_b

    .line 273
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->processHandshake()V

    .line 274
    const/4 v0, 0x0

    return v0

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->wrap(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 281
    .local v0, "num":I
    iget-object v1, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->writeEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v2, :cond_20

    .line 284
    return v0

    .line 282
    :cond_20
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Connection is closed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeMore()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->outCrypt:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/SSLSocketChannel2;->write(Ljava/nio/ByteBuffer;)I

    .line 431
    return-void
.end method
