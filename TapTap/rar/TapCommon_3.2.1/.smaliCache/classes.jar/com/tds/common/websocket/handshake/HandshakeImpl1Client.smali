.class public Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;
.super Lcom/tds/common/websocket/handshake/HandshakedataImpl1;
.source "HandshakeImpl1Client.java"

# interfaces
.implements Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;


# instance fields
.field private resourceDescriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/tds/common/websocket/handshake/HandshakedataImpl1;-><init>()V

    .line 36
    const-string v0, "*"

    iput-object v0, p0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;->resourceDescriptor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResourceDescriptor()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;->resourceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public setResourceDescriptor(Ljava/lang/String;)V
    .registers 4
    .param p1, "resourceDescriptor"    # Ljava/lang/String;

    .line 40
    if-eqz p1, :cond_5

    .line 43
    iput-object p1, p0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;->resourceDescriptor:Ljava/lang/String;

    .line 44
    return-void

    .line 41
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "http resource descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
