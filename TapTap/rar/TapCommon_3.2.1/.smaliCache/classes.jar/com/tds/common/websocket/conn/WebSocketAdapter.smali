.class public abstract Lcom/tds/common/websocket/conn/WebSocketAdapter;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"

# interfaces
.implements Lcom/tds/common/websocket/conn/WebSocketListener;


# instance fields
.field private pingFrame:Lcom/tds/common/websocket/framing/PingFrame;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreparePing(Lcom/tds/common/websocket/conn/WebSocket;)Lcom/tds/common/websocket/framing/PingFrame;
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;

    .line 108
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketAdapter;->pingFrame:Lcom/tds/common/websocket/framing/PingFrame;

    if-nez v0, :cond_b

    .line 109
    new-instance v0, Lcom/tds/common/websocket/framing/PingFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/PingFrame;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketAdapter;->pingFrame:Lcom/tds/common/websocket/framing/PingFrame;

    .line 111
    :cond_b
    iget-object v0, p0, Lcom/tds/common/websocket/conn/WebSocketAdapter;->pingFrame:Lcom/tds/common/websocket/framing/PingFrame;

    return-object v0
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshake;)V
    .registers 4
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "request"    # Lcom/tds/common/websocket/handshake/ClientHandshake;
    .param p3, "response"    # Lcom/tds/common/websocket/handshake/ServerHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/drafts/Draft;Lcom/tds/common/websocket/handshake/ClientHandshake;)Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;
    .registers 5
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "draft"    # Lcom/tds/common/websocket/drafts/Draft;
    .param p3, "request"    # Lcom/tds/common/websocket/handshake/ClientHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;

    invoke-direct {v0}, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;-><init>()V

    return-object v0
.end method

.method public onWebsocketHandshakeSentAsClient(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/handshake/ClientHandshake;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "request"    # Lcom/tds/common/websocket/handshake/ClientHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public onWebsocketPing(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 5
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "f"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 85
    new-instance v0, Lcom/tds/common/websocket/framing/PongFrame;

    move-object v1, p2

    check-cast v1, Lcom/tds/common/websocket/framing/PingFrame;

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/framing/PongFrame;-><init>(Lcom/tds/common/websocket/framing/PingFrame;)V

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/conn/WebSocket;->sendFrame(Lcom/tds/common/websocket/framing/Framedata;)V

    .line 86
    return-void
.end method

.method public onWebsocketPong(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 3
    .param p1, "conn"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "f"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 96
    return-void
.end method
