.class public interface abstract Lcom/tds/common/websocket/conn/WebSocketFactory;
.super Ljava/lang/Object;
.source "WebSocketFactory.java"


# virtual methods
.method public abstract createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Lcom/tds/common/websocket/drafts/Draft;)Lcom/tds/common/websocket/conn/WebSocket;
.end method

.method public abstract createWebSocket(Lcom/tds/common/websocket/conn/WebSocketAdapter;Ljava/util/List;)Lcom/tds/common/websocket/conn/WebSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/conn/WebSocketAdapter;",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/drafts/Draft;",
            ">;)",
            "Lcom/tds/common/websocket/conn/WebSocket;"
        }
    .end annotation
.end method
