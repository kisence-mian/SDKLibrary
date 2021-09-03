.class public Lcom/tds/common/websocket/TDSWebSocketService;
.super Ljava/lang/Object;
.source "TDSWebSocketService.java"

# interfaces
.implements Lcom/tds/common/websocket/WebSocketEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfigBuilder;,
        Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;
    }
.end annotation


# static fields
.field public static final STATE_CLOSED:I = 0x2

.field public static final STATE_CLOSING:I = 0x3

.field public static final STATE_OPEN:I = 0x1

.field private static final TRY_MAX_TIMES:I = 0x3c

.field private static volatile hasOffLine:Z

.field private static volatile instance:Lcom/tds/common/websocket/TDSWebSocketService;

.field private static tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final EVENT_CLOSE:I

.field private final EVENT_ERROR:I

.field private final EVENT_MESSAGE:I

.field private final EVENT_OPEN:I

.field private destUrl:Ljava/lang/String;

.field private volatile isConnecting:Z

.field private volatile isRetryInSleep:Z

.field private messageListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/tds/common/websocket/WebSocketMessage$Type;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tds/common/websocket/WebSocketEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

.field private webSocketConfig:Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tds/common/websocket/TDSWebSocketService;->tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z

    return-void
.end method

.method private constructor <init>(Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;)V
    .registers 3
    .param p1, "webSocketConfig"    # Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->EVENT_OPEN:I

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->EVENT_CLOSE:I

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->EVENT_MESSAGE:I

    .line 23
    const/4 v0, 0x4

    iput v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->EVENT_ERROR:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isRetryInSleep:Z

    .line 33
    iput-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->messageListenerMap:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketConfig:Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 13
    sget-object v0, Lcom/tds/common/websocket/TDSWebSocketService;->tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tds/common/websocket/TDSWebSocketService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/TDSWebSocketService;
    .param p1, "x1"    # Z

    .line 13
    iput-boolean p1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isRetryInSleep:Z

    return p1
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 13
    sget-boolean v0, Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tds/common/websocket/TDSWebSocketService;)Lcom/tds/common/websocket/WebSocketClient;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/TDSWebSocketService;

    .line 13
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tds/common/websocket/TDSWebSocketService;Lcom/tds/common/websocket/WebSocketClient;)Lcom/tds/common/websocket/WebSocketClient;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/TDSWebSocketService;
    .param p1, "x1"    # Lcom/tds/common/websocket/WebSocketClient;

    .line 13
    iput-object p1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tds/common/websocket/TDSWebSocketService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/TDSWebSocketService;

    .line 13
    iget-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z

    return v0
.end method

.method static synthetic access$402(Lcom/tds/common/websocket/TDSWebSocketService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/TDSWebSocketService;
    .param p1, "x1"    # Z

    .line 13
    iput-boolean p1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tds/common/websocket/TDSWebSocketService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/TDSWebSocketService;

    .line 13
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->destUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tds/common/websocket/TDSWebSocketService;)Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/websocket/TDSWebSocketService;

    .line 13
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketConfig:Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    return-object v0
.end method

.method static synthetic access$700()Lcom/tds/common/websocket/TDSWebSocketService;
    .registers 1

    .line 13
    sget-object v0, Lcom/tds/common/websocket/TDSWebSocketService;->instance:Lcom/tds/common/websocket/TDSWebSocketService;

    return-object v0
.end method

.method private clearWebSocketClient()V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    if-eqz v0, :cond_2d

    .line 186
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->removeEventListener()V

    .line 188
    :try_start_9
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->close()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    .line 191
    goto :goto_2a

    .line 189
    :catchall_f
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearWebSocketClient error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    .line 194
    :cond_2d
    return-void
.end method

