.class public Lcom/tds/common/websocket/conn/SocketChannelIOHelper;
.super Ljava/lang/Object;
.source "SocketChannelIOHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Utility class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static batch(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .registers 7
    .param p0, "ws"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p1, "sockchannel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 85
    return v0

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 88
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 90
    .local v2, "c":Lcom/tds/common/websocket/conn/WrappedByteChannel;
    if-nez v1, :cond_20

    .line 91
    instance-of v3, p1, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    if-eqz v3, :cond_3a

    .line 92
    move-object v2, p1

    check-cast v2, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    .line 93
    invoke-interface {v2}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->isNeedWrite()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 94
    invoke-interface {v2}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->writeMore()V

    goto :goto_3a

    .line 101
    :cond_20
    invoke-interface {p1, v1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 102
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_2a

    .line 103
    return v0

    .line 105
    :cond_2a
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 106
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 108
    if-nez v1, :cond_20

    .line 111
    :cond_3a
    :goto_3a
    iget-object v3, p0, Lcom/tds/common/websocket/conn/WebSocketImpl;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->isFlushAndClose()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getDraft()Lcom/tds/common/websocket/drafts/Draft;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 112
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getDraft()Lcom/tds/common/websocket/drafts/Draft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/common/websocket/drafts/Draft;->getRole()Lcom/tds/common/websocket/enums/Role;

    move-result-object v3

    if-eqz v3, :cond_67

    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getDraft()Lcom/tds/common/websocket/drafts/Draft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/common/websocket/drafts/Draft;->getRole()Lcom/tds/common/websocket/enums/Role;

    move-result-object v3

    sget-object v4, Lcom/tds/common/websocket/enums/Role;->SERVER:Lcom/tds/common/websocket/enums/Role;

    if-ne v3, v4, :cond_67

    .line 113
    invoke-virtual {p0}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection()V

    .line 115
    :cond_67
    if-eqz v2, :cond_72

    move-object v3, p1

    check-cast v3, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    invoke-interface {v3}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->isNeedWrite()Z

    move-result v3

    if-nez v3, :cond_73

    :cond_72
    const/4 v0, 0x1

    :cond_73
    return v0
.end method

.method public static read(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    .registers 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 43
    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 44
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 46
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    .line 47
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->eot()V

    .line 48
    return v1

    .line 50
    :cond_12
    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public static readMore(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/conn/WrappedByteChannel;)Z
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "channel"    # Lcom/tds/common/websocket/conn/WrappedByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 65
    invoke-interface {p2, p0}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 66
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 68
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 69
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->eot()V

    .line 70
    const/4 v1, 0x0

    return v1

    .line 72
    :cond_12
    invoke-interface {p2}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->isNeedRead()Z

    move-result v1

    return v1
.end method
