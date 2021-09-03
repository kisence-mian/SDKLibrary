.class public abstract Lcom/tds/common/websocket/server/WebSocketServer;
.super Lcom/tds/common/websocket/conn/AbstractWebSocket;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    }
.end annotation


# static fields
.field private static final AVAILABLE_PROCESSORS:I


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private buffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;"
        }
    .end annotation
.end field

.field protected decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;",
            ">;"
        }
    .end annotation
.end field

.field private drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;"
        }
    .end annotation
.end field

.field private iqueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/conn/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private maxPendingConnections:I

.field private queueinvokes:I

.field private final queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private selector:Ljava/nio/channels/Selector;

.field private selectorthread:Ljava/lang/Thread;

.field private server:Ljava/nio/channels/ServerSocketChannel;

.field private wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tds/common/websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 134
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lcom/tds/common/websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tds/common/websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .line 144
    sget v0, Lcom/tds/common/websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/common/websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .registers 5
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/drafts/Draft;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tds/common/websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .registers 8
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/drafts/Draft;>;"
    .local p4, "connectionscontainer":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/conn/WebSocket;>;"
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    iput v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queueinvokes:I

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    new-instance v0, Lcom/tds/common/websocket/server/DefaultWebSocketServerFactory;

    invoke-direct {v0}, Lcom/tds/common/websocket/server/DefaultWebSocketServerFactory;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->maxPendingConnections:I

    .line 204
    if-eqz p1, :cond_60

    const/4 v0, 0x1

    if-lt p2, v0, :cond_60

    if-eqz p4, :cond_60

    .line 209
    if-nez p3, :cond_2e

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    goto :goto_30

    .line 212
    :cond_2e
    iput-object p3, p0, Lcom/tds/common/websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    .line 215
    :goto_30
    iput-object p1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    .line 216
    iput-object p4, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    .line 217
    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->setTcpNoDelay(Z)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->setReuseAddr(Z)V

    .line 219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_50
    if-ge v0, p2, :cond_5f

    .line 224
    new-instance v1, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    invoke-direct {v1, p0}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;-><init>(Lcom/tds/common/websocket/server/WebSocketServer;)V

    .line 225
    .local v1, "ex":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v1    # "ex":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 227
    .end local v0    # "i":I
    :cond_5f
    return-void

    .line 205
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .registers 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p2, "drafts":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/drafts/Draft;>;"
    sget v0, Lcom/tds/common/websocket/server/WebSocketServer;->AVAILABLE_PROCESSORS:I

    invoke-direct {p0, p1, v0, p2}, Lcom/tds/common/websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/websocket/server/WebSocketServer;Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/websocket/server/WebSocketServer;
    .param p1, "x1"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "x2"    # Ljava/lang/Exception;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->handleFatal(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tds/common/websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/server/WebSocketServer;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private doAccept(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)V
    .registers 9
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 455
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->onConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 456
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 457
    return-void

    .line 460
    :cond_a
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 461
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_13

    .line 462
    return-void

    .line 464
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 465
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    .line 466
    .local v1, "socket":Ljava/net/Socket;
    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->isTcpNoDelay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 467
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 468
    iget-object v3, p0, Lcom/tds/common/websocket/server/WebSocketServer;->wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    iget-object v4, p0, Lcom/tds/common/websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-interface {v3, p0, v4}, Lcom/tds/common/websocket/conn/WebSocketServerFactory;->createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Ljava/util/List;)Lcom/tds/common/websocket/conn/WebSocketImpl;

    move-result-object v3

    .line 469
    .local v3, "w":Lcom/tds/common/websocket/conn/WebSocketImpl;
    iget-object v4, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, v4, v2, v3}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    .line 471
    :try_start_37
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    invoke-virtual {v3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/tds/common/websocket/conn/WebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->setChannel(Ljava/nio/channels/ByteChannel;)V

    .line 472
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 473
    invoke-virtual {p0, v3}, Lcom/tds/common/websocket/server/WebSocketServer;->allocateBuffers(Lcom/tds/common/websocket/conn/WebSocket;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4a} :catch_4b

    .line 480
    goto :goto_61

    .line 474
    :catch_4b
    move-exception v2

    .line 475
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 476
    invoke-virtual {v3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 479
    :cond_59
    invoke-virtual {v3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Lcom/tds/common/websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V

    .line 481
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_61
    return-void
.end method

.method private doAdditionalRead()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    :goto_0
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 425
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 426
    .local v0, "conn":Lcom/tds/common/websocket/conn/WebSocketImpl;
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    check-cast v1, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    .line 427
    .local v1, "c":Lcom/tds/common/websocket/conn/WrappedByteChannel;
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 429
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_1b
    invoke-static {v2, v0, v1}, Lcom/tds/common/websocket/conn/SocketChannelIOHelper;->readMore(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/conn/WrappedByteChannel;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 430
    iget-object v3, p0, Lcom/tds/common/websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 433
    iget-object v3, v0, Lcom/tds/common/websocket/conn/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 434
    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->queue(Lcom/tds/common/websocket/conn/WebSocketImpl;)V

    goto :goto_38

    .line 436
    :cond_35
    invoke-direct {p0, v2}, Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_38} :catch_3a

    .line 441
    :goto_38
    nop

    .line 442
    .end local v1    # "c":Lcom/tds/common/websocket/conn/WrappedByteChannel;
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 438
    .restart local v1    # "c":Lcom/tds/common/websocket/conn/WrappedByteChannel;
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :catch_3a
    move-exception v3

    .line 439
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0, v2}, Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 440
    throw v3

    .line 443
    .end local v0    # "conn":Lcom/tds/common/websocket/conn/WebSocketImpl;
    .end local v1    # "c":Lcom/tds/common/websocket/conn/WrappedByteChannel;
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3f
    return-void
.end method

.method private doBroadcast(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 11
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 991
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/conn/WebSocket;>;"
    const/4 v0, 0x0

    .line 992
    .local v0, "strData":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 993
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 995
    :cond_8
    const/4 v1, 0x0

    .line 996
    .local v1, "byteData":Ljava/nio/ByteBuffer;
    instance-of v2, p1, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_10

    .line 997
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 999
    :cond_10
    if-nez v0, :cond_15

    if-nez v1, :cond_15

    .line 1000
    return-void

    .line 1002
    :cond_15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1004
    .local v2, "draftFrames":Ljava/util/Map;, "Ljava/util/Map<Lcom/tds/common/websocket/drafts/Draft;Ljava/util/List<Lcom/tds/common/websocket/framing/Framedata;>;>;"
    monitor-enter p2

    .line 1005
    :try_start_1b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1006
    .local v3, "clientCopy":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/conn/WebSocket;>;"
    monitor-exit p2
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_47

    .line 1007
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/common/websocket/conn/WebSocket;

    .line 1008
    .local v5, "client":Lcom/tds/common/websocket/conn/WebSocket;
    if-eqz v5, :cond_45

    .line 1009
    invoke-interface {v5}, Lcom/tds/common/websocket/conn/WebSocket;->getDraft()Lcom/tds/common/websocket/drafts/Draft;

    move-result-object v6

    .line 1010
    .local v6, "draft":Lcom/tds/common/websocket/drafts/Draft;
    invoke-direct {p0, v6, v2, v0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->fillFrames(Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1012
    :try_start_3a
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v5, v7}, Lcom/tds/common/websocket/conn/WebSocket;->sendFrame(Ljava/util/Collection;)V
    :try_end_43
    .catch Lcom/tds/common/websocket/exceptions/WebsocketNotConnectedException; {:try_start_3a .. :try_end_43} :catch_44

    .line 1015
    goto :goto_45

    .line 1013
    :catch_44
    move-exception v7

    .line 1017
    .end local v5    # "client":Lcom/tds/common/websocket/conn/WebSocket;
    .end local v6    # "draft":Lcom/tds/common/websocket/drafts/Draft;
    :cond_45
    :goto_45
    goto :goto_25

    .line 1018
    :cond_46
    return-void

    .line 1006
    .end local v3    # "clientCopy":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/conn/WebSocket;>;"
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v3
.end method

.method private doEnsureSingleThread()Z
    .registers 4

    .line 578
    monitor-enter p0

    .line 579
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-nez v0, :cond_19

    .line 582
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    .line 583
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 584
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 586
    :cond_16
    monitor-exit p0

    .line 587
    const/4 v0, 0x1

    return v0

    .line 580
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/tds/common/websocket/server/WebSocketServer;
    throw v0

    .line 586
    .restart local p0    # "this":Lcom/tds/common/websocket/server/WebSocketServer;
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method private doRead(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)Z
    .registers 7
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/tds/common/websocket/exceptions/WrappedIOException;
        }
    .end annotation

    .line 494
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 495
    .local v0, "conn":Lcom/tds/common/websocket/conn/WebSocketImpl;
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->takeBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 496
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    if-nez v2, :cond_1d

    .line 497
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 499
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-direct {p0, p1, v0, v2}, Lcom/tds/common/websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V

    .line 500
    const/4 v2, 0x0

    return v2

    .line 503
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tds/common/websocket/conn/SocketChannelIOHelper;->read(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 504
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 505
    iget-object v2, v0, Lcom/tds/common/websocket/conn/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->queue(Lcom/tds/common/websocket/conn/WebSocketImpl;)V

    .line 507
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 508
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    instance-of v2, v2, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    if-eqz v2, :cond_59

    .line 509
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    invoke-interface {v2}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->isNeedRead()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 510
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->iqueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 513
    :cond_52
    invoke-direct {p0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_59

    .line 516
    :cond_56
    invoke-direct {p0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_59} :catch_5c

    .line 521
    :cond_59
    :goto_59
    nop

    .line 522
    const/4 v2, 0x1

    return v2

    .line 518
    :catch_5c
    move-exception v2

    .line 519
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 520
    new-instance v3, Lcom/tds/common/websocket/exceptions/WrappedIOException;

    invoke-direct {v3, v0, v2}, Lcom/tds/common/websocket/exceptions/WrappedIOException;-><init>(Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V

    throw v3
.end method

.method private doServerShutdown()V
    .registers 4

    .line 594
    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->stopConnectionLostTimer()V

    .line 595
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 596
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    .line 597
    .local v1, "w":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v1}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    .line 598
    .end local v1    # "w":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    goto :goto_b

    .line 600
    :cond_1b
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 602
    :try_start_20
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 606
    goto :goto_2d

    .line 603
    :catch_24
    move-exception v0

    .line 604
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "IOException during selector.close"

    invoke-static {v2, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    invoke-virtual {p0, v1, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->onError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 608
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_3e

    .line 610
    :try_start_31
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    .line 614
    goto :goto_3e

    .line 611
    :catch_35
    move-exception v0

    .line 612
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "IOException during server.close"

    invoke-static {v2, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    invoke-virtual {p0, v1, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->onError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 616
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3e
    :goto_3e
    return-void
.end method

.method private doSetupSelectorAndServerThread()Z
    .registers 6

    .line 550
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketSelector-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    :try_start_1f
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 553
    invoke-virtual {v1, v0}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 554
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    .line 555
    .local v1, "socket":Ljava/net/ServerSocket;
    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 556
    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->isReuseAddr()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 557
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->getMaxPendingConnections()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 558
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    .line 559
    iget-object v3, p0, Lcom/tds/common/websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 560
    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->startConnectionLostTimer()V

    .line 561
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    .line 562
    .local v3, "ex":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v3}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->start()V

    .line 563
    .end local v3    # "ex":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    goto :goto_5b

    .line 564
    :cond_6b
    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->onStart()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_6e} :catch_71

    .line 568
    .end local v1    # "socket":Ljava/net/ServerSocket;
    nop

    .line 569
    const/4 v0, 0x1

    return v0

    .line 565
    :catch_71
    move-exception v1

    .line 566
    .local v1, "ex":Ljava/io/IOException;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->handleFatal(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 567
    return v0
.end method

.method private doWrite(Ljava/nio/channels/SelectionKey;)V
    .registers 5
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/WrappedIOException;
        }
    .end annotation

    .line 532
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 534
    .local v0, "conn":Lcom/tds/common/websocket/conn/WebSocketImpl;
    :try_start_6
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tds/common/websocket/conn/SocketChannelIOHelper;->batch(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 535
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 536
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1a} :catch_1c

    .line 541
    :cond_1a
    nop

    .line 542
    return-void

    .line 539
    :catch_1c
    move-exception v1

    .line 540
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/tds/common/websocket/exceptions/WrappedIOException;

    invoke-direct {v2, v0, v1}, Lcom/tds/common/websocket/exceptions/WrappedIOException;-><init>(Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V

    throw v2
.end method

.method private fillFrames(Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "draft"    # Lcom/tds/common/websocket/drafts/Draft;
    .param p3, "strData"    # Ljava/lang/String;
    .param p4, "byteData"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 1030
    .local p2, "draftFrames":Ljava/util/Map;, "Ljava/util/Map<Lcom/tds/common/websocket/drafts/Draft;Ljava/util/List<Lcom/tds/common/websocket/framing/Framedata;>;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/framing/Framedata;>;"
    const/4 v1, 0x0

    if-eqz p3, :cond_e

    .line 1033
    invoke-virtual {p1, p3, v1}, Lcom/tds/common/websocket/drafts/Draft;->createFrames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1035
    :cond_e
    if-eqz p4, :cond_14

    .line 1036
    invoke-virtual {p1, p4, v1}, Lcom/tds/common/websocket/drafts/Draft;->createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    .line 1038
    :cond_14
    if-eqz v0, :cond_19

    .line 1039
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .end local v0    # "frames":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/framing/Framedata;>;"
    :cond_19
    return-void
.end method

.method private getSocket(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/Socket;
    .registers 4
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 846
    move-object v0, p1

    check-cast v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 847
    .local v0, "impl":Lcom/tds/common/websocket/conn/WebSocketImpl;
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method private handleFatal(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
    .registers 6
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 676
    const-string v0, "Shutdown due to fatal error"

    invoke-static {v0, p2}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->onError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 679
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 680
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    .line 681
    .local v1, "w":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    invoke-virtual {v1}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->interrupt()V

    .line 682
    .end local v1    # "w":Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
    goto :goto_10

    .line 684
    :cond_20
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_27

    .line 685
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 688
    :cond_27
    const/4 v0, 0x0

    :try_start_28
    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->stop()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 696
    :goto_2b
    goto :goto_47

    .line 692
    :catch_2c
    move-exception v1

    .line 693
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 694
    const-string v2, "Interrupt during stop"

    invoke-static {v2, p2}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    invoke-virtual {p0, v0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->onError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    goto :goto_47

    .line 689
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :catch_3d
    move-exception v1

    .line 690
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "Error during shutdown"

    invoke-static {v2, v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    invoke-virtual {p0, v0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->onError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .end local v1    # "e1":Ljava/io/IOException;
    goto :goto_2b

    .line 697
    :goto_47
    return-void
.end method

.method private handleIOException(Ljava/nio/channels/SelectionKey;Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V
    .registers 6
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .param p2, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p3, "ex"    # Ljava/io/IOException;

    .line 656
    if-eqz p1, :cond_5

    .line 657
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 659
    :cond_5
    if-eqz p2, :cond_11

    .line 660
    const/16 v0, 0x3ee

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/tds/common/websocket/conn/WebSocket;->closeConnection(ILjava/lang/String;)V

    goto :goto_29

    .line 661
    :cond_11
    if-eqz p1, :cond_29

    .line 662
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 663
    .local v0, "channel":Ljava/nio/channels/SelectableChannel;
    if-eqz v0, :cond_29

    .line 664
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 666
    :try_start_1f
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 669
    goto :goto_24

    .line 667
    :catch_23
    move-exception v1

    .line 670
    :goto_24
    const-string v1, "Connection closed because of exception"

    invoke-static {v1, p3}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    .end local v0    # "channel":Ljava/nio/channels/SelectableChannel;
    :cond_29
    :goto_29
    return-void
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_f

    .line 649
    return-void

    .line 651
    :cond_f
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 652
    return-void
.end method

.method private takeBuffer()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lcom/tds/common/websocket/conn/WebSocket;)Z
    .registers 4
    .param p1, "ws"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 769
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    .line 770
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 771
    :try_start_b
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 772
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 775
    :cond_16
    const/16 v0, 0x3e9

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/conn/WebSocket;->close(I)V

    .line 776
    const/4 v0, 0x1

    return v0
.end method

.method protected allocateBuffers(Lcom/tds/common/websocket/conn/WebSocket;)V
    .registers 4
    .param p1, "c"    # Lcom/tds/common/websocket/conn/WebSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_13

    .line 620
    return-void

    .line 622
    :cond_13
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 623
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 624
    return-void
.end method

.method public broadcast(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->broadcast(Ljava/lang/String;Ljava/util/Collection;)V

    .line 925
    return-void
.end method

.method public broadcast(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 978
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/conn/WebSocket;>;"
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->doBroadcast(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 982
    return-void

    .line 979
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public broadcast(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 942
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->broadcast(Ljava/nio/ByteBuffer;Ljava/util/Collection;)V

    .line 943
    return-void
.end method

.method public broadcast(Ljava/nio/ByteBuffer;Ljava/util/Collection;)V
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 965
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/conn/WebSocket;>;"
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 968
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->doBroadcast(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 969
    return-void

    .line 966
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public broadcast([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 933
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->broadcast([BLjava/util/Collection;)V

    .line 934
    return-void
.end method

.method public broadcast([BLjava/util/Collection;)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;)V"
        }
    .end annotation

    .line 952
    .local p2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/conn/WebSocket;>;"
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 955
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->broadcast(Ljava/nio/ByteBuffer;Ljava/util/Collection;)V

    .line 956
    return-void

    .line 953
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 632
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getConnections()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 298
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 299
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getDraft()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->drafts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 852
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->getSocket(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getMaxPendingConnections()I
    .registers 2

    .line 347
    iget v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->maxPendingConnections:I

    return v0
.end method

.method public getPort()I
    .registers 3

    .line 312
    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 313
    .local v0, "port":I
    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_16

    .line 314
    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 316
    :cond_16
    return v0
.end method

.method public getRemoteSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 857
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->getSocket(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getWebSocketFactory()Lcom/tds/common/websocket/conn/WebSocketFactory;
    .registers 2

    .line 823
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    return-object v0
.end method

.method public abstract onClose(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;)V
    .registers 4
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 809
    return-void
.end method

.method public onClosing(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    .registers 5
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .line 813
    return-void
.end method

.method protected onConnect(Ljava/nio/channels/SelectionKey;)Z
    .registers 3
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
.end method

.method public abstract onMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/String;)V
.end method

.method public onMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "message"    # Ljava/nio/ByteBuffer;

    .line 916
    return-void
.end method

.method public abstract onOpen(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;)V
.end method

.method public abstract onStart()V
.end method

.method public final onWebsocketClose(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    .registers 8
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .line 719
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 721
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->removeConnection(Lcom/tds/common/websocket/conn/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 722
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/common/websocket/server/WebSocketServer;->onClose(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1c

    .line 726
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->releaseBuffers(Lcom/tds/common/websocket/conn/WebSocket;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    .line 729
    goto :goto_1b

    .line 727
    :catch_12
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 730
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 732
    :goto_1b
    return-void

    .line 725
    :catchall_1c
    move-exception v0

    .line 726
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->releaseBuffers(Lcom/tds/common/websocket/conn/WebSocket;)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 729
    goto :goto_29

    .line 727
    :catch_21
    move-exception v1

    .line 728
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 730
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_29
    throw v0
.end method

.method public onWebsocketCloseInitiated(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;)V
    .registers 4
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 799
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/common/websocket/server/WebSocketServer;->onCloseInitiated(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;)V

    .line 800
    return-void
.end method

.method public onWebsocketClosing(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    .registers 5
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .line 804
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/common/websocket/server/WebSocketServer;->onClosing(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V

    .line 806
    return-void
.end method

.method public final onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 782
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->onError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 783
    return-void
.end method

.method public final onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/String;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "message"    # Ljava/lang/String;

    .line 701
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->onMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public final onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "blob"    # Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->onMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/nio/ByteBuffer;)V

    .line 708
    return-void
.end method

.method public final onWebsocketOpen(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/Handshakedata;)V
    .registers 4
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "handshake"    # Lcom/tds/common/websocket/handshake/Handshakedata;

    .line 712
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer;->addConnection(Lcom/tds/common/websocket/conn/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 713
    move-object v0, p2

    check-cast v0, Lcom/tds/common/websocket/handshake/ClientHandshake;

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->onOpen(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;)V

    .line 715
    :cond_c
    return-void
.end method

.method public final onWriteDemand(Lcom/tds/common/websocket/conn/WebSocket;)V
    .registers 5
    .param p1, "w"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 787
    move-object v0, p1

    check-cast v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 789
    .local v0, "conn":Lcom/tds/common/websocket/conn/WebSocketImpl;
    :try_start_3
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_b
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_b} :catch_c

    .line 793
    goto :goto_12

    .line 790
    :catch_c
    move-exception v1

    .line 792
    .local v1, "e":Ljava/nio/channels/CancelledKeyException;
    iget-object v2, v0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 794
    .end local v1    # "e":Ljava/nio/channels/CancelledKeyException;
    :goto_12
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 795
    return-void
.end method

.method protected queue(Lcom/tds/common/websocket/conn/WebSocketImpl;)V
    .registers 5
    .param p1, "ws"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 636
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWorkerThread()Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 637
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->decoders:Ljava/util/List;

    iget v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queueinvokes:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    invoke-virtual {p1, v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->setWorkerThread(Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;)V

    .line 638
    iget v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queueinvokes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->queueinvokes:I

    .line 640
    :cond_1e
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWorkerThread()Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->put(Lcom/tds/common/websocket/conn/WebSocketImpl;)V

    .line 641
    return-void
.end method

.method protected releaseBuffers(Lcom/tds/common/websocket/conn/WebSocket;)V
    .registers 2
    .param p1, "c"    # Lcom/tds/common/websocket/conn/WebSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 629
    return-void
.end method

.method protected removeConnection(Lcom/tds/common/websocket/conn/WebSocket;)Z
    .registers 5
    .param p1, "ws"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v1

    .line 748
    :try_start_4
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 749
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_19

    .line 752
    :cond_14
    const-string v2, "Removing connection which is not in the connections collection! Possible no handshake received! {}"

    invoke-static {v2, p1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 756
    :goto_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_30

    .line 757
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 758
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 760
    :cond_2f
    return v0

    .line 756
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public run()V
    .registers 9

    .line 352
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->doEnsureSingleThread()Z

    move-result v0

    if-nez v0, :cond_7

    .line 353
    return-void

    .line 355
    :cond_7
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->doSetupSelectorAndServerThread()Z

    move-result v0

    if-nez v0, :cond_e

    .line 356
    return-void

    .line 359
    :cond_e
    const/4 v0, 0x5

    .line 360
    .local v0, "shutdownCount":I
    const/4 v1, 0x0

    .line 361
    .local v1, "selectTimeout":I
    :goto_10
    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_17} :catch_a1
    .catchall {:try_start_11 .. :try_end_17} :catchall_9f

    if-nez v3, :cond_a5

    if-eqz v0, :cond_a5

    .line 362
    const/4 v3, 0x0

    .line 364
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    :try_start_1c
    iget-object v4, p0, Lcom/tds/common/websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 365
    const/4 v1, 0x5

    .line 367
    :cond_25
    iget-object v4, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/Selector;->select(J)I

    move-result v4

    .line 368
    .local v4, "keyCount":I
    if-nez v4, :cond_38

    iget-object v5, p0, Lcom/tds/common/websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 369
    add-int/lit8 v0, v0, -0x1

    .line 371
    :cond_38
    iget-object v5, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v5

    .line 372
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 374
    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_42
    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 375
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/channels/SelectionKey;

    move-object v3, v7

    .line 377
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v7

    if-nez v7, :cond_56

    .line 378
    goto :goto_42

    .line 381
    :cond_56
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v7

    if-eqz v7, :cond_60

    .line 382
    invoke-direct {p0, v3, v6}, Lcom/tds/common/websocket/server/WebSocketServer;->doAccept(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)V

    .line 383
    goto :goto_42

    .line 386
    :cond_60
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-direct {p0, v3, v6}, Lcom/tds/common/websocket/server/WebSocketServer;->doRead(Ljava/nio/channels/SelectionKey;Ljava/util/Iterator;)Z

    move-result v7

    if-nez v7, :cond_6d

    .line 387
    goto :goto_42

    .line 390
    :cond_6d
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 391
    invoke-direct {p0, v3}, Lcom/tds/common/websocket/server/WebSocketServer;->doWrite(Ljava/nio/channels/SelectionKey;)V

    goto :goto_42

    .line 394
    :cond_77
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->doAdditionalRead()V
    :try_end_7a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1c .. :try_end_7a} :catch_9b
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1c .. :try_end_7a} :catch_96
    .catch Lcom/tds/common/websocket/exceptions/WrappedIOException; {:try_start_1c .. :try_end_7a} :catch_89
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_7a} :catch_84
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_7a} :catch_7b
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_7a} :catch_a1
    .catchall {:try_start_1c .. :try_end_7a} :catchall_9f

    .end local v4    # "keyCount":I
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v6    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    goto :goto_9c

    .line 403
    :catch_7b
    move-exception v4

    .line 405
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_7c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9d

    .line 401
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_84
    move-exception v4

    .line 402
    .local v4, "ex":Ljava/io/IOException;
    invoke-direct {p0, v3, v2, v4}, Lcom/tds/common/websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V

    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_9c

    .line 399
    :catch_89
    move-exception v4

    .line 400
    .local v4, "ex":Lcom/tds/common/websocket/exceptions/WrappedIOException;
    invoke-virtual {v4}, Lcom/tds/common/websocket/exceptions/WrappedIOException;->getConnection()Lcom/tds/common/websocket/conn/WebSocket;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tds/common/websocket/exceptions/WrappedIOException;->getIOException()Ljava/io/IOException;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lcom/tds/common/websocket/server/WebSocketServer;->handleIOException(Ljava/nio/channels/SelectionKey;Lcom/tds/common/websocket/conn/WebSocket;Ljava/io/IOException;)V
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_95} :catch_a1
    .catchall {:try_start_7c .. :try_end_95} :catchall_9f

    .end local v4    # "ex":Lcom/tds/common/websocket/exceptions/WrappedIOException;
    goto :goto_9c

    .line 397
    :catch_96
    move-exception v2

    .line 412
    .local v2, "e":Ljava/nio/channels/ClosedByInterruptException;
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->doServerShutdown()V

    .line 398
    return-void

    .line 395
    .end local v2    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catch_9b
    move-exception v2

    .line 406
    :goto_9c
    nop

    .line 407
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :goto_9d
    goto/16 :goto_10

    .line 412
    .end local v0    # "shutdownCount":I
    .end local v1    # "selectTimeout":I
    :catchall_9f
    move-exception v0

    goto :goto_aa

    .line 408
    :catch_a1
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_a2
    invoke-direct {p0, v2, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->handleFatal(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_9f

    .line 412
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_a5
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->doServerShutdown()V

    .line 413
    nop

    .line 414
    return-void

    .line 412
    :goto_aa
    invoke-direct {p0}, Lcom/tds/common/websocket/server/WebSocketServer;->doServerShutdown()V

    .line 413
    throw v0
.end method

.method public setMaxPendingConnections(I)V
    .registers 2
    .param p1, "numberOfConnections"    # I

    .line 337
    iput p1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->maxPendingConnections:I

    .line 338
    return-void
.end method

.method public final setWebSocketFactory(Lcom/tds/common/websocket/conn/WebSocketServerFactory;)V
    .registers 3
    .param p1, "wsf"    # Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    .line 816
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    if-eqz v0, :cond_7

    .line 817
    invoke-interface {v0}, Lcom/tds/common/websocket/conn/WebSocketServerFactory;->close()V

    .line 819
    :cond_7
    iput-object p1, p0, Lcom/tds/common/websocket/server/WebSocketServer;->wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    .line 820
    return-void
.end method

.method public start()V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-nez v0, :cond_d

    .line 243
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    return-void

    .line 241
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/server/WebSocketServer;->stop(I)V

    .line 287
    return-void
.end method

.method public stop(I)V
    .registers 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 261
    return-void

    .line 267
    :cond_b
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    monitor-enter v0

    .line 268
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer;->connections:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .local v1, "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/conn/WebSocket;>;"
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_48

    .line 271
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/conn/WebSocket;

    .line 272
    .local v2, "ws":Lcom/tds/common/websocket/conn/WebSocket;
    const/16 v3, 0x3e9

    invoke-interface {v2, v3}, Lcom/tds/common/websocket/conn/WebSocket;->close(I)V

    .line 273
    .end local v2    # "ws":Lcom/tds/common/websocket/conn/WebSocket;
    goto :goto_1a

    .line 275
    :cond_2c
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->wsf:Lcom/tds/common/websocket/conn/WebSocketServerFactory;

    invoke-interface {v0}, Lcom/tds/common/websocket/conn/WebSocketServerFactory;->close()V

    .line 277
    monitor-enter p0

    .line 278
    :try_start_32
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_43

    .line 279
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 280
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer;->selectorthread:Ljava/lang/Thread;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 282
    :cond_43
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_45

    throw v0

    .line 269
    .end local v1    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/conn/WebSocket;>;"
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method
