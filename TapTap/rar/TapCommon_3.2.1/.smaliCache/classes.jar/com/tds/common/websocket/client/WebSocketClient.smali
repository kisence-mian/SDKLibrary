.class public abstract Lcom/tds/common/websocket/client/WebSocketClient;
.super Lcom/tds/common/websocket/conn/AbstractWebSocket;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tds/common/websocket/conn/WebSocket;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;
    }
.end annotation


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectReadThread:Ljava/lang/Thread;

.field private connectTimeout:I

.field private dnsResolver:Lcom/tds/common/websocket/client/DnsResolver;

.field private draft:Lcom/tds/common/websocket/drafts/Draft;

.field private engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field private socketFactory:Ljavax/net/SocketFactory;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .param p1, "serverUri"    # Ljava/net/URI;

    .line 162
    new-instance v0, Lcom/tds/common/websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;)V
    .registers 5
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lcom/tds/common/websocket/drafts/Draft;

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tds/common/websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;)V
    .registers 5
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lcom/tds/common/websocket/drafts/Draft;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/tds/common/websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tds/common/websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;I)V
    .registers 8
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lcom/tds/common/websocket/drafts/Draft;
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/tds/common/websocket/drafts/Draft;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 215
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 87
    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 92
    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 99
    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 109
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 134
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 139
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 144
    const/4 v1, 0x0

    iput v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectTimeout:I

    .line 152
    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->dnsResolver:Lcom/tds/common/websocket/client/DnsResolver;

    .line 216
    if-eqz p1, :cond_59

    .line 218
    if-eqz p2, :cond_51

    .line 221
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    .line 222
    iput-object p2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->draft:Lcom/tds/common/websocket/drafts/Draft;

    .line 223
    new-instance v0, Lcom/tds/common/websocket/client/WebSocketClient$1;

    invoke-direct {v0, p0}, Lcom/tds/common/websocket/client/WebSocketClient$1;-><init>(Lcom/tds/common/websocket/client/WebSocketClient;)V

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->dnsResolver:Lcom/tds/common/websocket/client/DnsResolver;

    .line 229
    if-eqz p3, :cond_41

    .line 230
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 231
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 233
    :cond_41
    iput p4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectTimeout:I

    .line 234
    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/client/WebSocketClient;->setTcpNoDelay(Z)V

    .line 235
    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/client/WebSocketClient;->setReuseAddr(Z)V

    .line 236
    new-instance v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-direct {v0, p0, p2}, Lcom/tds/common/websocket/conn/WebSocketImpl;-><init>(Lcom/tds/common/websocket/conn/WebSocketListener;Lcom/tds/common/websocket/drafts/Draft;)V

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 237
    return-void

    .line 219
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;)V
    .registers 4
    .param p1, "serverUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/tds/common/websocket/drafts/Draft_6455;

    invoke-direct {v0}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/tds/common/websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/drafts/Draft;Ljava/util/Map;)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/websocket/client/WebSocketClient;Ljava/io/IOException;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/client/WebSocketClient;
    .param p1, "x1"    # Ljava/io/IOException;

    .line 77
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$102(Lcom/tds/common/websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/client/WebSocketClient;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 77
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tds/common/websocket/client/WebSocketClient;)Lcom/tds/common/websocket/conn/WebSocketImpl;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/client/WebSocketClient;

    .line 77
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/client/WebSocketClient;

    .line 77
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/net/Socket;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/client/WebSocketClient;

    .line 77
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method private getPort()I
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 574
    .local v0, "port":I
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "wss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1c

    .line 576
    if-ne v0, v3, :cond_1a

    const/16 v2, 0x1bb

    goto :goto_1b

    :cond_1a
    move v2, v0

    :goto_1b
    return v2

    .line 577
    :cond_1c
    const-string v2, "ws"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 578
    if-ne v0, v3, :cond_29

    const/16 v2, 0x50

    goto :goto_2a

    :cond_29
    move v2, v0

    :goto_2a
    return v2

    .line 580
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown scheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleIOException(Ljava/io/IOException;)V
    .registers 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 971
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_7

    .line 972
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 974
    :cond_7
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->eot()V

    .line 975
    return-void
.end method

