.class public Lcom/tds/common/websocket/framing/TextFrame;
.super Lcom/tds/common/websocket/framing/DataFrame;
.source "TextFrame.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/framing/DataFrame;-><init>(Lcom/tds/common/websocket/enums/Opcode;)V

    .line 42
    return-void
.end method


# virtual methods
.method public isValid()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Lcom/tds/common/websocket/framing/DataFrame;->isValid()V

    .line 47
    invoke-virtual {p0}, Lcom/tds/common/websocket/framing/TextFrame;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    return-void

    .line 48
    :cond_e
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ef

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
