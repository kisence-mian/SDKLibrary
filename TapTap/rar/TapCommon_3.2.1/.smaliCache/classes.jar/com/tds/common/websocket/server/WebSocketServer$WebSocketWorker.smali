.class public Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;
.super Ljava/lang/Thread;
.source "WebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/websocket/server/WebSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebSocketWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private iqueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/tds/common/websocket/conn/WebSocketImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tds/common/websocket/server/WebSocketServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1047
    const-class v0, Lcom/tds/common/websocket/server/WebSocketServer;

    return-void
.end method

.method public constructor <init>(Lcom/tds/common/websocket/server/WebSocketServer;)V
    .registers 5
    .param p1, "this$0"    # Lcom/tds/common/websocket/server/WebSocketServer;

    .line 1051
    iput-object p1, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lcom/tds/common/websocket/server/WebSocketServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1052
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->iqueue:Ljava/util/concurrent/BlockingQueue;

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocketWorker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->setName(Ljava/lang/String;)V

    .line 1054
    new-instance v0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker$1;

    invoke-direct {v0, p0, p1}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker$1;-><init>(Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;Lcom/tds/common/websocket/server/WebSocketServer;)V

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1060
    return-void
.end method

.method private doDecode(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "ws"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1094
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->decode(Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_b
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 1098
    :goto_3
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lcom/tds/common/websocket/server/WebSocketServer;

    # invokes: Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    invoke-static {v0, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->access$100(Lcom/tds/common/websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V

    .line 1099
    goto :goto_12

    .line 1098
    :catchall_9
    move-exception v0

    goto :goto_13

    .line 1095
    :catch_b
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v1, "Error while reading from remote connection"

    invoke-static {v1, v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_9

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 1100
    :goto_12
    return-void

    .line 1098
    :goto_13
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lcom/tds/common/websocket/server/WebSocketServer;

    # invokes: Lcom/tds/common/websocket/server/WebSocketServer;->pushBuffer(Ljava/nio/ByteBuffer;)V
    invoke-static {v1, p2}, Lcom/tds/common/websocket/server/WebSocketServer;->access$100(Lcom/tds/common/websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V

    .line 1099
    throw v0
.end method


# virtual methods
.method public put(Lcom/tds/common/websocket/conn/WebSocketImpl;)V
    .registers 3
    .param p1, "ws"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->iqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 1064
    return-void
.end method

.method public run()V
    .registers 4

    .line 1068
    const/4 v0, 0x0

    .line 1072
    .local v0, "ws":Lcom/tds/common/websocket/conn/WebSocketImpl;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->iqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/websocket/conn/WebSocketImpl;

    move-object v0, v1

    .line 1073
    iget-object v1, v0, Lcom/tds/common/websocket/conn/WebSocketImpl;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 1074
    .local v1, "buf":Ljava/nio/ByteBuffer;
    nop

    .line 1075
    invoke-direct {p0, v0, v1}, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->doDecode(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/nio/ByteBuffer;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_16} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_16} :catch_18

    .line 1076
    const/4 v0, 0x0

    .line 1077
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 1080
    :catch_18
    move-exception v1

    .line 1081
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/tds/common/websocket/server/WebSocketServer$WebSocketWorker;->this$0:Lcom/tds/common/websocket/server/WebSocketServer;

    # invokes: Lcom/tds/common/websocket/server/WebSocketServer;->handleFatal(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V
    invoke-static {v2, v0, v1}, Lcom/tds/common/websocket/server/WebSocketServer;->access$000(Lcom/tds/common/websocket/server/WebSocketServer;Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    goto :goto_28

    .line 1078
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1f
    move-exception v1

    .line 1079
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1082
    .end local v1    # "e":Ljava/lang/InterruptedException;
    nop

    .line 1083
    :goto_28
    return-void
.end method
