.class public abstract Lcom/tds/common/websocket/framing/ControlFrame;
.super Lcom/tds/common/websocket/framing/FramedataImpl1;
.source "ControlFrame.java"


# direct methods
.method public constructor <init>(Lcom/tds/common/websocket/enums/Opcode;)V
    .registers 2
    .param p1, "opcode"    # Lcom/tds/common/websocket/enums/Opcode;

    .line 43
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/framing/FramedataImpl1;-><init>(Lcom/tds/common/websocket/enums/Opcode;)V

    .line 44
    return-void
.end method


# virtual methods
.method public isValid()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->isFin()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 51
    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_29

    .line 54
    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_21

    .line 57
    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/ControlFrame;->isRSV3()Z

    move-result v0

    if-nez v0, :cond_19

    .line 60
    return-void

    .line 58
    :cond_19
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame can\'t have rsv3==true set"

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_21
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame can\'t have rsv2==true set"

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_29
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame can\'t have rsv1==true set"

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_31
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    const-string v1, "Control frame can\'t have fin==false set"

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
