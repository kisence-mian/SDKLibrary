.class public Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;
.super Lcom/tds/common/websocket/handshake/HandshakedataImpl1;
.source "HandshakeImpl1Server.java"

# interfaces
.implements Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;


# instance fields
.field private httpstatus:S

.field private httpstatusmessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/tds/common/websocket/handshake/HandshakedataImpl1;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpStatus()S
    .registers 2

    .line 50
    iget-short v0, p0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;->httpstatus:S

    return v0
.end method

.method public getHttpStatusMessage()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;->httpstatusmessage:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpStatus(S)V
    .registers 2
    .param p1, "status"    # S

    .line 60
    iput-short p1, p0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;->httpstatus:S

    .line 61
    return-void
.end method

.method public setHttpStatusMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;->httpstatusmessage:Ljava/lang/String;

    .line 56
    return-void
.end method
