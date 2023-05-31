.class public Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;
.super Ljava/lang/Object;
.source "AbstractWrappedByteChannel.java"

# interfaces
.implements Lcom/tds/common/websocket/conn/WrappedByteChannel;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/ByteChannel;


# direct methods
.method public constructor <init>(Lcom/tds/common/websocket/conn/WrappedByteChannel;)V
    .registers 2
    .param p1, "towrap"    # Lcom/tds/common/websocket/conn/WrappedByteChannel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .registers 2
    .param p1, "towrap"    # Ljava/nio/channels/ByteChannel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 70
    return-void
.end method

.method public isBlocking()Z
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_d

    .line 104
    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0

    .line 105
    :cond_d
    instance-of v1, v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    if-eqz v1, :cond_18

    .line 106
    check-cast v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    invoke-interface {v0}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->isBlocking()Z

    move-result v0

    return v0

    .line 108
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedRead()Z
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    invoke-interface {v0}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->isNeedRead()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isNeedWrite()Z
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    invoke-interface {v0}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->isNeedWrite()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    invoke-interface {v0, p1}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public writeMore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/tds/common/websocket/conn/AbstractWrappedByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v1, v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    if-eqz v1, :cond_b

    .line 85
    check-cast v0, Lcom/tds/common/websocket/conn/WrappedByteChannel;

    invoke-interface {v0}, Lcom/tds/common/websocket/conn/WrappedByteChannel;->writeMore()V

    .line 88
    :cond_b
    return-void
.end method
