.class Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/websocket/client/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebsocketWriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/websocket/client/WebSocketClient;

.field private final webSocketClient:Lcom/tds/common/websocket/client/WebSocketClient;


# direct methods
.method constructor <init>(Lcom/tds/common/websocket/client/WebSocketClient;Lcom/tds/common/websocket/client/WebSocketClient;)V
    .registers 3
    .param p2, "webSocketClient"    # Lcom/tds/common/websocket/client/WebSocketClient;

    .line 785
    iput-object p1, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-object p2, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->webSocketClient:Lcom/tds/common/websocket/client/WebSocketClient;

    .line 787
    return-void
.end method

.method private closeSocket()V
    .registers 4

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/tds/common/websocket/client/WebSocketClient;->access$400(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 829
    iget-object v0, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->socket:Ljava/net/Socket;
    invoke-static {v0}, Lcom/tds/common/websocket/client/WebSocketClient;->access$400(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 833
    :cond_11
    goto :goto_1a

    .line 831
    :catch_12
    move-exception v0

    .line 832
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->webSocketClient:Lcom/tds/common/websocket/client/WebSocketClient;

    invoke-virtual {v1, v2, v0}, Lcom/tds/common/websocket/client/WebSocketClient;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 834
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1a
    return-void
.end method

.method private runWriteData()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_30

    .line 810
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;
    invoke-static {v1}, Lcom/tds/common/websocket/client/WebSocketClient;->access$200(Lcom/tds/common/websocket/client/WebSocketClient;)Lcom/tds/common/websocket/conn/WebSocketImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 811
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;
    invoke-static {v2}, Lcom/tds/common/websocket/client/WebSocketClient;->access$300(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 812
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;
    invoke-static {v2}, Lcom/tds/common/websocket/client/WebSocketClient;->access$300(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_2f} :catch_31

    .line 813
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 820
    :cond_30
    goto :goto_6c

    .line 814
    :catch_31
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->engine:Lcom/tds/common/websocket/conn/WebSocketImpl;
    invoke-static {v2}, Lcom/tds/common/websocket/client/WebSocketClient;->access$200(Lcom/tds/common/websocket/client/WebSocketClient;)Lcom/tds/common/websocket/conn/WebSocketImpl;

    move-result-object v2

    iget-object v2, v2, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 816
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;
    invoke-static {v4}, Lcom/tds/common/websocket/client/WebSocketClient;->access$300(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 817
    iget-object v4, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # getter for: Lcom/tds/common/websocket/client/WebSocketClient;->ostream:Ljava/io/OutputStream;
    invoke-static {v4}, Lcom/tds/common/websocket/client/WebSocketClient;->access$300(Lcom/tds/common/websocket/client/WebSocketClient;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 818
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_3e

    .line 819
    :cond_65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 821
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_6c
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 791
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketWriteThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x0

    :try_start_23
    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->runWriteData()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_31
    .catchall {:try_start_23 .. :try_end_26} :catchall_2f

    .line 797
    :goto_26
    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->closeSocket()V

    .line 798
    iget-object v1, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # setter for: Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;
    invoke-static {v1, v0}, Lcom/tds/common/websocket/client/WebSocketClient;->access$102(Lcom/tds/common/websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 799
    goto :goto_38

    .line 797
    :catchall_2f
    move-exception v1

    goto :goto_39

    .line 794
    :catch_31
    move-exception v1

    .line 795
    .local v1, "e":Ljava/io/IOException;
    :try_start_32
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # invokes: Lcom/tds/common/websocket/client/WebSocketClient;->handleIOException(Ljava/io/IOException;)V
    invoke-static {v2, v1}, Lcom/tds/common/websocket/client/WebSocketClient;->access$000(Lcom/tds/common/websocket/client/WebSocketClient;Ljava/io/IOException;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2f

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_26

    .line 800
    :goto_38
    return-void

    .line 797
    :goto_39
    invoke-direct {p0}, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->closeSocket()V

    .line 798
    iget-object v2, p0, Lcom/tds/common/websocket/client/WebSocketClient$WebsocketWriteThread;->this$0:Lcom/tds/common/websocket/client/WebSocketClient;

    # setter for: Lcom/tds/common/websocket/client/WebSocketClient;->writeThread:Ljava/lang/Thread;
    invoke-static {v2, v0}, Lcom/tds/common/websocket/client/WebSocketClient;->access$102(Lcom/tds/common/websocket/client/WebSocketClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 799
    throw v1
.end method
