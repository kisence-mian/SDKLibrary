.class public Lcom/tds/common/websocket/conn/WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocketImpl.java"

# interfaces
.implements Lcom/tds/common/websocket/conn/WebSocket;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_WSS_PORT:I = 0x1bb

.field public static final RCVBUF:I = 0x4000


# instance fields
.field private attachment:Ljava/lang/Object;

.field private channel:Ljava/nio/channels/ByteChannel;

.field private closecode:Ljava/lang/Integer;

.field private closedremotely:Ljava/lang/Boolean;

.field private closemessage:Ljava/lang/String;

.field private draft:Lcom/tds/common/websocket/drafts/Draft;

.field private flushandclosestate:Z

.field private handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

.field public final inQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/nio/channels/SelectionKey;

.field private knownDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private lastPong:J

.field public final outQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readyState:Lcom/tds/common/websocket/enums/ReadyState;

.field private resourceDescriptor:Ljava/lang/String;

.field private role:Lcom/tds/common/websocket/enums/Role;

.field private final synchronizeWriteObject:Ljava/lang/Object;

.field private tmpHandshakeBytes:Ljava/nio/ByteBuffer;

.field private workerThread:Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

.field private final wsl:Lcom/tds/common/websocket/conn/WebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/websocket/conn/WebSocketListener;Lcom/tds/common/websocket/drafts/Draft;)V
    .registers 5
    .param p1, "listener"    # Lcom/tds/common/websocket/conn/WebSocketListener;
    .param p2, "draft"    # Lcom/tds/common/websocket/drafts/Draft;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushandclosestate:Z

    .line 128
    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lcom/tds/common/websocket/enums/ReadyState;

    iput-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    .line 148
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 153
    iput-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

    .line 155
    iput-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closemessage:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closecode:Ljava/lang/Integer;

    .line 157
    iput-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    .line 159
    iput-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    .line 164
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->lastPong:J

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->synchronizeWriteObject:Ljava/lang/Object;

    .line 204
    if-eqz p1, :cond_51

    if-nez p2, :cond_34

    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    sget-object v1, Lcom/tds/common/websocket/enums/Role;->SERVER:Lcom/tds/common/websocket/enums/Role;

    if-eq v0, v1, :cond_51

    .line 207
    :cond_34
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    .line 208
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    .line 209
    iput-object p1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    .line 210
    sget-object v0, Lcom/tds/common/websocket/enums/Role;->CLIENT:Lcom/tds/common/websocket/enums/Role;

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    .line 211
    if-eqz p2, :cond_50

    .line 212
    invoke-virtual {p2}, Lcom/tds/common/websocket/drafts/Draft;->copyInstance()Lcom/tds/common/websocket/drafts/Draft;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    .line 214
    :cond_50
    return-void

    .line 205
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/tds/common/websocket/conn/WebSocketListener;Ljava/util/List;)V
    .registers 5
    .param p1, "listener"    # Lcom/tds/common/websocket/conn/WebSocketListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/conn/WebSocketListener;",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p2, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/drafts/Draft;>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/tds/common/websocket/drafts/Draft;

    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;-><init>(Lcom/tds/common/websocket/conn/WebSocketListener;Lcom/tds/common/websocket/drafts/Draft;)V

    .line 186
    sget-object v0, Lcom/tds/common/websocket/enums/Role;->SERVER:Lcom/tds/common/websocket/enums/Role;

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    .line 188
    if-eqz p2, :cond_16

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_16

    .line 192
    :cond_13
    iput-object p2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->knownDrafts:Ljava/util/List;

    goto :goto_25

    .line 189
    :cond_16
    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->knownDrafts:Ljava/util/List;

    .line 190
    new-instance v1, Lcom/tds/common/websocket/drafts/Draft_6455;

    invoke-direct {v1}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_25
    return-void
.end method

