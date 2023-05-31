.class public abstract Lcom/tds/common/websocket/extensions/CompressionExtension;
.super Lcom/tds/common/websocket/extensions/DefaultExtension;
.source "CompressionExtension.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/tds/common/websocket/extensions/DefaultExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public isFrameValid(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 7
    .param p1, "inputFrame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 43
    instance-of v0, p1, Lcom/tds/common/websocket/framing/DataFrame;

    const-string v1, " RSV3: "

    const-string v2, " RSV2: "

    const-string v3, "bad rsv RSV1: "

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4a

    .line 44
    :cond_17
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 45
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_4a
    :goto_4a
    instance-of v0, p1, Lcom/tds/common/websocket/framing/ControlFrame;

    if-eqz v0, :cond_94

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_61

    .line 49
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_94

    .line 50
    :cond_61
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_94
    :goto_94
    return-void
.end method