.method private varargs dispatchEvent(I[Ljava/lang/Object;)V
    .registers 11
    .param p1, "event"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->messageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 198
    .local v0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/tds/common/websocket/WebSocketMessage$Type;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/WebSocketMessage$Type;

    .line 199
    .local v2, "type":Lcom/tds/common/websocket/WebSocketMessage$Type;
    iget-object v3, p0, Lcom/tds/common/websocket/TDSWebSocketService;->messageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 200
    iget-object v3, p0, Lcom/tds/common/websocket/TDSWebSocketService;->messageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 201
    .local v3, "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tds/common/websocket/WebSocketEventListener;>;"
    if-eqz v3, :cond_5a

    .line 202
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/common/websocket/WebSocketEventListener;

    .line 203
    .local v4, "listener":Lcom/tds/common/websocket/WebSocketEventListener;
    if-eqz v4, :cond_5a

    .line 204
    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_5c

    :pswitch_34
    goto :goto_5a

    .line 212
    :pswitch_35
    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Exception;

    invoke-interface {v4, v5}, Lcom/tds/common/websocket/WebSocketEventListener;->onError(Ljava/lang/Exception;)V

    goto :goto_5a

    .line 209
    :pswitch_3d
    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p2, v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v7, p2, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/tds/common/websocket/WebSocketEventListener;->onClose(ILjava/lang/String;Z)V

    .line 210
    goto :goto_5a

    .line 206
    :pswitch_57
    invoke-interface {v4}, Lcom/tds/common/websocket/WebSocketEventListener;->onOpen()V

    .line 218
    .end local v2    # "type":Lcom/tds/common/websocket/WebSocketMessage$Type;
    .end local v3    # "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tds/common/websocket/WebSocketEventListener;>;"
    .end local v4    # "listener":Lcom/tds/common/websocket/WebSocketEventListener;
    :cond_5a
    :goto_5a
    goto :goto_a

    .line 219
    :cond_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_57
        :pswitch_3d
        :pswitch_34
        :pswitch_35
    .end packed-switch
.end method

.method public static getInstance(Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;)Lcom/tds/common/websocket/TDSWebSocketService;
    .registers 3
    .param p0, "webSocketConfig"    # Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    .line 44
    if-eqz p0, :cond_1c

    .line 47
    sget-object v0, Lcom/tds/common/websocket/TDSWebSocketService;->instance:Lcom/tds/common/websocket/TDSWebSocketService;

    if-nez v0, :cond_19

    .line 48
    const-class v0, Lcom/tds/common/websocket/TDSWebSocketService;

    monitor-enter v0

    .line 49
    :try_start_9
    sget-object v1, Lcom/tds/common/websocket/TDSWebSocketService;->instance:Lcom/tds/common/websocket/TDSWebSocketService;

    if-nez v1, :cond_14

    .line 50
    new-instance v1, Lcom/tds/common/websocket/TDSWebSocketService;

    invoke-direct {v1, p0}, Lcom/tds/common/websocket/TDSWebSocketService;-><init>(Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;)V

    sput-object v1, Lcom/tds/common/websocket/TDSWebSocketService;->instance:Lcom/tds/common/websocket/TDSWebSocketService;

    .line 52
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1

    .line 54
    :cond_19
    :goto_19
    sget-object v0, Lcom/tds/common/websocket/TDSWebSocketService;->instance:Lcom/tds/common/websocket/TDSWebSocketService;

    return-object v0

    .line 45
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "socket config should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized checkConnection()V
    .registers 4

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->destUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z

    if-eqz v0, :cond_e

    goto :goto_39

    .line 82
    :cond_e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z

    .line 83
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v0

    if-nez v0, :cond_37

    .line 84
    .end local p0    # "this":Lcom/tds/common/websocket/TDSWebSocketService;
    :cond_1d
    invoke-direct {p0}, Lcom/tds/common/websocket/TDSWebSocketService;->clearWebSocketClient()V

    .line 85
    new-instance v0, Lcom/tds/common/websocket/WebSocketClient;

    iget-object v1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->destUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketConfig:Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    invoke-direct {v0, v1, v2, p0}, Lcom/tds/common/websocket/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;Lcom/tds/common/websocket/WebSocketEventListener;)V

    iput-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    .line 86
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->connect()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3b

    .line 89
    :cond_37
    monitor-exit p0

    return-void

    .line 81
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 80
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .registers 2

    monitor-enter p0

    .line 95
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z

    .line 96
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 97
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->close()V

    .line 99
    .end local p0    # "this":Lcom/tds/common/websocket/TDSWebSocketService;
    :cond_15
    invoke-direct {p0}, Lcom/tds/common/websocket/TDSWebSocketService;->clearWebSocketClient()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 100
    monitor-exit p0

    return-void

    .line 94
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectionState()I
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    const/4 v1, 0x2

    if-eqz v0, :cond_22

    .line 223
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 224
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_f
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 226
    return v1

    .line 227
    :cond_18
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 228
    const/4 v0, 0x3

    return v0

    .line 231
    :cond_22
    return v1
.end method