.method private reset()V
    .registers 6

    .line 339
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 340
    .local v0, "current":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_5a

    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_5a

    .line 345
    :try_start_c
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->closeBlocking()V

    .line 346
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 347
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 348
    iput-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 350
    :cond_19
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_22

    .line 351
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 352
    iput-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 354
    :cond_22
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-virtual {v1}, Lcom/tds/common/websocket/drafts/Draft;->reset()V

    .line 355
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_30

    .line 356
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 357
    iput-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_4a

    .line 363
    :cond_30
    nop

    .line 364
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 365
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 366
    new-instance v1, Lcom/tds/common/websocket/conn/WebSocketImpl;

    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->draft:Lcom/tds/common/websocket/drafts/Draft;

    invoke-direct {v1, p0, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;-><init>(Lcom/tds/common/websocket/conn/WebSocketListener;Lcom/tds/common/websocket/drafts/Draft;)V

    iput-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 367
    return-void

    .line 359
    :catch_4a
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 361
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    const/16 v3, 0x3ee

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    .line 362
    return-void

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot initialize a reconnect out of the websocket thread. Use reconnect in another thread to ensure a successful cleanup."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendHandshake()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "part1":Ljava/lang/String;
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "part2":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    goto :goto_17

    .line 596
    :cond_15
    move-object v2, v0

    .local v2, "path":Ljava/lang/String;
    goto :goto_19

    .line 594
    .end local v2    # "path":Ljava/lang/String;
    :cond_17
    :goto_17
    const-string v2, "/"

    .line 598
    .restart local v2    # "path":Ljava/lang/String;
    :goto_19
    if-eqz v1, :cond_32

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    :cond_32
    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->getPort()I

    move-result v3

    .line 602
    .local v3, "port":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x50

    if-eq v3, v5, :cond_61

    const/16 v5, 0x1bb

    if-eq v3, v5, :cond_61

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_63

    :cond_61
    const-string v5, ""

    :goto_63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "host":Ljava/lang/String;
    new-instance v5, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v5}, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 608
    .local v5, "handshake":Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;
    invoke-virtual {v5, v2}, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;->setResourceDescriptor(Ljava/lang/String;)V

    .line 609
    const-string v6, "Host"

    invoke-virtual {v5, v6, v4}, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v6, p0, Lcom/tds/common/websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-eqz v6, :cond_a0

    .line 611
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 612
    .local v7, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .end local v7    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_84

    .line 615
    :cond_a0
    iget-object v6, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v6, v5}, Lcom/tds/common/websocket/conn/WebSocketImpl;->startHandshake(Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;)V

    .line 616
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 276
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 278
    :cond_d
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public clearHeaders()V
    .registers 2

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    .line 298
    return-void
.end method

.method public close()V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_b

    .line 413
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(I)V

    .line 415
    :cond_b
    return-void
.end method

.method public close(I)V
    .registers 3
    .param p1, "code"    # I

    .line 907
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(I)V

    .line 908
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(ILjava/lang/String;)V

    .line 913
    return-void
.end method

.method public closeBlocking()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->close()V

    .line 424
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 425
    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    .line 918
    return-void
.end method