.method private closeConnectionDueToInternalServerError(Ljava/lang/RuntimeException;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .line 428
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->generateHttpResponseDueToError(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    .line 429
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 430
    return-void
.end method

.method private closeConnectionDueToWrongHandshake(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V
    .registers 5
    .param p1, "exception"    # Lcom/tds/common/websocket/exceptions/InvalidDataException;

    .line 418
    const/16 v0, 0x194

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->generateHttpResponseDueToError(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    .line 419
    invoke-virtual {p1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 420
    return-void
.end method

.method private decodeFrames(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "socketBuffer"    # Ljava/nio/ByteBuffer;

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/drafts/Draft;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/framing/Framedata;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/framing/Framedata;

    .line 396
    .local v2, "f":Lcom/tds/common/websocket/framing/Framedata;
    const-string v3, "matched frame: {}"

    invoke-static {v3, v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v3, p0, v2}, Lcom/tds/common/websocket/drafts/Draft;->processFrame(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V
    :try_end_20
    .catch Lcom/tds/common/websocket/exceptions/LimitExceededException; {:try_start_0 .. :try_end_20} :catch_31
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_20} :catch_22

    .line 398
    .end local v2    # "f":Lcom/tds/common/websocket/framing/Framedata;
    goto :goto_a

    .line 409
    :cond_21
    goto :goto_49

    .line 405
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/framing/Framedata;>;"
    :catch_22
    move-exception v0

    .line 406
    .local v0, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    const-string v1, "Closing due to invalid data in frame"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V

    goto :goto_49

    .line 399
    .end local v0    # "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    :catch_31
    move-exception v0

    .line 400
    .local v0, "e":Lcom/tds/common/websocket/exceptions/LimitExceededException;
    invoke-virtual {v0}, Lcom/tds/common/websocket/exceptions/LimitExceededException;->getLimit()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_45

    .line 401
    const-string v1, "Closing due to invalid size of frame"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 404
    :cond_45
    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V

    .line 409
    .end local v0    # "e":Lcom/tds/common/websocket/exceptions/LimitExceededException;
    nop

    .line 410
    :goto_49
    return-void
.end method

.method private decodeHandshake(Ljava/nio/ByteBuffer;)Z
    .registers 14
    .param p1, "socketBufferNew"    # Ljava/nio/ByteBuffer;

    .line 250
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_a

    .line 251
    move-object v0, p1

    .local v0, "socketBuffer":Ljava/nio/ByteBuffer;
    goto :goto_3d

    .line 253
    .end local v0    # "socketBuffer":Ljava/nio/ByteBuffer;
    :cond_a
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 254
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 256
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 257
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 258
    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 261
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_31
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 262
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 263
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 265
    .local v0, "socketBuffer":Ljava/nio/ByteBuffer;
    :goto_3d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 269
    const/4 v1, 0x0

    :try_start_41
    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    sget-object v3, Lcom/tds/common/websocket/enums/Role;->SERVER:Lcom/tds/common/websocket/enums/Role;
    :try_end_45
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_41 .. :try_end_45} :catch_193
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_41 .. :try_end_45} :catch_191

    const-string v4, "Closing due to protocol error: wrong http function"

    const/4 v5, 0x1

    const-string v6, "wrong http function"

    const/16 v7, 0x3ea

    if-ne v2, v3, :cond_10c

    .line 270
    :try_start_4e
    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    if-nez v2, :cond_e1

    .line 271
    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->knownDrafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/websocket/drafts/Draft;

    .line 272
    .local v3, "d":Lcom/tds/common/websocket/drafts/Draft;
    invoke-virtual {v3}, Lcom/tds/common/websocket/drafts/Draft;->copyInstance()Lcom/tds/common/websocket/drafts/Draft;

    move-result-object v4
    :try_end_68
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_4e .. :try_end_68} :catch_193
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_4e .. :try_end_68} :catch_191

    move-object v3, v4

    .line 274
    :try_start_69
    iget-object v4, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    invoke-virtual {v3, v4}, Lcom/tds/common/websocket/drafts/Draft;->setParseMode(Lcom/tds/common/websocket/enums/Role;)V

    .line 275
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 276
    invoke-virtual {v3, v0}, Lcom/tds/common/websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/tds/common/websocket/handshake/Handshakedata;

    move-result-object v4

    .line 277
    .local v4, "tmphandshake":Lcom/tds/common/websocket/handshake/Handshakedata;
    instance-of v8, v4, Lcom/tds/common/websocket/handshake/ClientHandshake;

    if-nez v8, :cond_87

    .line 278
    const-string v8, "Closing due to wrong handshake"

    invoke-static {v8}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 279
    new-instance v8, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    invoke-direct {v8, v7, v6}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnectionDueToWrongHandshake(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V

    .line 281
    return v1

    .line 283
    :cond_87
    move-object v8, v4

    check-cast v8, Lcom/tds/common/websocket/handshake/ClientHandshake;

    .line 284
    .local v8, "handshake":Lcom/tds/common/websocket/handshake/ClientHandshake;
    invoke-virtual {v3, v8}, Lcom/tds/common/websocket/drafts/Draft;->acceptHandshakeAsServer(Lcom/tds/common/websocket/handshake/ClientHandshake;)Lcom/tds/common/websocket/enums/HandshakeState;

    move-result-object v9

    .line 285
    .local v9, "handshakestate":Lcom/tds/common/websocket/enums/HandshakeState;
    sget-object v10, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    if-ne v9, v10, :cond_ca

    .line 286
    invoke-interface {v8}, Lcom/tds/common/websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;
    :try_end_98
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_69 .. :try_end_98} :catch_cb
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_69 .. :try_end_98} :catch_191

    .line 289
    :try_start_98
    iget-object v10, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v10, p0, v3, v8}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketHandshakeReceivedAsServer(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/drafts/Draft;Lcom/tds/common/websocket/handshake/ClientHandshake;)Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;

    move-result-object v10
    :try_end_9e
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_98 .. :try_end_9e} :catch_c0
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_9e} :catch_b1
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_98 .. :try_end_9e} :catch_cb
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_98 .. :try_end_9e} :catch_191

    .line 299
    .local v10, "response":Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;
    nop

    .line 300
    nop

    .line 301
    :try_start_a0
    invoke-virtual {v3, v8, v10}, Lcom/tds/common/websocket/drafts/Draft;->postProcessHandshakeResponseAsServer(Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;

    move-result-object v11

    .line 300
    invoke-virtual {v3, v11}, Lcom/tds/common/websocket/drafts/Draft;->createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;)Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/tds/common/websocket/conn/WebSocketImpl;->write(Ljava/util/List;)V

    .line 302
    iput-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    .line 303
    invoke-direct {p0, v8}, Lcom/tds/common/websocket/conn/WebSocketImpl;->open(Lcom/tds/common/websocket/handshake/Handshakedata;)V

    .line 304
    return v5

    .line 294
    .end local v10    # "response":Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;
    :catch_b1
    move-exception v10

    .line 295
    .local v10, "e":Ljava/lang/RuntimeException;
    const-string v11, "Closing due to internal server error"

    invoke-static {v11, v10}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    iget-object v11, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v11, p0, v10}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 297
    invoke-direct {p0, v10}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnectionDueToInternalServerError(Ljava/lang/RuntimeException;)V

    .line 298
    return v1

    .line 290
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catch_c0
    move-exception v10

    .line 291
    .local v10, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    const-string v11, "Closing due to wrong handshake. Possible handshake rejection"

    invoke-static {v11, v10}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-direct {p0, v10}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnectionDueToWrongHandshake(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V
    :try_end_c9
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_a0 .. :try_end_c9} :catch_cb
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_a0 .. :try_end_c9} :catch_191

    .line 293
    return v1

    .line 308
    .end local v4    # "tmphandshake":Lcom/tds/common/websocket/handshake/Handshakedata;
    .end local v8    # "handshake":Lcom/tds/common/websocket/handshake/ClientHandshake;
    .end local v10    # "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    :cond_ca
    goto :goto_cc

    .line 306
    .end local v9    # "handshakestate":Lcom/tds/common/websocket/enums/HandshakeState;
    :catch_cb
    move-exception v4

    .line 309
    .end local v3    # "d":Lcom/tds/common/websocket/drafts/Draft;
    :goto_cc
    goto :goto_58

    .line 310
    :cond_cd
    :try_start_cd
    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    if-nez v2, :cond_e0

    .line 311
    const-string v2, "Closing due to protocol error: no draft matches"

    invoke-static {v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 312
    new-instance v2, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const-string v3, "no draft matches"

    invoke-direct {v2, v7, v3}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnectionDueToWrongHandshake(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V

    .line 315
    :cond_e0
    return v1

    .line 318
    :cond_e1
    invoke-virtual {v2, v0}, Lcom/tds/common/websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/tds/common/websocket/handshake/Handshakedata;

    move-result-object v2

    .line 319
    .local v2, "tmphandshake":Lcom/tds/common/websocket/handshake/Handshakedata;
    instance-of v3, v2, Lcom/tds/common/websocket/handshake/ClientHandshake;

    if-nez v3, :cond_f0

    .line 320
    invoke-static {v4}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v7, v6, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 322
    return v1

    .line 324
    :cond_f0
    move-object v3, v2

    check-cast v3, Lcom/tds/common/websocket/handshake/ClientHandshake;

    .line 325
    .local v3, "handshake":Lcom/tds/common/websocket/handshake/ClientHandshake;
    iget-object v4, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v4, v3}, Lcom/tds/common/websocket/drafts/Draft;->acceptHandshakeAsServer(Lcom/tds/common/websocket/handshake/ClientHandshake;)Lcom/tds/common/websocket/enums/HandshakeState;

    move-result-object v4

    .line 327
    .local v4, "handshakestate":Lcom/tds/common/websocket/enums/HandshakeState;
    sget-object v6, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    if-ne v4, v6, :cond_101

    .line 328
    invoke-direct {p0, v3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->open(Lcom/tds/common/websocket/handshake/Handshakedata;)V

    .line 329
    return v5

    .line 331
    :cond_101
    const-string v5, "Closing due to protocol error: the handshake did finally not match"

    invoke-static {v5}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 332
    const-string v5, "the handshake did finally not match"

    invoke-virtual {p0, v7, v5}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(ILjava/lang/String;)V

    .line 334
    return v1

    .line 336
    .end local v2    # "tmphandshake":Lcom/tds/common/websocket/handshake/Handshakedata;
    .end local v3    # "handshake":Lcom/tds/common/websocket/handshake/ClientHandshake;
    .end local v4    # "handshakestate":Lcom/tds/common/websocket/enums/HandshakeState;
    :cond_10c
    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    sget-object v3, Lcom/tds/common/websocket/enums/Role;->CLIENT:Lcom/tds/common/websocket/enums/Role;

    if-ne v2, v3, :cond_190

    .line 337
    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    invoke-virtual {v2, v3}, Lcom/tds/common/websocket/drafts/Draft;->setParseMode(Lcom/tds/common/websocket/enums/Role;)V

    .line 338
    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v2, v0}, Lcom/tds/common/websocket/drafts/Draft;->translateHandshake(Ljava/nio/ByteBuffer;)Lcom/tds/common/websocket/handshake/Handshakedata;

    move-result-object v2

    .line 339
    .restart local v2    # "tmphandshake":Lcom/tds/common/websocket/handshake/Handshakedata;
    instance-of v3, v2, Lcom/tds/common/websocket/handshake/ServerHandshake;

    if-nez v3, :cond_12a

    .line 340
    invoke-static {v4}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, v7, v6, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 342
    return v1

    .line 344
    :cond_12a
    move-object v3, v2

    check-cast v3, Lcom/tds/common/websocket/handshake/ServerHandshake;

    .line 345
    .local v3, "handshake":Lcom/tds/common/websocket/handshake/ServerHandshake;
    iget-object v4, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    iget-object v6, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

    invoke-virtual {v4, v6, v3}, Lcom/tds/common/websocket/drafts/Draft;->acceptHandshakeAsClient(Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshake;)Lcom/tds/common/websocket/enums/HandshakeState;

    move-result-object v4

    .line 346
    .restart local v4    # "handshakestate":Lcom/tds/common/websocket/enums/HandshakeState;
    sget-object v6, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;
    :try_end_137
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_cd .. :try_end_137} :catch_193
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_cd .. :try_end_137} :catch_191

    if-ne v4, v6, :cond_16b

    .line 348
    :try_start_139
    iget-object v6, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    iget-object v7, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

    invoke-interface {v6, p0, v7, v3}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketHandshakeReceivedAsClient(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshake;)V
    :try_end_140
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_139 .. :try_end_140} :catch_159
    .catch Ljava/lang/RuntimeException; {:try_start_139 .. :try_end_140} :catch_145
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_139 .. :try_end_140} :catch_193
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_139 .. :try_end_140} :catch_191

    .line 358
    nop

    .line 359
    :try_start_141
    invoke-direct {p0, v3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->open(Lcom/tds/common/websocket/handshake/Handshakedata;)V

    .line 360
    return v5

    .line 353
    :catch_145
    move-exception v5

    .line 354
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v6, "Closing since client was never connected"

    invoke-static {v6, v5}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    iget-object v6, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v6, p0, v5}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 356
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 357
    return v1

    .line 349
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_159
    move-exception v5

    .line 350
    .local v5, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    const-string v6, "Closing due to invalid data exception. Possible handshake rejection"

    invoke-static {v6, v5}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-virtual {v5}, Lcom/tds/common/websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v6

    invoke-virtual {v5}, Lcom/tds/common/websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 352
    return v1

    .line 362
    .end local v5    # "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    :cond_16b
    const-string v5, "Closing due to protocol error: draft {} refuses handshake"

    iget-object v6, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-static {v5, v6}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "draft "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " refuses handshake"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(ILjava/lang/String;)V
    :try_end_190
    .catch Lcom/tds/common/websocket/exceptions/InvalidHandshakeException; {:try_start_141 .. :try_end_190} :catch_193
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_141 .. :try_end_190} :catch_191

    .line 369
    .end local v2    # "tmphandshake":Lcom/tds/common/websocket/handshake/Handshakedata;
    .end local v3    # "handshake":Lcom/tds/common/websocket/handshake/ServerHandshake;
    .end local v4    # "handshakestate":Lcom/tds/common/websocket/enums/HandshakeState;
    :cond_190
    goto :goto_19c

    .line 370
    :catch_191
    move-exception v2

    goto :goto_19d

    .line 366
    :catch_193
    move-exception v2

    .line 367
    .local v2, "e":Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
    :try_start_194
    const-string v3, "Closing due to invalid handshake"

    invoke-static {v3, v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p0, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V
    :try_end_19c
    .catch Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException; {:try_start_194 .. :try_end_19c} :catch_191

    .line 387
    .end local v2    # "e":Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
    :goto_19c
    goto :goto_1d2

    .line 371
    .local v2, "e":Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException;
    :goto_19d
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_1c0

    .line 372
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 373
    invoke-virtual {v2}, Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException;->getPreferredSize()I

    move-result v3

    .line 374
    .local v3, "newsize":I
    if-nez v3, :cond_1b5

    .line 375
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    add-int/lit8 v3, v4, 0x10

    goto :goto_1b6

    .line 377
    :cond_1b5
    nop

    .line 379
    :goto_1b6
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    .line 381
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 383
    .end local v3    # "newsize":I
    goto :goto_1d2

    .line 384
    :cond_1c0
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 385
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 388
    .end local v2    # "e":Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException;
    :goto_1d2
    return v1
.end method

.method private generateHttpResponseDueToError(I)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "errorCode"    # I

    .line 440
    packed-switch p1, :pswitch_data_46

    .line 446
    const-string v0, "500 Internal Server Error"

    .local v0, "errorCodeDescription":Ljava/lang/String;
    goto :goto_9

    .line 442
    .end local v0    # "errorCodeDescription":Ljava/lang/String;
    :pswitch_6
    const-string v0, "404 WebSocket Upgrade Failure"

    .line 443
    .restart local v0    # "errorCodeDescription":Ljava/lang/String;
    nop

    .line 448
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\nContent-Type: text/html\r\nServer: TooTallNate Java-WebSocket\r\nContent-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n<html><head></head><body><h1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</h1></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v1}, Lcom/tds/common/websocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_46
    .packed-switch 0x194
        :pswitch_6
    .end packed-switch