.method public onClose(ILjava/lang/String;Z)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z

    .line 120
    invoke-direct {p0}, Lcom/tds/common/websocket/TDSWebSocketService;->clearWebSocketClient()V

    .line 121
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-direct {p0, v2, v1}, Lcom/tds/common/websocket/TDSWebSocketService;->dispatchEvent(I[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " webSocketService onError offline = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v1}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 179
    iget-object v1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v1}, Lcom/tds/common/websocket/WebSocketClient;->close()V

    .line 181
    :cond_2c
    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/tds/common/websocket/TDSWebSocketService;->dispatchEvent(I[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 167
    invoke-static {p1}, Lcom/tds/common/websocket/WebSocketMessage;->getMessageType(Ljava/lang/String;)Lcom/tds/common/websocket/WebSocketMessage$Type;

    move-result-object v0

    .line 168
    .local v0, "type":Lcom/tds/common/websocket/WebSocketMessage$Type;
    iget-object v1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->messageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 169
    .local v1, "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tds/common/websocket/WebSocketEventListener;>;"
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 170
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/WebSocketEventListener;

    invoke-interface {v2, p1}, Lcom/tds/common/websocket/WebSocketEventListener;->onMessage(Ljava/lang/String;)V

    .line 172
    :cond_1d
    return-void
.end method

.method public onOpen()V
    .registers 4

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z

    .line 113
    sget-object v1, Lcom/tds/common/websocket/TDSWebSocketService;->tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v2, v0}, Lcom/tds/common/websocket/TDSWebSocketService;->dispatchEvent(I[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public registerMessageListener(Lcom/tds/common/websocket/WebSocketMessage$Type;Lcom/tds/common/websocket/WebSocketEventListener;)V
    .registers 5
    .param p1, "type"    # Lcom/tds/common/websocket/WebSocketMessage$Type;
    .param p2, "listener"    # Lcom/tds/common/websocket/WebSocketEventListener;

    .line 103
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->messageListenerMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public declared-synchronized retryConnectWithDelay()V
    .registers 7

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->destUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_77

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    .line 133
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_77

    if-eqz v0, :cond_19

    monitor-exit p0

    return-void

    .line 136
    .end local p0    # "this":Lcom/tds/common/websocket/TDSWebSocketService;
    :cond_19
    :try_start_19
    sget-boolean v0, Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z

    if-nez v0, :cond_75

    iget-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isRetryInSleep:Z

    if-nez v0, :cond_75

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " websocket reconnect after close wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tds/common/websocket/TDSWebSocketService;->tryTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s in thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tds/common/websocket/TDSWebSocketService$1;

    invoke-direct {v1, p0}, Lcom/tds/common/websocket/TDSWebSocketService$1;-><init>(Lcom/tds/common/websocket/TDSWebSocketService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webSocketReTryConnect-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_75
    .catchall {:try_start_19 .. :try_end_75} :catchall_77

    .line 163
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_75
    monitor-exit p0

    return-void

    .line 130
    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 236
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 237
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/WebSocketClient;->send(Ljava/lang/String;)V

    .line 240
    :cond_17
    return-void
.end method

.method public declared-synchronized setDestUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "dest_url"    # Ljava/lang/String;

    monitor-enter p0

    .line 63
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->destUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3b

    .line 66
    :cond_10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tds/common/websocket/TDSWebSocketService;->hasOffLine:Z

    .line 67
    iput-object p1, p0, Lcom/tds/common/websocket/TDSWebSocketService;->destUrl:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 69
    invoke-direct {p0}, Lcom/tds/common/websocket/TDSWebSocketService;->clearWebSocketClient()V

    .line 71
    .end local p0    # "this":Lcom/tds/common/websocket/TDSWebSocketService;
    :cond_24
    new-instance v0, Lcom/tds/common/websocket/WebSocketClient;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketConfig:Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;

    invoke-direct {v0, v1, v2, p0}, Lcom/tds/common/websocket/WebSocketClient;-><init>(Ljava/net/URI;Lcom/tds/common/websocket/TDSWebSocketService$WebSocketConfig;Lcom/tds/common/websocket/WebSocketEventListener;)V

    iput-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    .line 72
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->webSocketClient:Lcom/tds/common/websocket/WebSocketClient;

    invoke-virtual {v0}, Lcom/tds/common/websocket/WebSocketClient;->connect()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->isConnecting:Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3d

    .line 74
    monitor-exit p0

    return-void

    .line 64
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    .line 62
    .end local p1    # "dest_url":Ljava/lang/String;
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterMessageListener(Lcom/tds/common/websocket/WebSocketMessage$Type;)V
    .registers 3
    .param p1, "type"    # Lcom/tds/common/websocket/WebSocketMessage$Type;

    .line 107
    iget-object v0, p0, Lcom/tds/common/websocket/TDSWebSocketService;->messageListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method
