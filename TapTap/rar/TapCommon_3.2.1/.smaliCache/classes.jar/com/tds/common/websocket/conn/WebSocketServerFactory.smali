.class public interface abstract Lcom/tds/common/websocket/conn/WebSocketServerFactory;
.super Ljava/lang/Object;
.source "WebSocketServerFactory.java"

# interfaces
.implements Lcom/tds/common/websocket/conn/WebSocketFactory;


# virtual methods
.method public abstract close()V
.end method

.method public abstract createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Lcom/tds/common/websocket/drafts/Draft;)Lcom/tds/common/websocket/conn/WebSocketImpl;
.end method

.method public abstract createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Ljava/util/List;)Lcom/tds/common/websocket/conn/WebSocketImpl;
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
.end method

.method public abstract wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
