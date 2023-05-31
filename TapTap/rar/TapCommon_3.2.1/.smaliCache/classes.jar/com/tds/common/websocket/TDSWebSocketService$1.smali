.class Lcom/tds/common/websocket/TDSWebSocketService$1;
.super Ljava/lang/Object;
.source "TDSWebSocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/websocket/TDSWebSocketService;->retryConnectWithDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/websocket/TDSWebSocketService;


# direct methods
.method constructor <init>(Lcom/tds/common/websocket/TDSWebSocketService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/websocket/TDSWebSocketService;

    .line 138
    iput-object p1, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 141
    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/tds/common/websocket/TDSWebSocketService;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 142
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    const/4 v1, 0x1

    # setter for: Lcom/tds/common/websocket/TDSWebSocketService;->isRetryInSleep:Z
    invoke-static {v0, v1}, Lcom/tds/common/websocket/TDSWebSocketService;->access$102(Lcom/tds/common/websocket/TDSWebSocketService;Z)Z

    .line 143
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v4

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/tds/common/websocket/TDSWebSocketService;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v4, 0x3c

    if-le v0, v4, :cond_24

    goto :goto_2c

    :cond_24
    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/tds/common/websocket/TDSWebSocketService;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    :goto_2c
    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 145
    .local v0, "delay":I
    int-to-long v2, v0

    const/4 v4, 0x0

    :try_start_37
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 146
    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z
    invoke-static {}, Lcom/tds/common/websocket/TDSWebSocketService;->access$200()Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;
    invoke-static {v2}, Lcom/tds/common/websocket/TDSWebSocketService;->access$300(Lcom/tds/common/websocket/TDSWebSocketService;)Lcom/tds/common/websocket/WebSocketClient;

    move-result-object v2

    if-eqz v2, :cond_5c

    :cond_48
    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;
    invoke-static {v2}, Lcom/tds/common/websocket/TDSWebSocketService;->access$300(Lcom/tds/common/websocket/TDSWebSocketService;)Lcom/tds/common/websocket/WebSocketClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v2

    if-nez v2, :cond_8d

    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z
    invoke-static {v2}, Lcom/tds/common/websocket/TDSWebSocketService;->access$400(Lcom/tds/common/websocket/TDSWebSocketService;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 147
    :cond_5c
    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    new-instance v3, Lcom/tds/common/websocket/WebSocketClient;

    iget-object v5, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->destUrl:Ljava/lang/String;
    invoke-static {v5}, Lcom/tds/common/websocket/TDSWebSocketService;->access$500(Lcom/tds/common/websocket/TDSWebSocketService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iget-object v6, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->webSocketConfig:Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;
    invoke-static {v6}, Lcom/tds/common/websocket/TDSWebSocketService;->access$600(Lcom/tds/common/websocket/TDSWebSocketService;)Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    move-result-object v6

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->instance:Lcom/tds/common/websocket/TDSWebSocketService;
    invoke-static {}, Lcom/tds/common/websocket/TDSWebSocketService;->access$700()Lcom/tds/common/websocket/TDSWebSocketService;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lcom/tds/common/websocket/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;Lcom/tds/common/websocket/WebSocketEventListener;)V

    # setter for: Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;
    invoke-static {v2, v3}, Lcom/tds/common/websocket/TDSWebSocketService;->access$302(Lcom/tds/common/websocket/TDSWebSocketService;Lcom/tds/common/websocket/WebSocketClient;)Lcom/tds/common/websocket/WebSocketClient;

    .line 148
    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # getter for: Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;
    invoke-static {v2}, Lcom/tds/common/websocket/TDSWebSocketService;->access$300(Lcom/tds/common/websocket/TDSWebSocketService;)Lcom/tds/common/websocket/WebSocketClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/common/websocket/WebSocketClient;->connect()V

    .line 149
    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # setter for: Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z
    invoke-static {v2, v1}, Lcom/tds/common/websocket/TDSWebSocketService;->access$402(Lcom/tds/common/websocket/TDSWebSocketService;Z)Z

    .line 150
    const-string v1, " websocket reconnect after close"

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 152
    :cond_8d
    iget-object v1, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # setter for: Lcom/tds/common/websocket/TDSWebSocketService;->isRetryInSleep:Z
    invoke-static {v1, v4}, Lcom/tds/common/websocket/TDSWebSocketService;->access$102(Lcom/tds/common/websocket/TDSWebSocketService;Z)Z
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_92} :catch_93

    .line 156
    goto :goto_b3

    .line 153
    :catch_93
    move-exception v1

    .line 154
    .local v1, "e1":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService$1;->this$0:Lcom/tds/common/websocket/TDSWebSocketService;

    # setter for: Lcom/tds/common/websocket/TDSWebSocketService;->isRetryInSleep:Z
    invoke-static {v2, v4}, Lcom/tds/common/websocket/TDSWebSocketService;->access$102(Lcom/tds/common/websocket/TDSWebSocketService;Z)Z

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " websocket reconnect fail error =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 158
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :goto_b3
    return-void
.end method
