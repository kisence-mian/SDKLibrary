.class public abstract Lcom/tds/common/websocket/conn/AbstractWebSocket;
.super Lcom/tds/common/websocket/conn/WebSocketAdapter;
.source "AbstractWebSocket.java"


# instance fields
.field private connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

.field private connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private connectionLostTimeout:J

.field private reuseAddr:Z

.field private final syncConnectionLost:Ljava/lang/Object;

.field private tcpNoDelay:Z

.field private websocketRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 43
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/WebSocketAdapter;-><init>()V

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostTimeout:J

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->websocketRunning:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/tds/common/websocket/conn/AbstractWebSocket;)J
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/websocket/conn/AbstractWebSocket;

    .line 43
    iget-wide v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostTimeout:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/tds/common/websocket/conn/AbstractWebSocket;Lcom/tds/common/websocket/conn/WebSocket;J)V
    .registers 4
    .param p0, "x0"    # Lcom/tds/common/websocket/conn/AbstractWebSocket;
    .param p1, "x1"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "x2"    # J

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->executeConnectionLostDetection(Lcom/tds/common/websocket/conn/WebSocket;J)V

    return-void
.end method

.method private cancelConnectionLostTimer()V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 248
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 249
    iput-object v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_14

    .line 252
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 253
    iput-object v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 255
    :cond_14
    return-void
.end method

.method private executeConnectionLostDetection(Lcom/tds/common/websocket/conn/WebSocket;J)V
    .registers 7
    .param p1, "webSocket"    # Lcom/tds/common/websocket/conn/WebSocket;
    .param p2, "minimumPongTime"    # J

    .line 216
    instance-of v0, p1, Lcom/tds/common/websocket/conn/WebSocketImpl;

    if-nez v0, :cond_5

    .line 217
    return-void

    .line 219
    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 220
    .local v0, "webSocketImpl":Lcom/tds/common/websocket/conn/WebSocketImpl;
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getLastPong()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_1d

    .line 221
    const-string v1, "Closing connection due to no pong received: {}"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    const/16 v1, 0x3ee

    const-string v2, "The connection was closed because the other endpoint did not respond with a pong in time. For more information check: https://github.com/TooTallNate/Java-WebSocket/wiki/Lost-connection-detection"

    invoke-virtual {v0, v1, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    goto :goto_2c

    .line 225
    :cond_1d
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 226
    invoke-virtual {v0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->sendPing()V

    goto :goto_2c

    .line 228
    :cond_27
    const-string v1, "Trying to ping a non open connection: {}"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    :goto_2c
    return-void
.end method

.method private restartConnectionLostTimer()V
    .registers 9

    .line 176
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 177
    new-instance v0, Lcom/tds/common/websocket/util/NamedThreadFactory;

    const-string v1, "connectionLostChecker"

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 179
    new-instance v2, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;

    invoke-direct {v2, p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket$1;-><init>(Lcom/tds/common/websocket/conn/AbstractWebSocket;)V

    .line 202
    .local v2, "connectionLostChecker":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v5, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostTimeout:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 203
    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 205
    return-void
.end method


# virtual methods
.method public getConnectionLostTimeout()I
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    return v1

    .line 100
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected abstract getConnections()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tds/common/websocket/conn/WebSocket;",
            ">;"
        }
    .end annotation
.end method

.method public isReuseAddr()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->reuseAddr:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->tcpNoDelay:Z

    return v0
.end method

.method public setConnectionLostTimeout(I)V
    .registers 7
    .param p1, "connectionLostTimeout"    # I

    .line 111
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostTimeout:J

    .line 113
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1c

    .line 114
    const-string v1, "Connection lost timer stopped"

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 116
    monitor-exit v0

    return-void

    .line 118
    :cond_1c
    iget-boolean v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->websocketRunning:Z

    if-eqz v1, :cond_53

    .line 119
    const-string v1, "Connection lost timer restarted"

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_55

    .line 122
    :try_start_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->getConnections()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v1, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tds/common/websocket/conn/WebSocket;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/websocket/conn/WebSocket;

    .line 125
    .local v3, "conn":Lcom/tds/common/websocket/conn/WebSocket;
    instance-of v4, v3, Lcom/tds/common/websocket/conn/WebSocketImpl;

    if-eqz v4, :cond_48

    .line 126
    move-object v4, v3

    check-cast v4, Lcom/tds/common/websocket/conn/WebSocketImpl;

    .line 127
    .local v4, "webSocketImpl":Lcom/tds/common/websocket/conn/WebSocketImpl;
    invoke-virtual {v4}, Lcom/tds/common/websocket/conn/WebSocketImpl;->updateLastPong()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_48} :catch_4a
    .catchall {:try_start_25 .. :try_end_48} :catchall_55

    .line 129
    .end local v3    # "conn":Lcom/tds/common/websocket/conn/WebSocket;
    .end local v4    # "webSocketImpl":Lcom/tds/common/websocket/conn/WebSocketImpl;
    :cond_48
    goto :goto_32

    .line 132
    .end local v1    # "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tds/common/websocket/conn/WebSocket;>;"
    :cond_49
    goto :goto_50

    .line 130
    :catch_4a
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v2, "Exception during connection lost restart"

    invoke-static {v2, v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_50
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 135
    :cond_53
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_55

    throw v1
.end method

.method public setReuseAddr(Z)V
    .registers 2
    .param p1, "reuseAddr"    # Z

    .line 298
    iput-boolean p1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->reuseAddr:Z

    .line 299
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 2
    .param p1, "tcpNoDelay"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->tcpNoDelay:Z

    .line 277
    return-void
.end method

.method protected startConnectionLostTimer()V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-wide v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_12

    .line 161
    const-string v1, "Connection lost timer deactivated"

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_12
    const-string v1, "Connection lost timer started"

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->websocketRunning:Z

    .line 166
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method protected stopConnectionLostTimer()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_16

    .line 146
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/common/websocket/conn/AbstractWebSocket;->websocketRunning:Z

    .line 147
    const-string v1, "Connection lost timer stopped"

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/tds/common/websocket/conn/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 150
    :cond_16
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
