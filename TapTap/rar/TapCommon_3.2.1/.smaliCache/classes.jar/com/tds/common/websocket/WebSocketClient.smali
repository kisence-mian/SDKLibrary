.class public Lcom/tds/common/websocket/WebSocketClient;
.super Lcom/tds/common/websocket/client/WebSocketClient;
.source "WebSocketClient.java"


# instance fields
.field private webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;Lcom/tds/common/websocket/WebSocketEventListener;)V
    .registers 8
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "webSocketConfig"    # Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;
    .param p3, "listener"    # Lcom/tds/common/websocket/WebSocketEventListener;

    .line 14
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 15
    iput-object p3, p0, Lcom/tds/common/websocket/WebSocketClient;->webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;

    .line 16
    iget v0, p2, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;->connectionTimeout:I

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/WebSocketClient;->setConnectionLostTimeout(I)V

    .line 17
    iget-object v0, p2, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;->heads:Ljava/util/Map;

    if-eqz v0, :cond_30

    .line 18
    iget-object v0, p2, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;->heads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 19
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p2, Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;->heads:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/tds/common/websocket/WebSocketClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_18

    .line 23
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_30
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;Lcom/tds/common/websocket/WebSocketEventListener;)V
    .registers 4
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p3, "listener"    # Lcom/tds/common/websocket/WebSocketEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tds/common/websocket/WebSocketEventListener;",
            ")V"
        }
    .end annotation

    .line 26
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Ljava/util/Map;)V

    .line 27
    iput-object p3, p0, Lcom/tds/common/websocket/WebSocketClient;->webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;

    .line 28
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--websocket close --- code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remote = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/tds/common/websocket/WebSocketClient;->webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;

    if-eqz v0, :cond_31

    .line 54
    invoke-interface {v0, p1, p2, p3}, Lcom/tds/common/websocket/WebSocketEventListener;->onClose(ILjava/lang/String;Z)V

    .line 56
    :cond_31
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "websocket error e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tds/common/websocket/WebSocketClient;->webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;

    if-eqz v0, :cond_21

    .line 62
    invoke-interface {v0, p1}, Lcom/tds/common/websocket/WebSocketEventListener;->onError(Ljava/lang/Exception;)V

    .line 64
    :cond_21
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "websocket message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/tds/common/websocket/WebSocketClient;->webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;

    if-eqz v0, :cond_1d

    .line 46
    invoke-interface {v0, p1}, Lcom/tds/common/websocket/WebSocketEventListener;->onMessage(Ljava/lang/String;)V

    .line 48
    :cond_1d
    return-void
.end method

.method public onOpen(Lcom/tds/common/websocket/handshake/ServerHandshake;)V
    .registers 3
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/ServerHandshake;

    .line 36
    const-string v0, "---websocket open----"

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/tds/common/websocket/WebSocketClient;->webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;

    if-eqz v0, :cond_c

    .line 38
    invoke-interface {v0}, Lcom/tds/common/websocket/WebSocketEventListener;->onOpen()V

    .line 40
    :cond_c
    return-void
.end method

.method public removeEventListener()V
    .registers 2

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/WebSocketClient;->webClientListener:Lcom/tds/common/websocket/WebSocketEventListener;

    .line 32
    return-void
.end method