.method public connect()V
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    if-nez v0, :cond_2d

    .line 376
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketConnectReadThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 379
    return-void

    .line 374
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectBlocking()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->connect()V

    .line 389
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 390
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public connectBlocking(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->connect()V

    .line 404
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
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

    .line 447
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Lcom/tds/common/websocket/conn/WebSocket;
    .registers 2

    .line 713
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    return-object v0
.end method

.method protected getConnections()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDraft()Lcom/tds/common/websocket/drafts/Draft;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->draft:Lcom/tds/common/websocket/drafts/Draft;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 937
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 718
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 719
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 721
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;
    .registers 2

    .line 962
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v0

    return-object v0
.end method

.method public getReadyState()Lcom/tds/common/websocket/enums/ReadyState;
    .registers 2

    .line 622
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getReadyState()Lcom/tds/common/websocket/enums/ReadyState;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 942
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 726
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 727
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0

    .line 729
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .registers 2

    .line 947
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .registers 2

    .line 902
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public hasSSLSupport()Z
    .registers 2

    .line 952
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->hasSSLSupport()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .line 892
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .registers 2

    .line 897
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .registers 2

    .line 887
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 882
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 693
    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .line 705
    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 778
    return-void
.end method

.method public abstract onOpen(Lcom/tds/common/websocket/handshake/ServerHandshake;)V
.end method

.method protected onSetSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 4
    .param p1, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .line 562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 563
    const-string v0, "HTTPS"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 565
    :cond_b
    return-void
.end method

.method public final onWebsocketClose(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    .registers 6
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .line 653
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->stopConnectionLostTimer()V

    .line 654
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    .line 655
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 657
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/common/websocket/client/WebSocketClient;->onClose(ILjava/lang/String;Z)V

    .line 658
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 659
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 660
    return-void
.end method

.method public onWebsocketCloseInitiated(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;)V
    .registers 4
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 677
    invoke-virtual {p0, p2, p3}, Lcom/tds/common/websocket/client/WebSocketClient;->onCloseInitiated(ILjava/lang/String;)V

    .line 678
    return-void
.end method

.method public onWebsocketClosing(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
    .registers 5
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .line 682
    invoke-virtual {p0, p2, p3, p4}, Lcom/tds/common/websocket/client/WebSocketClient;->onClosing(ILjava/lang/String;Z)V

    .line 683
    return-void
.end method

.method public final onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 667
    invoke-virtual {p0, p2}, Lcom/tds/common/websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 668
    return-void
.end method

.method public final onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/String;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "message"    # Ljava/lang/String;

    .line 630
    invoke-virtual {p0, p2}, Lcom/tds/common/websocket/client/WebSocketClient;->onMessage(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public final onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "blob"    # Ljava/nio/ByteBuffer;

    .line 635
    invoke-virtual {p0, p2}, Lcom/tds/common/websocket/client/WebSocketClient;->onMessage(Ljava/nio/ByteBuffer;)V

    .line 636
    return-void
.end method

.method public final onWebsocketOpen(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/Handshakedata;)V
    .registers 4
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "handshake"    # Lcom/tds/common/websocket/handshake/Handshakedata;

    .line 643
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->startConnectionLostTimer()V

    .line 644
    move-object v0, p2

    check-cast v0, Lcom/tds/common/websocket/handshake/ServerHandshake;

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/client/WebSocketClient;->onOpen(Lcom/tds/common/websocket/handshake/ServerHandshake;)V

    .line 645
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 646
    return-void
.end method

.method public final onWriteDemand(Lcom/tds/common/websocket/conn/WebSocket;)V
    .registers 2
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 673
    return-void
.end method

.method public reconnect()V
    .registers 1

    .line 316
    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->reset()V

    .line 317
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->connect()V

    .line 318
    return-void
.end method

.method public reconnectBlocking()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->reset()V

    .line 330
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->connectBlocking()Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->headers:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 9

    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, "upgradeSocketToSSLSocket":Z
    const/4 v1, -0x1

    :try_start_2
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v2, v3, :cond_13

    .line 471
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 472
    const/4 v0, 0x1

    goto :goto_33

    .line 473
    :cond_13
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    if-eqz v2, :cond_1e

    .line 474
    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    goto :goto_33

    .line 475
    :cond_1e
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v2, :cond_2d

    .line 476
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    invoke-direct {v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 477
    const/4 v0, 0x1

    goto :goto_33

    .line 478
    :cond_2d
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_115

    .line 482
    :goto_33
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->isTcpNoDelay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 483
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->isReuseAddr()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 485
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_65

    .line 486
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->dnsResolver:Lcom/tds/common/websocket/client/DnsResolver;

    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-interface {v3, v4}, Lcom/tds/common/websocket/client/DnsResolver;->resolve(Ljava/net/URI;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 487
    .local v2, "addr":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    iget v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectTimeout:I

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 491
    .end local v2    # "addr":Ljava/net/InetSocketAddress;
    :cond_65
    const/4 v2, 0x0

    if-eqz v0, :cond_a2

    const-string v3, "wss"

    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 495
    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    if-eqz v3, :cond_81

    instance-of v4, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_81

    .line 496
    check-cast v3, Ljavax/net/ssl/SSLSocketFactory;

    .local v3, "factory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_8f

    .line 498
    .end local v3    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_81
    const-string v3, "TLSv1.2"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 499
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v3, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 500
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    move-object v3, v4

    .line 502
    .local v3, "factory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_8f
    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/tds/common/websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 505
    .end local v3    # "factory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_a2
    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    instance-of v4, v3, Ljavax/net/ssl/SSLSocket;

    if-eqz v4, :cond_b4

    .line 506
    check-cast v3, Ljavax/net/ssl/SSLSocket;

    .line 507
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    .line 508
    .local v4, "sslParameters":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0, v4}, Lcom/tds/common/websocket/client/WebSocketClient;->onSetSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 509
    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 512
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v4    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    :cond_b4
    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 513
    .local v3, "istream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;

    .line 515
    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->sendHandshake()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c5} :catch_14a
    .catch Ljava/lang/InternalError; {:try_start_2 .. :try_end_c5} :catch_11b

    .line 530
    .end local v0    # "upgradeSocketToSSLSocket":Z
    nop

    .line 532
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;

    invoke-direct {v4, p0, p0}, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;-><init>(Lcom/tds/common/websocket/client/WebSocketClient;Lcom/tds/common/websocket/client/WebSocketClient;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;

    .line 533
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 535
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 539
    .local v0, "rawbuffer":[B
    :goto_d9
    :try_start_d9
    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->isClosing()Z

    move-result v4

    if-nez v4, :cond_f7

    invoke-virtual {p0}, Lcom/tds/common/websocket/client/WebSocketClient;->isClosed()Z

    move-result v4

    if-nez v4, :cond_f7

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "readBytes":I
    if-eq v4, v1, :cond_f7

    .line 540
    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tds/common/websocket/conn/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V

    goto :goto_d9

    .line 542
    .end local v5    # "readBytes":I
    :cond_f7
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->eot()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_fc} :catch_10d
    .catch Ljava/lang/RuntimeException; {:try_start_d9 .. :try_end_fc} :catch_fd

    goto :goto_111

    .line 545
    :catch_fd
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1}, Lcom/tds/common/websocket/client/WebSocketClient;->onError(Ljava/lang/Exception;)V

    .line 548
    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    const/16 v5, 0x3ee

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_112

    .line 543
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_10d
    move-exception v1

    .line 544
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/tds/common/websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V

    .line 549
    .end local v1    # "e":Ljava/io/IOException;
    :goto_111
    nop

    .line 550
    :goto_112
    iput-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->connectReadThread:Ljava/lang/Thread;

    .line 551
    return-void

    .line 479
    .end local v3    # "istream":Ljava/io/InputStream;
    .local v0, "upgradeSocketToSSLSocket":Z
    :cond_115
    :try_start_115
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Lcom/tds/common/websocket/client/WebSocketClient;
    throw v2
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11b} :catch_14a
    .catch Ljava/lang/InternalError; {:try_start_115 .. :try_end_11b} :catch_11b

    .line 520
    .end local v0    # "upgradeSocketToSSLSocket":Z
    .restart local p0    # "this":Lcom/tds/common/websocket/client/WebSocketClient;
    :catch_11b
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/InternalError;
    invoke-virtual {v0}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_149

    invoke-virtual {v0}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 523
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_149

    .line 524
    invoke-virtual {v0}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .line 525
    .local v2, "cause":Ljava/io/IOException;
    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {p0, v3, v2}, Lcom/tds/common/websocket/client/WebSocketClient;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 526
    iget-object v3, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    .line 527
    return-void

    .line 529
    .end local v2    # "cause":Ljava/io/IOException;
    :cond_149
    throw v0

    .line 516
    .end local v0    # "e":Ljava/lang/InternalError;
    :catch_14a
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {p0, v2, v0}, Lcom/tds/common/websocket/client/WebSocketClient;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 518
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    .line 519
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 922
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send(Ljava/nio/ByteBuffer;)V

    .line 923
    return-void
.end method

.method public send([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 442
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->send([B)V

    .line 443
    return-void
.end method

.method public sendFragmentedFrame(Lcom/tds/common/websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V
    .registers 5
    .param p1, "op"    # Lcom/tds/common/websocket/enums/Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z

    .line 877
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/common/websocket/conn/WebSocketImpl;->sendFragmentedFrame(Lcom/tds/common/websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V

    .line 878
    return-void
.end method

.method public sendFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 3
    .param p1, "framedata"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 927
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->sendFrame(Lcom/tds/common/websocket/framing/Framedata;)V

    .line 928
    return-void
.end method

.method public sendFrame(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation

    .line 932
    .local p1, "frames":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tds/common/websocket/framing/Framedata;>;"
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->sendFrame(Ljava/util/Collection;)V

    .line 933
    return-void
.end method

.method public sendPing()V
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->sendPing()V

    .line 463
    return-void
.end method

.method public setAttachment(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 452
    .local p1, "attachment":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->setAttachment(Ljava/lang/Object;)V

    .line 453
    return-void
.end method

.method public setDnsResolver(Lcom/tds/common/websocket/client/DnsResolver;)V
    .registers 2
    .param p1, "dnsResolver"    # Lcom/tds/common/websocket/client/DnsResolver;

    .line 307
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->dnsResolver:Lcom/tds/common/websocket/client/DnsResolver;

    .line 308
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .registers 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 844
    if-eqz p1, :cond_5

    .line 847
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->proxy:Ljava/net/Proxy;

    .line 848
    return-void

    .line 845
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSocket(Ljava/net/Socket;)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_7

    .line 862
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;

    .line 863
    return-void

    .line 860
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .registers 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .line 872
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 873
    return-void
.end method