.end method

.method private open(Lcom/tds/common/websocket/handshake/Handshakedata;)V
    .registers 4
    .param p1, "d"    # Lcom/tds/common/websocket/handshake/Handshakedata;

    .line 749
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    const-string v1, "open using draft: {}"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    sget-object v0, Lcom/tds/common/websocket/enums/ReadyState;->OPEN:Lcom/tds/common/websocket/enums/ReadyState;

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    .line 752
    :try_start_b
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0, p1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketOpen(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/Handshakedata;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_11

    .line 755
    goto :goto_17

    .line 753
    :catch_11
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 756
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_17
    return-void
.end method

.method private send(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p1, "frames":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/framing/Framedata;>;"
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 662
    if-eqz p1, :cond_30

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v0, "outgoingFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/framing/Framedata;

    .line 667
    .local v2, "f":Lcom/tds/common/websocket/framing/Framedata;
    const-string v3, "send frame: {}"

    invoke-static {v3, v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v3, v2}, Lcom/tds/common/websocket/drafts/Draft;->createBinaryFrame(Lcom/tds/common/websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    .end local v2    # "f":Lcom/tds/common/websocket/framing/Framedata;
    goto :goto_11

    .line 670
    :cond_2c
    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->write(Ljava/util/List;)V

    .line 671
    return-void

    .line 663
    .end local v0    # "outgoingFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 660
    :cond_36
    new-instance v0, Lcom/tds/common/websocket/exceptions/WebsocketNotConnectedException;

    invoke-direct {v0}, Lcom/tds/common/websocket/exceptions/WebsocketNotConnectedException;-><init>()V

    throw v0
.end method

.method private write(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 728
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 729
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_10

    const-string v0, "too big to display"

    goto :goto_19

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 728
    :goto_19
    const-string v1, "write({}): {}"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWriteDemand(Lcom/tds/common/websocket/conn/WebSocket;)V

    .line 733
    return-void
.end method

.method private write(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p1, "bufs":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->synchronizeWriteObject:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 743
    .local v2, "b":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->write(Ljava/nio/ByteBuffer;)V

    .line 744
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    goto :goto_7

    .line 745
    :cond_17
    monitor-exit v0

    .line 746
    return-void

    .line 745
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 819
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(I)V

    .line 820
    return-void
.end method

.method public close(I)V
    .registers 4
    .param p1, "code"    # I

    .line 619
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(ILjava/lang/String;Z)V

    .line 620
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(ILjava/lang/String;Z)V

    .line 503
    return-void
.end method

.method public declared-synchronized close(ILjava/lang/String;Z)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    monitor-enter p0

    .line 455
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

    if-eq v0, v1, :cond_84

    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->CLOSED:Lcom/tds/common/websocket/enums/ReadyState;

    if-eq v0, v1, :cond_84

    .line 456
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->OPEN:Lcom/tds/common/websocket/enums/ReadyState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_66

    .line 457
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_22

    .line 458
    nop

    .line 459
    sget-object v0, Lcom/tds/common/websocket/enums/ReadyState;->CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    .line 460
    invoke-virtual {p0, p1, p2, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_86

    .line 461
    monitor-exit p0

    return-void

    .line 463
    .end local p0    # "this":Lcom/tds/common/websocket/conn/WebSocketImpl;
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v1}, Lcom/tds/common/websocket/drafts/Draft;->getCloseHandshakeType()Lcom/tds/common/websocket/enums/CloseHandshakeType;

    move-result-object v1

    sget-object v3, Lcom/tds/common/websocket/enums/CloseHandshakeType;->NONE:Lcom/tds/common/websocket/enums/CloseHandshakeType;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_86

    if-eq v1, v3, :cond_62

    .line 465
    if-nez p3, :cond_3a

    .line 467
    :try_start_2e
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketCloseInitiated(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_33} :catch_34
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_2e .. :try_end_33} :catch_52
    .catchall {:try_start_2e .. :try_end_33} :catchall_86

    .line 470
    goto :goto_3a

    .line 468
    :catch_34
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_35
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v3, p0, v1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 472
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 473
    new-instance v1, Lcom/tds/common/websocket/framing/CloseFrame;

    invoke-direct {v1}, Lcom/tds/common/websocket/framing/CloseFrame;-><init>()V

    .line 474
    .local v1, "closeFrame":Lcom/tds/common/websocket/framing/CloseFrame;
    invoke-virtual {v1, p2}, Lcom/tds/common/websocket/framing/CloseFrame;->setReason(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1, p1}, Lcom/tds/common/websocket/framing/CloseFrame;->setCode(I)V

    .line 476
    invoke-virtual {v1}, Lcom/tds/common/websocket/framing/CloseFrame;->isValid()V

    .line 477
    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->sendFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    :try_end_51
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_35 .. :try_end_51} :catch_52
    .catchall {:try_start_35 .. :try_end_51} :catchall_86

    .line 483
    .end local v1    # "closeFrame":Lcom/tds/common/websocket/framing/CloseFrame;
    :cond_51
    goto :goto_62

    .line 479
    :catch_52
    move-exception v1

    .line 480
    .local v1, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    :try_start_53
    const-string v3, "generated frame is invalid"

    invoke-static {v3, v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v3, p0, v1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 482
    const-string v3, "generated frame is invalid"

    invoke-virtual {p0, v0, v3, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 485
    .end local v1    # "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    :cond_62
    :goto_62
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_7b

    .line 486
    :cond_66
    const/4 v0, -0x3

    if-ne p1, v0, :cond_6f

    .line 487
    nop

    .line 488
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_7b

    .line 489
    :cond_6f
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_77

    .line 490
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    goto :goto_7b

    .line 492
    :cond_77
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 494
    :goto_7b
    sget-object v0, Lcom/tds/common/websocket/enums/ReadyState;->CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;
    :try_end_82
    .catchall {:try_start_53 .. :try_end_82} :catchall_86

    .line 496
    monitor-exit p0

    return-void

    .line 498
    :cond_84
    monitor-exit p0

    return-void

    .line 454
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "remote":Z
    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close(Lcom/tds/common/websocket/exceptions/InvalidDataException;)V
    .registers 5
    .param p1, "e"    # Lcom/tds/common/websocket/exceptions/InvalidDataException;

    .line 623
    invoke-virtual {p1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;->getCloseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(ILjava/lang/String;Z)V

    .line 624
    return-void
.end method

.method public closeConnection()V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 568
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    .line 569
    return-void

    .line 566
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method must be used in conjunction with flushAndClose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeConnection(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    .line 573
    return-void
.end method

.method public declared-synchronized closeConnection(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    monitor-enter p0

    .line 522
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->CLOSED:Lcom/tds/common/websocket/enums/ReadyState;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_65

    if-ne v0, v1, :cond_9

    .line 523
    monitor-exit p0

    return-void

    .line 526
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->OPEN:Lcom/tds/common/websocket/enums/ReadyState;

    if-ne v0, v1, :cond_17

    .line 527
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_17

    .line 528
    sget-object v0, Lcom/tds/common/websocket/enums/ReadyState;->CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    .line 531
    .end local p0    # "this":Lcom/tds/common/websocket/conn/WebSocketImpl;
    :cond_17
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1e

    .line 533
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 535
    :cond_1e
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_65

    if-eqz v0, :cond_49

    .line 537
    :try_start_22
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_65

    .line 545
    goto :goto_49

    .line 538
    :catch_26
    move-exception v0

    .line 539
    .local v0, "e":Ljava/io/IOException;
    :try_start_27
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Broken pipe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 540
    const-string v1, "Caught IOException: Broken pipe during closeConnection()"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_49

    .line 542
    :cond_3f
    const-string v1, "Exception during channel.close()"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_65

    .line 548
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    :try_start_49
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketClose(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4e} :catch_4f
    .catchall {:try_start_49 .. :try_end_4e} :catchall_65

    .line 552
    goto :goto_55

    .line 549
    :catch_4f
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_50
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 553
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_55
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    if-eqz v0, :cond_5c

    .line 554
    invoke-virtual {v0}, Lcom/tds/common/websocket/drafts/Draft;->reset()V

    .line 556
    :cond_5c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

    .line 557
    sget-object v0, Lcom/tds/common/websocket/enums/ReadyState;->CLOSED:Lcom/tds/common/websocket/enums/ReadyState;

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;
    :try_end_63
    .catchall {:try_start_50 .. :try_end_63} :catchall_65

    .line 558
    monitor-exit p0

    return-void

    .line 521
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "remote":Z
    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected closeConnection(IZ)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "remote"    # Z

    .line 561
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    .line 562
    return-void
.end method

.method public decode(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "socketBuffer"    # Ljava/nio/ByteBuffer;

    .line 222
    nop

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_19

    const-string v1, "too big to display"

    goto :goto_2a

    :cond_19
    new-instance v1, Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "process({}): ({})"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lcom/tds/common/websocket/enums/ReadyState;

    if-eq v0, v1, :cond_47

    .line 228
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->OPEN:Lcom/tds/common/websocket/enums/ReadyState;

    if-ne v0, v1, :cond_71

    .line 229
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_71

    .line 232
    :cond_47
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->decodeHandshake(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isClosing()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_71

    .line 233
    nop

    .line 235
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 236
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    goto :goto_71

    .line 237
    :cond_64
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 238
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->tmpHandshakeBytes:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->decodeFrames(Ljava/nio/ByteBuffer;)V

    .line 242
    :cond_71
    :goto_71
    return-void
.end method

.method public eot()V
    .registers 6

    .line 600
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->NOT_YET_CONNECTED:Lcom/tds/common/websocket/enums/ReadyState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 601
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_4f

    .line 602
    :cond_c
    iget-boolean v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushandclosestate:Z

    if-eqz v0, :cond_22

    .line 603
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closecode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closemessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    goto :goto_4f

    .line 604
    :cond_22
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/tds/common/websocket/drafts/Draft;->getCloseHandshakeType()Lcom/tds/common/websocket/enums/CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/tds/common/websocket/enums/CloseHandshakeType;->NONE:Lcom/tds/common/websocket/enums/CloseHandshakeType;

    const/16 v3, 0x3e8

    if-ne v0, v1, :cond_32

    .line 605
    invoke-virtual {p0, v3, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_4f

    .line 606
    :cond_32
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v0}, Lcom/tds/common/websocket/drafts/Draft;->getCloseHandshakeType()Lcom/tds/common/websocket/enums/CloseHandshakeType;

    move-result-object v0

    sget-object v1, Lcom/tds/common/websocket/enums/CloseHandshakeType;->ONEWAY:Lcom/tds/common/websocket/enums/CloseHandshakeType;

    const/16 v4, 0x3ee

    if-ne v0, v1, :cond_4c

    .line 607
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    sget-object v1, Lcom/tds/common/websocket/enums/Role;->SERVER:Lcom/tds/common/websocket/enums/Role;

    if-ne v0, v1, :cond_48

    .line 608
    invoke-virtual {p0, v4, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_4f

    .line 610
    :cond_48
    invoke-virtual {p0, v3, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(IZ)V

    goto :goto_4f

    .line 613
    :cond_4c
    invoke-virtual {p0, v4, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(IZ)V

    .line 615
    :goto_4f
    return-void
.end method

.method public declared-synchronized flushAndClose(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    monitor-enter p0

    .line 576
    :try_start_1
    iget-boolean v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushandclosestate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    if-eqz v0, :cond_7

    .line 577
    monitor-exit p0

    return-void

    .line 579
    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closecode:Ljava/lang/Integer;

    .line 580
    iput-object p2, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closemessage:Ljava/lang/String;

    .line 581
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->closedremotely:Ljava/lang/Boolean;

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushandclosestate:Z

    .line 585
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWriteDemand(Lcom/tds/common/websocket/conn/WebSocket;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_3a

    .line 588
    :try_start_1d
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketClosing(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_3a

    .line 592
    goto :goto_2e

    .line 589
    .end local p0    # "this":Lcom/tds/common/websocket/conn/WebSocketImpl;
    :catch_23
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_24
    const-string v1, "Exception in onWebsocketClosing"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 593
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2e
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    if-eqz v0, :cond_35

    .line 594
    invoke-virtual {v0}, Lcom/tds/common/websocket/drafts/Draft;->reset()V

    .line 596
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_3a

    .line 597
    monitor-exit p0

    return-void

    .line 575
    .end local p1    # "code":I
    .end local p2    # "message":Ljava/lang/String;
    .end local p3    # "remote":Z
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAttachment()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/ByteChannel;
    .registers 2

    .line 889
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public getDraft()Lcom/tds/common/websocket/drafts/Draft;
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    return-object v0
.end method

.method getLastPong()J
    .registers 3

    .line 833
    iget-wide v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->lastPong:J

    return-wide v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 809
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/tds/common/websocket/conn/WebSocketListener;->getLocalSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    if-nez v0, :cond_6

    .line 875
    const/4 v0, 0x0

    return-object v0

    .line 877
    :cond_6
    instance-of v1, v0, Lcom/tds/common/websocket/drafts/Draft_6455;

    if-eqz v1, :cond_11

    .line 880
    check-cast v0, Lcom/tds/common/websocket/drafts/Draft_6455;

    invoke-virtual {v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v0

    return-object v0

    .line 878
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This draft does not support Sec-WebSocket-Protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReadyState()Lcom/tds/common/websocket/enums/ReadyState;
    .registers 2

    .line 780
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/tds/common/websocket/conn/WebSocketListener;->getRemoteSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .registers 2

    .line 824
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 3

    .line 865
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->hasSSLSupport()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 869
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Lcom/tds/common/websocket/interfaces/ISSLChannel;

    invoke-interface {v0}, Lcom/tds/common/websocket/interfaces/ISSLChannel;->getSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    .line 866
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This websocket uses ws instead of wss. No SSLSession available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectionKey()Ljava/nio/channels/SelectionKey;
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method public getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;
    .registers 2

    .line 849
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    return-object v0
.end method

.method public getWorkerThread()Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    .registers 2

    .line 897
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->workerThread:Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    return-object v0
.end method

.method public hasBufferedData()Z
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSSLSupport()Z
    .registers 2

    .line 860
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Lcom/tds/common/websocket/interfaces/ISSLChannel;

    return v0
.end method

.method public isClosed()Z
    .registers 3

    .line 775
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->CLOSED:Lcom/tds/common/websocket/enums/ReadyState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isClosing()Z
    .registers 3

    .line 765
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFlushAndClose()Z
    .registers 2

    .line 770
    iget-boolean v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushandclosestate:Z

    return v0
.end method

.method public isOpen()Z
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->readyState:Lcom/tds/common/websocket/enums/ReadyState;

    sget-object v1, Lcom/tds/common/websocket/enums/ReadyState;->OPEN:Lcom/tds/common/websocket/enums/ReadyState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public send(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .line 633
    if-eqz p1, :cond_15

    .line 636
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    sget-object v2, Lcom/tds/common/websocket/enums/Role;->CLIENT:Lcom/tds/common/websocket/enums/Role;

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, p1, v1}, Lcom/tds/common/websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 637
    return-void

    .line 634
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 647
    if-eqz p1, :cond_15

    .line 650
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->role:Lcom/tds/common/websocket/enums/Role;

    sget-object v2, Lcom/tds/common/websocket/enums/Role;->CLIENT:Lcom/tds/common/websocket/enums/Role;

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, p1, v1}, Lcom/tds/common/websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 651
    return-void

    .line 648
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 655
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    .line 656
    return-void
.end method

.method public sendFragmentedFrame(Lcom/tds/common/websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V
    .registers 5
    .param p1, "op"    # Lcom/tds/common/websocket/enums/Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z

    .line 675
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/common/websocket/drafts/Draft;->continuousFrame(Lcom/tds/common/websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 676
    return-void
.end method

.method public sendFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 3
    .param p1, "framedata"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 685
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 686
    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .line 680
    .local p1, "frames":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/framing/Framedata;>;"
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/util/Collection;)V

    .line 681
    return-void
.end method

.method public sendPing()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v0, p0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onPreparePing(Lcom/tds/common/websocket/conn/WebSocket;)Lcom/tds/common/websocket/framing/PingFrame;

    move-result-object v0

    .line 691
    .local v0, "pingFrame":Lcom/tds/common/websocket/framing/PingFrame;
    if-eqz v0, :cond_c

    .line 695
    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->sendFrame(Lcom/tds/common/websocket/framing/Framedata;)V

    .line 696
    return-void

    .line 692
    :cond_c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onPreparePing(WebSocket) returned null. PingFrame to sent can\'t be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 885
    .local p1, "attachment":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->attachment:Ljava/lang/Object;

    .line 886
    return-void
.end method

.method public setChannel(Ljava/nio/channels/ByteChannel;)V
    .registers 2
    .param p1, "channel"    # Ljava/nio/channels/ByteChannel;

    .line 893
    iput-object p1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->channel:Ljava/nio/channels/ByteChannel;

    .line 894
    return-void
.end method

.method public setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .registers 2
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .line 787
    iput-object p1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->key:Ljava/nio/channels/SelectionKey;

    .line 788
    return-void
.end method

.method public setWorkerThread(Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;)V
    .registers 2
    .param p1, "workerThread"    # Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    .line 901
    iput-object p1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->workerThread:Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    .line 902
    return-void
.end method

.method public startHandshake(Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;)V
    .registers 6
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/drafts/Draft;->postProcessHandshakeRequestAsClient(Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;)Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

    .line 708
    invoke-interface {p1}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->resourceDescriptor:Ljava/lang/String;

    .line 709
    nop

    .line 713
    :try_start_f
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

    invoke-interface {v0, p0, v1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketHandshakeSentAsClient(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;)V
    :try_end_16
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_f .. :try_end_16} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_16} :catch_23

    .line 721
    nop

    .line 724
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->draft:Lcom/tds/common/websocket/drafts/Draft;

    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->handshakerequest:Lcom/tds/common/websocket/handshake/ClientHandshake;

    invoke-virtual {v0, v1}, Lcom/tds/common/websocket/drafts/Draft;->createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->write(Ljava/util/List;)V

    .line 725
    return-void

    .line 717
    :catch_23
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "Exception in startHandshake"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->wsl:Lcom/tds/common/websocket/conn/WebSocketListener;

    invoke-interface {v1, p0, v0}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 720
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 714
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_47
    move-exception v0

    .line 716
    .local v0, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    const-string v2, "Handshake data rejected by client."

    invoke-direct {v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 799
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastPong()V
    .registers 3

    .line 840
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->lastPong:J

    .line 841
    return-void
.end method
