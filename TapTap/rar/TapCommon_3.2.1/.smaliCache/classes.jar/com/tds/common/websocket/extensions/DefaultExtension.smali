.class public Lcom/tds/common/websocket/extensions/DefaultExtension;
.super Ljava/lang/Object;
.source "DefaultExtension.java"

# interfaces
.implements Lcom/tds/common/websocket/extensions/IExtension;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptProvidedExtensionAsClient(Ljava/lang/String;)Z
    .registers 3
    .param p1, "inputExtension"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public acceptProvidedExtensionAsServer(Ljava/lang/String;)Z
    .registers 3
    .param p1, "inputExtension"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public copyInstance()Lcom/tds/common/websocket/extensions/IExtension;
    .registers 2

    .line 82
    new-instance v0, Lcom/tds/common/websocket/extensions/DefaultExtension;

    invoke-direct {v0}, Lcom/tds/common/websocket/extensions/DefaultExtension;-><init>()V

    return-object v0
.end method

.method public decodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 2
    .param p1, "inputFrame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public encodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 2
    .param p1, "inputFrame"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 49
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    if-eq p0, p1, :cond_11

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public getProvidedExtensionAsClient()Ljava/lang/String;
    .registers 2

    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public getProvidedExtensionAsServer()Ljava/lang/String;
    .registers 2

    .line 77
    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFrameValid(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 5
    .param p1, "inputFrame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v0

    if-nez v0, :cond_13

    .line 68
    return-void

    .line 64
    :cond_13
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad rsv RSV1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RSV2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RSV3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 1

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
