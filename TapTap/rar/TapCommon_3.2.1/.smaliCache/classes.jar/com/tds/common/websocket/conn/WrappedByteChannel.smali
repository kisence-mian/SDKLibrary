.class public interface abstract Lcom/tds/common/websocket/conn/WrappedByteChannel;
.super Ljava/lang/Object;
.source "WrappedByteChannel.java"

# interfaces
.implements Ljava/nio/channels/ByteChannel;


# virtual methods
.method public abstract isBlocking()Z
.end method

.method public abstract isNeedRead()Z
.end method

.method public abstract isNeedWrite()Z
.end method

.method public abstract readMore(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeMore()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
