.class public interface abstract Lcom/tds/common/websocket/extensions/IExtension;
.super Ljava/lang/Object;
.source "IExtension.java"


# virtual methods
.method public abstract acceptProvidedExtensionAsClient(Ljava/lang/String;)Z
.end method

.method public abstract acceptProvidedExtensionAsServer(Ljava/lang/String;)Z
.end method

.method public abstract copyInstance()Lcom/tds/common/websocket/extensions/IExtension;
.end method

.method public abstract decodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract encodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V
.end method

.method public abstract getProvidedExtensionAsClient()Ljava/lang/String;
.end method

.method public abstract getProvidedExtensionAsServer()Ljava/lang/String;
.end method

.method public abstract isFrameValid(Lcom/tds/common/websocket/framing/Framedata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
