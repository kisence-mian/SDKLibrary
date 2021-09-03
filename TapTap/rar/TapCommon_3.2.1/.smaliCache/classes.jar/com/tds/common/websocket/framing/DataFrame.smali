.class public abstract Lcom/tds/common/websocket/framing/DataFrame;
.super Lcom/tds/common/websocket/framing/FramedataImpl1;
.source "DataFrame.java"


# direct methods
.method public constructor <init>(Lcom/tds/common/websocket/enums/Opcode;)V
    .registers 2
    .param p1, "opcode"    # Lcom/tds/common/websocket/enums/Opcode;

    .line 42
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/framing/FramedataImpl1;-><init>(Lcom/tds/common/websocket/enums/Opcode;)V

    .line 43
    return-void
.end method


# virtual methods
.method public isValid()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 48
    return-void
.end method
