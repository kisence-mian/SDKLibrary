.class public Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;
.super Lcom/tds/common/websocket/extensions/CompressionExtension;
.source "PerMessageDeflateExtension.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final CLIENT_MAX_WINDOW_BITS:Ljava/lang/String; = "client_max_window_bits"

.field private static final CLIENT_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "client_no_context_takeover"

.field private static final EXTENSION_REGISTERED_NAME:Ljava/lang/String; = "permessage-deflate"

.field private static final SERVER_MAX_WINDOW_BITS:Ljava/lang/String; = "server_max_window_bits"

.field private static final SERVER_NO_CONTEXT_TAKEOVER:Ljava/lang/String; = "server_no_context_takeover"

.field private static final TAIL_BYTES:[B

.field private static final clientMaxWindowBits:I = 0x8000

.field private static final serverMaxWindowBits:I = 0x8000


# instance fields
.field private clientNoContextTakeover:Z

.field private deflater:Ljava/util/zip/Deflater;

.field private inflater:Ljava/util/zip/Inflater;

.field private requestedParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverNoContextTakeover:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 33
    invoke-direct {p0}, Lcom/tds/common/websocket/extensions/CompressionExtension;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    .line 53
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    .line 55
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    .line 56
    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    return-void
.end method

.method private decompress([BLjava/io/ByteArrayOutputStream;)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "outputBuffer"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 169
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 172
    .local v0, "buffer":[B
    :goto_9
    iget-object v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    move v2, v1

    .local v2, "bytesInflated":I
    if-lez v1, :cond_17

    .line 173
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 175
    :cond_17
    return-void
.end method

.method private endsWithTail([B)Z
    .registers 7
    .param p1, "data"    # [B

    .line 229
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_6

    .line 230
    return v1

    .line 233
    :cond_6
    array-length v0, p1

    .line 234
    .local v0, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    sget-object v3, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1b

    .line 235
    aget-byte v4, v3, v2

    array-length v3, v3

    sub-int v3, v0, v3

    add-int/2addr v3, v2

    aget-byte v3, p1, v3

    if-eq v4, v3, :cond_18

    .line 236
    return v1

    .line 234
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 240
    .end local v2    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public acceptProvidedExtensionAsClient(Ljava/lang/String;)Z
    .registers 10
    .param p1, "inputExtension"    # Ljava/lang/String;

    .line 267
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "requestedExtensions":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_27

    aget-object v4, v0, v3

    .line 269
    .local v4, "extension":Ljava/lang/String;
    invoke-static {v4}, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->parseExtensionRequest(Ljava/lang/String;)Lcom/tds/common/websocket/extensions/ExtensionRequestData;

    move-result-object v5

    .line 270
    .local v5, "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    invoke-virtual {v5}, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->getExtensionName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "permessage-deflate"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 271
    nop

    .line 268
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 275
    .restart local v4    # "extension":Ljava/lang/String;
    .restart local v5    # "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    :cond_21
    invoke-virtual {v5}, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->getExtensionParameters()Ljava/util/Map;

    move-result-object v1

    .line 277
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    return v2

    .line 280
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    :cond_27
    return v2
.end method

.method public acceptProvidedExtensionAsServer(Ljava/lang/String;)Z
    .registers 10
    .param p1, "inputExtension"    # Ljava/lang/String;

    .line 245
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "requestedExtensions":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_38

    aget-object v4, v0, v3

    .line 247
    .local v4, "extension":Ljava/lang/String;
    invoke-static {v4}, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->parseExtensionRequest(Ljava/lang/String;)Lcom/tds/common/websocket/extensions/ExtensionRequestData;

    move-result-object v5

    .line 248
    .local v5, "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    invoke-virtual {v5}, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->getExtensionName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "permessage-deflate"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 249
    nop

    .line 246
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 253
    .restart local v4    # "extension":Ljava/lang/String;
    .restart local v5    # "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    :cond_21
    invoke-virtual {v5}, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->getExtensionParameters()Ljava/util/Map;

    move-result-object v1

    .line 254
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 255
    iget-object v2, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    const-string v3, "client_no_context_takeover"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    .line 256
    iput-boolean v3, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    .line 259
    :cond_37
    return v3

    .line 262
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "extensionData":Lcom/tds/common/websocket/extensions/ExtensionRequestData;
    :cond_38
    return v2
.end method

.method public copyInstance()Lcom/tds/common/websocket/extensions/IExtension;
    .registers 2

    .line 301
    new-instance v0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;

    invoke-direct {v0}, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;-><init>()V

    return-object v0
.end method

.method public decodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 7
    .param p1, "inputFrame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 112
    instance-of v0, p1, Lcom/tds/common/websocket/framing/DataFrame;

    if-nez v0, :cond_5

    .line 113
    return-void

    .line 117
    :cond_5
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getOpcode()Lcom/tds/common/websocket/enums/Opcode;

    move-result-object v0

    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    const/16 v2, 0x3f0

    if-ne v0, v1, :cond_1e

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1e

    .line 118
    :cond_16
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const-string v1, "RSV1 bit can only be set for the first frame."

    invoke-direct {v0, v2, v1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 123
    :cond_1e
    :goto_1e
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_23
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 135
    iget-object v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_49

    .line 136
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    .line 137
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 140
    :cond_49
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isFin()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 141
    sget-object v1, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    invoke-direct {p0, v1, v0}, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->decompress([BLjava/io/ByteArrayOutputStream;)V

    .line 143
    iget-boolean v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    if-eqz v1, :cond_5f

    .line 144
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;
    :try_end_5f
    .catch Ljava/util/zip/DataFormatException; {:try_start_23 .. :try_end_5f} :catch_80

    .line 149
    :cond_5f
    nop

    .line 152
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    .line 153
    move-object v1, p1

    check-cast v1, Lcom/tds/common/websocket/framing/DataFrame;

    invoke-virtual {v1, v2}, Lcom/tds/common/websocket/framing/DataFrame;->setRSV1(Z)V

    .line 157
    :cond_6d
    move-object v1, p1

    check-cast v1, Lcom/tds/common/websocket/framing/FramedataImpl1;

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v3, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 159
    return-void

    .line 147
    :catch_80
    move-exception v1

    .line 148
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v3, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public encodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 11
    .param p1, "inputFrame"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 180
    instance-of v0, p1, Lcom/tds/common/websocket/framing/DataFrame;

    if-nez v0, :cond_5

    .line 181
    return-void

    .line 185
    :cond_5
    instance-of v0, p1, Lcom/tds/common/websocket/framing/ContinuousFrame;

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/tds/common/websocket/framing/DataFrame;

    invoke-virtual {v0, v1}, Lcom/tds/common/websocket/framing/DataFrame;->setRSV1(Z)V

    .line 189
    :cond_10
    iget-object v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 191
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 195
    .local v2, "buffer":[B
    :goto_26
    iget-object v3, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    array-length v4, v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v4, v5}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v3

    move v4, v3

    .local v4, "bytesCompressed":I
    if-lez v3, :cond_36

    .line 197
    invoke-virtual {v0, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_26

    .line 200
    :cond_36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 201
    .local v3, "outputBytes":[B
    array-length v5, v3

    .line 209
    .local v5, "outputLength":I
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isFin()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 210
    invoke-direct {p0, v3}, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->endsWithTail([B)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 211
    sget-object v7, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->TAIL_BYTES:[B

    array-length v7, v7

    sub-int/2addr v5, v7

    .line 214
    :cond_4b
    iget-boolean v7, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    if-eqz v7, :cond_5c

    .line 215
    iget-object v7, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v7}, Ljava/util/zip/Deflater;->end()V

    .line 216
    new-instance v7, Ljava/util/zip/Deflater;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v7, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    .line 221
    :cond_5c
    move-object v1, p1

    check-cast v1, Lcom/tds/common/websocket/framing/FramedataImpl1;

    invoke-static {v3, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 222
    return-void
.end method

.method public getDeflater()Ljava/util/zip/Deflater;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public getInflater()Ljava/util/zip/Inflater;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    return-object v0
.end method

.method public getProvidedExtensionAsClient()Ljava/lang/String;
    .registers 4

    .line 285
    iget-object v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    sget-object v1, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->EMPTY_VALUE:Ljava/lang/String;

    const-string v2, "client_no_context_takeover"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->requestedParameters:Ljava/util/Map;

    sget-object v1, Lcom/tds/common/websocket/extensions/ExtensionRequestData;->EMPTY_VALUE:Ljava/lang/String;

    const-string v2, "server_no_context_takeover"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "permessage-deflate; server_no_context_takeover; client_no_context_takeover"

    return-object v0
.end method

.method public getProvidedExtensionAsServer()Ljava/lang/String;
    .registers 3

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permessage-deflate; server_no_context_takeover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    if-eqz v1, :cond_12

    const-string v1, "; client_no_context_takeover"

    goto :goto_14

    :cond_12
    const-string v1, ""

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClientNoContextTakeover()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

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

    .line 310
    instance-of v0, p1, Lcom/tds/common/websocket/framing/TextFrame;

    if-nez v0, :cond_8

    instance-of v0, p1, Lcom/tds/common/websocket/framing/BinaryFrame;

    if-eqz v0, :cond_e

    .line 311
    :cond_8
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 314
    :cond_e
    instance-of v0, p1, Lcom/tds/common/websocket/framing/ContinuousFrame;

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v0

    if-nez v0, :cond_25

    .line 315
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_5e

    .line 316
    :cond_25
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad rsv RSV1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
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

    .line 318
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_5e
    :goto_5e
    invoke-super {p0, p1}, Lcom/tds/common/websocket/extensions/CompressionExtension;->isFrameValid(Lcom/tds/common/websocket/framing/Framedata;)V

    .line 321
    return-void

    .line 312
    :cond_62
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    const-string v1, "RSV1 bit must be set for DataFrames."

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isServerNoContextTakeover()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    return v0
.end method

.method public setClientNoContextTakeover(Z)V
    .registers 2
    .param p1, "clientNoContextTakeover"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->clientNoContextTakeover:Z

    .line 100
    return-void
.end method

.method public setDeflater(Ljava/util/zip/Deflater;)V
    .registers 2
    .param p1, "deflater"    # Ljava/util/zip/Deflater;

    .line 71
    iput-object p1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->deflater:Ljava/util/zip/Deflater;

    .line 72
    return-void
.end method

.method public setInflater(Ljava/util/zip/Inflater;)V
    .registers 2
    .param p1, "inflater"    # Ljava/util/zip/Inflater;

    .line 63
    iput-object p1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->inflater:Ljava/util/zip/Inflater;

    .line 64
    return-void
.end method

.method public setServerNoContextTakeover(Z)V
    .registers 2
    .param p1, "serverNoContextTakeover"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/tds/common/websocket/extensions/permessage_deflate/PerMessageDeflateExtension;->serverNoContextTakeover:Z

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 325
    const-string v0, "PerMessageDeflateExtension"

    return-object v0
.end method
