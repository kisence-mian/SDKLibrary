.class public Lcom/tds/common/websocket/server/DefaultWebSocketServerFactory;
.super Ljava/lang/Object;
.source "DefaultWebSocketServerFactory.java"

# interfaces
.implements Lcom/tds/common/websocket/conn/WebSocketServerFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 57
    return-void
.end method

.method public bridge synthetic createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Lcom/tds/common/websocket/drafts/Draft;)Lcom/tds/common/websocket/conn/WebSocket;
    .registers 3

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/websocket/server/DefaultWebSocketServerFactory;->createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Lcom/tds/common/websocket/drafts/Draft;)Lcom/tds/common/websocket/conn/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Ljava/util/List;)Lcom/tds/common/websocket/conn/WebSocket;
    .registers 3

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/websocket/server/DefaultWebSocketServerFactory;->createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Ljava/util/List;)Lcom/tds/common/websocket/conn/WebSocketImpl;

    move-result-object p1

    return-object p1
.end method

.method public createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Lcom/tds/common/websocket/drafts/Draft;)Lcom/tds/common/websocket/conn/WebSocketImpl;
    .registers 4
    .param p1, "a"    # Lcom/tds/common/websocket/conn/WebSocketAdapter;
    .param p2, "d"    # Lcom/tds/common/websocket/drafts/Draft;

    .line 41
    new-instance v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-direct {v0, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketImpl;-><init>(Lcom/tds/common/websocket/conn/WebSocketListener;Lcom/tds/common/websocket/drafts/Draft;)V

    return-object v0
.end method

.method public createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Ljava/util/List;)Lcom/tds/common/websocket/conn/WebSocketImpl;
    .registers 4
    .param p1, "a"    # Lcom/tds/common/websocket/conn/WebSocketAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/conn/WebSocketAdapter;",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;)",
            "Lcom/tds/common/websocket/conn/WebSocketImpl;"
        }
    .end annotation

    .line 46
    .local p2, "d":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/drafts/Draft;>;"
    new-instance v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    invoke-direct {v0, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketImpl;-><init>(Lcom/tds/common/websocket/conn/WebSocketListener;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/tds/common/websocket/server/DefaultWebSocketServerFactory;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;

    .line 51
    return-object p1
.end method
