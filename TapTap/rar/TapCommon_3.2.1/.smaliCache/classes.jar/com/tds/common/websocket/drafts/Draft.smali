.class public abstract Lcom/tds/common/websocket/drafts/Draft;
.super Ljava/lang/Object;
.source "Draft.java"


# instance fields
.field protected continuousFrameType:Lcom/tds/common/websocket/enums/Opcode;

.field protected role:Lcom/tds/common/websocket/enums/Role;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft;->role:Lcom/tds/common/websocket/enums/Role;

    .line 69
    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft;->continuousFrameType:Lcom/tds/common/websocket/enums/Opcode;

    return-void
.end method

.method public static readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    .local v0, "sbuf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x30

    .line 75
    .local v1, "cur":B
    :cond_a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 76
    move v2, v1

    .line 77
    .local v2, "prev":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    const/16 v3, 0xd

    if-ne v2, v3, :cond_a

    const/16 v3, 0xa

    if-ne v1, v3, :cond_a

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    return-object v0

    .line 87
    .end local v2    # "prev":B
    :cond_2e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    const/4 v2, 0x0

    return-object v2
.end method

.method public static readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 92
    invoke-static {p0}, Lcom/tds/common/websocket/drafts/Draft;->readLine(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    .local v0, "b":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_15

    :cond_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/tds/common/websocket/util/Charsetfunctions;->stringAscii([BII)Ljava/lang/String;

    move-result-object v1

    :goto_15
    return-object v1
.end method

.method public static translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/enums/Role;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    .registers 12
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "role"    # Lcom/tds/common/websocket/enums/Role;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lcom/tds/common/websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_91

    .line 105
    const-string v1, " "

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "firstLineTokens":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v2, :cond_8b

    .line 109
    sget-object v2, Lcom/tds/common/websocket/enums/Role;->CLIENT:Lcom/tds/common/websocket/enums/Role;

    if-ne p1, v2, :cond_19

    .line 110
    invoke-static {v1, v0}, Lcom/tds/common/websocket/drafts/Draft;->translateHandshakeHttpClient([Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;

    move-result-object v2

    .local v2, "handshake":Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    goto :goto_1d

    .line 112
    .end local v2    # "handshake":Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    :cond_19
    invoke-static {v1, v0}, Lcom/tds/common/websocket/drafts/Draft;->translateHandshakeHttpServer([Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;

    move-result-object v2

    .line 114
    .restart local v2    # "handshake":Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    :goto_1d
    invoke-static {p0}, Lcom/tds/common/websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_21
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_82

    .line 116
    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "pair":[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v4, :cond_7a

    .line 121
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-interface {v2, v5}, Lcom/tds/common/websocket/handshake/HandshakeBuilder;->hasFieldValue(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    const-string v7, "^ +"

    const/4 v8, 0x1

    if-eqz v5, :cond_6a

    .line 122
    aget-object v5, v3, v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v3, v4

    .line 123
    invoke-interface {v2, v4}, Lcom/tds/common/websocket/handshake/HandshakeBuilder;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "; "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v8, v3, v8

    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-interface {v2, v5, v4}, Lcom/tds/common/websocket/handshake/HandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 125
    :cond_6a
    aget-object v4, v3, v4

    aget-object v5, v3, v8

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/tds/common/websocket/handshake/HandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_75
    invoke-static {p0}, Lcom/tds/common/websocket/drafts/Draft;->readStringLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .end local v3    # "pair":[Ljava/lang/String;
    goto :goto_21

    .line 118
    .restart local v3    # "pair":[Ljava/lang/String;
    :cond_7a
    new-instance v4, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    const-string v5, "not an http header"

    invoke-direct {v4, v5}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    .end local v3    # "pair":[Ljava/lang/String;
    :cond_82
    if-eqz v0, :cond_85

    .line 132
    return-object v2

    .line 130
    :cond_85
    new-instance v3, Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {v3}, Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw v3

    .line 107
    .end local v2    # "handshake":Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    :cond_8b
    new-instance v2, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    invoke-direct {v2}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>()V

    throw v2

    .line 102
    .end local v1    # "firstLineTokens":[Ljava/lang/String;
    :cond_91
    new-instance v1, Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    invoke-direct {v1, v2}, Lcom/tds/common/websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw v1
.end method

.method private static translateHandshakeHttpClient([Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    .registers 7
    .param p0, "firstLineTokens"    # [Ljava/lang/String;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x1

    aget-object v1, p0, v0

    const-string v2, "101"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    .line 172
    aget-object v1, p0, v3

    const-string v4, "HTTP/1.1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 176
    new-instance v1, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;

    invoke-direct {v1}, Lcom/tds/common/websocket/handshake/HandshakeImpl1Server;-><init>()V

    .line 177
    .local v1, "handshake":Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    move-object v3, v1

    check-cast v3, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;

    .line 178
    .local v3, "serverhandshake":Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-interface {v3, v0}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->setHttpStatus(S)V

    .line 179
    aget-object v0, p0, v2

    invoke-interface {v3, v0}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 180
    return-object v1

    .line 173
    .end local v1    # "handshake":Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    .end local v3    # "serverhandshake":Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;
    :cond_2e
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v4, p0, v3

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    .line 174
    const-string v0, "Invalid status line received: %s Status line: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_42
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v4, p0, v0

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    .line 170
    const-string v0, "Invalid status code received: %s Status line: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static translateHandshakeHttpServer([Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    .registers 7
    .param p0, "firstLineTokens"    # [Ljava/lang/String;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_36

    .line 149
    aget-object v1, p0, v3

    const-string v4, "HTTP/1.1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 153
    new-instance v0, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;

    invoke-direct {v0}, Lcom/tds/common/websocket/handshake/HandshakeImpl1Client;-><init>()V

    .line 154
    .local v0, "clienthandshake":Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;
    aget-object v1, p0, v2

    invoke-interface {v0, v1}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->setResourceDescriptor(Ljava/lang/String;)V

    .line 155
    return-object v0

    .line 150
    .end local v0    # "clienthandshake":Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;
    :cond_22
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    new-array v4, v3, [Ljava/lang/Object;

    aget-object v3, p0, v3

    aput-object v3, v4, v0

    aput-object p1, v4, v2

    .line 151
    const-string v0, "Invalid status line received: %s Status line: %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_36
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, p0, v0

    aput-object v4, v3, v0

    aput-object p1, v3, v2

    .line 147
    const-string v0, "Invalid request method received: %s Status line: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract acceptHandshakeAsClient(Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshake;)Lcom/tds/common/websocket/enums/HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract acceptHandshakeAsServer(Lcom/tds/common/websocket/handshake/ClientHandshake;)Lcom/tds/common/websocket/enums/HandshakeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method protected basicAccept(Lcom/tds/common/websocket/handshake/Handshakedata;)Z
    .registers 4
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/Handshakedata;

    .line 190
    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 191
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 190
    :goto_25
    return v0
.end method

.method public checkAlloc(I)I
    .registers 5
    .param p1, "bytecount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 324
    if-ltz p1, :cond_3

    .line 327
    return p1

    .line 325
    :cond_3
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public continuousFrame(Lcom/tds/common/websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .registers 7
    .param p1, "op"    # Lcom/tds/common/websocket/enums/Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/enums/Opcode;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->BINARY:Lcom/tds/common/websocket/enums/Opcode;

    if-eq p1, v0, :cond_11

    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 213
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_11
    :goto_11
    const/4 v0, 0x0

    .line 216
    .local v0, "bui":Lcom/tds/common/websocket/framing/DataFrame;
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft;->continuousFrameType:Lcom/tds/common/websocket/enums/Opcode;

    if-eqz v1, :cond_1d

    .line 217
    new-instance v1, Lcom/tds/common/websocket/framing/ContinuousFrame;

    invoke-direct {v1}, Lcom/tds/common/websocket/framing/ContinuousFrame;-><init>()V

    move-object v0, v1

    goto :goto_34

    .line 219
    :cond_1d
    iput-object p1, p0, Lcom/tds/common/websocket/drafts/Draft;->continuousFrameType:Lcom/tds/common/websocket/enums/Opcode;

    .line 220
    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->BINARY:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v1, :cond_2a

    .line 221
    new-instance v1, Lcom/tds/common/websocket/framing/BinaryFrame;

    invoke-direct {v1}, Lcom/tds/common/websocket/framing/BinaryFrame;-><init>()V

    move-object v0, v1

    goto :goto_34

    .line 222
    :cond_2a
    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v1, :cond_34

    .line 223
    new-instance v1, Lcom/tds/common/websocket/framing/TextFrame;

    invoke-direct {v1}, Lcom/tds/common/websocket/framing/TextFrame;-><init>()V

    move-object v0, v1

    .line 226
    :cond_34
    :goto_34
    invoke-virtual {v0, p2}, Lcom/tds/common/websocket/framing/DataFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 227
    invoke-virtual {v0, p3}, Lcom/tds/common/websocket/framing/DataFrame;->setFin(Z)V

    .line 229
    :try_start_3a
    invoke-virtual {v0}, Lcom/tds/common/websocket/framing/DataFrame;->isValid()V
    :try_end_3d
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_3a .. :try_end_3d} :catch_4b

    .line 233
    nop

    .line 234
    if-eqz p3, :cond_44

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tds/common/websocket/drafts/Draft;->continuousFrameType:Lcom/tds/common/websocket/enums/Opcode;

    goto :goto_46

    .line 237
    :cond_44
    iput-object p1, p0, Lcom/tds/common/websocket/drafts/Draft;->continuousFrameType:Lcom/tds/common/websocket/enums/Opcode;

    .line 239
    :goto_46
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 230
    :catch_4b
    move-exception v1

    .line 231
    .local v1, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public abstract copyInstance()Lcom/tds/common/websocket/drafts/Draft;
.end method

.method public abstract createBinaryFrame(Lcom/tds/common/websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
.end method

.method public abstract createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;"
        }
    .end annotation
.end method

.method public createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;)Ljava/util/List;
    .registers 3
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/Handshakedata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/handshake/Handshakedata;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tds/common/websocket/drafts/Draft;->createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;Lcom/tds/common/websocket/enums/Role;)Ljava/util/List;
    .registers 4
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/Handshakedata;
    .param p2, "ownrole"    # Lcom/tds/common/websocket/enums/Role;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/handshake/Handshakedata;",
            "Lcom/tds/common/websocket/enums/Role;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/drafts/Draft;->createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;Lcom/tds/common/websocket/enums/Role;Z)Ljava/util/List;
    .registers 5
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/Handshakedata;
    .param p2, "ownrole"    # Lcom/tds/common/websocket/enums/Role;
    .param p3, "withcontent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/handshake/Handshakedata;",
            "Lcom/tds/common/websocket/enums/Role;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p3}, Lcom/tds/common/websocket/drafts/Draft;->createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createHandshake(Lcom/tds/common/websocket/handshake/Handshakedata;Z)Ljava/util/List;
    .registers 9
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/Handshakedata;
    .param p2, "withcontent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/websocket/handshake/Handshakedata;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .local v0, "bui":Ljava/lang/StringBuilder;
    instance-of v1, p1, Lcom/tds/common/websocket/handshake/ClientHandshake;

    if-eqz v1, :cond_22

    .line 268
    const-string v1, "GET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/tds/common/websocket/handshake/ClientHandshake;

    invoke-interface {v2}, Lcom/tds/common/websocket/handshake/ClientHandshake;->getResourceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    const-string v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 270
    :cond_22
    instance-of v1, p1, Lcom/tds/common/websocket/handshake/ServerHandshake;

    if-eqz v1, :cond_8c

    .line 271
    const-string v1, "HTTP/1.1 101 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/tds/common/websocket/handshake/ServerHandshake;

    invoke-interface {v2}, Lcom/tds/common/websocket/handshake/ServerHandshake;->getHttpStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :goto_36
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {p1}, Lcom/tds/common/websocket/handshake/Handshakedata;->iterateHttpFields()Ljava/util/Iterator;

    move-result-object v2

    .line 277
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 279
    .local v3, "fieldname":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/tds/common/websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "fieldvalue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .end local v3    # "fieldname":Ljava/lang/String;
    .end local v4    # "fieldvalue":Ljava/lang/String;
    goto :goto_3f

    .line 285
    :cond_5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/websocket/util/Charsetfunctions;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 288
    .local v1, "httpheader":[B
    if-eqz p2, :cond_70

    invoke-interface {p1}, Lcom/tds/common/websocket/handshake/Handshakedata;->getContent()[B

    move-result-object v3

    goto :goto_71

    :cond_70
    const/4 v3, 0x0

    .line 289
    .local v3, "content":[B
    :goto_71
    if-nez v3, :cond_75

    const/4 v4, 0x0

    goto :goto_76

    :cond_75
    array-length v4, v3

    :goto_76
    array-length v5, v1

    add-int/2addr v4, v5

    .line 290
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 291
    .local v4, "bytebuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 292
    if-eqz v3, :cond_84

    .line 293
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 295
    :cond_84
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 296
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 273
    .end local v1    # "httpheader":[B
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "content":[B
    .end local v4    # "bytebuffer":Ljava/nio/ByteBuffer;
    :cond_8c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown role"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract getCloseHandshakeType()Lcom/tds/common/websocket/enums/CloseHandshakeType;
.end method

.method public getRole()Lcom/tds/common/websocket/enums/Role;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft;->role:Lcom/tds/common/websocket/enums/Role;

    return-object v0
.end method

.method public abstract postProcessHandshakeRequestAsClient(Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;)Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract postProcessHandshakeResponseAsServer(Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract processFrame(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method readVersion(Lcom/tds/common/websocket/handshake/Handshakedata;)I
    .registers 6
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/Handshakedata;

    .line 331
    const-string v0, "Sec-WebSocket-Version"

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "vers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_1d

    .line 335
    :try_start_d
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1b

    .line 336
    .local v1, "v":I
    return v1

    .line 337
    .end local v1    # "v":I
    :catch_1b
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v2

    .line 341
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1d
    return v2
.end method

.method public abstract reset()V
.end method

.method public setParseMode(Lcom/tds/common/websocket/enums/Role;)V
    .registers 2
    .param p1, "role"    # Lcom/tds/common/websocket/enums/Role;

    .line 345
    iput-object p1, p0, Lcom/tds/common/websocket/drafts/Draft;->role:Lcom/tds/common/websocket/enums/Role;

    .line 346
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public translateHandshake(Ljava/nio/ByteBuffer;)Lcom/tds/common/websocket/handshake/Handshakedata;
    .registers 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft;->role:Lcom/tds/common/websocket/enums/Role;

    invoke-static {p1, v0}, Lcom/tds/common/websocket/drafts/Draft;->translateHandshakeHttp(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/enums/Role;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;

    move-result-object v0

    return-object v0
.end method
