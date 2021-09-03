.class public Lcom/tds/common/websocket/framing/ContinuousFrame;
.super Lcom/tds/common/websocket/framing/DataFrame;
.source "ContinuousFrame.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/framing/DataFrame;-><init>(Lcom/tds/common/websocket/enums/Opcode;)V

    .line 40
    return-void
.end method
