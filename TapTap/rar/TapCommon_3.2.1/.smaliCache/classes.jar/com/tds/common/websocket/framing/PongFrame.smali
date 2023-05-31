.class public Lcom/tds/common/websocket/framing/PongFrame;
.super Lcom/tds/common/websocket/framing/ControlFrame;
.source "PongFrame.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->PONG:Lcom/tds/common/websocket/enums/Opcode;

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/framing/ControlFrame;-><init>(Lcom/tds/common/websocket/enums/Opcode;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/websocket/framing/PingFrame;)V
    .registers 3
    .param p1, "pingFrame"    # Lcom/tds/common/websocket/framing/PingFrame;

    .line 48
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->PONG:Lcom/tds/common/websocket/enums/Opcode;

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/framing/ControlFrame;-><init>(Lcom/tds/common/websocket/enums/Opcode;)V

    .line 49
    invoke-virtual {p1}, Lcom/tds/common/websocket/framing/PingFrame;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tds/common/websocket/framing/PongFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 50
    return-void
.end method
