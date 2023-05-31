.class public interface abstract Lcom/tds/common/websocket/conn/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# virtual methods
.method public abstract getLocalSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteSocketAddress(Lcom/tds/common/websocket/conn/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract onPreparePing(Lcom/tds/common/websocket/conn/WebSocket;)Lcom/tds/common/websocket/framing/PingFrame;
.end method

.method public abstract onWebsocketClose(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketCloseInitiated(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;)V
.end method

.method public abstract onWebsocketClosing(Lcom/tds/common/websocket/conn/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
.end method

.method public abstract onWebsocketHandshakeReceivedAsClient(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshake;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeReceivedAsServer(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/drafts/Draft;Lcom/tds/common/websocket/handshake/ClientHandshake;)Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeSentAsClient(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/String;)V
.end method

.method public abstract onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWebsocketOpen(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/Handshakedata;)V
.end method

.method public abstract onWebsocketPing(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/framing/Framedata;)V
.end method

.method public abstract onWebsocketPong(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/framing/Framedata;)V
.end method

.method public abstract onWriteDemand(Lcom/tds/common/websocket/conn/WebSocket;)V
.end method
