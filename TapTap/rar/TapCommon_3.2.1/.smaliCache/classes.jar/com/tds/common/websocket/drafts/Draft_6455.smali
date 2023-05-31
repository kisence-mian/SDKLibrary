.class public Lcom/tds/common/websocket/drafts/Draft_6455;
.super Lcom/tds/common/websocket/drafts/Draft;
.source "Draft_6455.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONNECTION:Ljava/lang/String; = "Connection"

.field private static final SEC_WEB_SOCKET_ACCEPT:Ljava/lang/String; = "Sec-WebSocket-Accept"

.field private static final SEC_WEB_SOCKET_EXTENSIONS:Ljava/lang/String; = "Sec-WebSocket-Extensions"

.field private static final SEC_WEB_SOCKET_KEY:Ljava/lang/String; = "Sec-WebSocket-Key"

.field private static final SEC_WEB_SOCKET_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"

.field private static final UPGRADE:Ljava/lang/String; = "Upgrade"


# instance fields
.field private final byteBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

.field private extension:Lcom/tds/common/websocket/extensions/IExtension;

.field private incompleteframe:Ljava/nio/ByteBuffer;

.field private knownExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/extensions/IExtension;",
            ">;"
        }
    .end annotation
.end field

.field private knownProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/protocols/IProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private maxFrameSize:I

.field private protocol:Lcom/tds/common/websocket/protocols/IProtocol;

.field private final reuseableRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/websocket/extensions/IExtension;)V
    .registers 3
    .param p1, "inputExtension"    # Lcom/tds/common/websocket/extensions/IExtension;

    .line 173
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>(Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/extensions/IExtension;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/extensions/IExtension;>;"
    new-instance v0, Lcom/tds/common/websocket/protocols/Protocol;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .registers 5
    .param p2, "inputMaxFrameSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/extensions/IExtension;",
            ">;I)V"
        }
    .end annotation

    .line 208
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/extensions/IExtension;>;"
    new-instance v0, Lcom/tds/common/websocket/protocols/Protocol;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/protocols/Protocol;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/extensions/IExtension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/protocols/IProtocol;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/extensions/IExtension;>;"
    .local p2, "inputProtocols":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/protocols/IProtocol;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .registers 9
    .param p3, "inputMaxFrameSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/extensions/IExtension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/protocols/IProtocol;",
            ">;I)V"
        }
    .end annotation

    .line 223
    .local p1, "inputExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/extensions/IExtension;>;"
    .local p2, "inputProtocols":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/protocols/IProtocol;>;"
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft;-><init>()V

    .line 113
    new-instance v0, Lcom/tds/common/websocket/extensions/DefaultExtension;

    invoke-direct {v0}, Lcom/tds/common/websocket/extensions/DefaultExtension;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    .line 148
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->reuseableRandom:Ljava/util/Random;

    .line 224
    if-eqz p1, :cond_6e

    if-eqz p2, :cond_6e

    const/4 v0, 0x1

    if-lt p3, v0, :cond_6e

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "hasDefault":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/extensions/IExtension;

    .line 232
    .local v2, "inputExtension":Lcom/tds/common/websocket/extensions/IExtension;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/tds/common/websocket/extensions/DefaultExtension;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 233
    const/4 v0, 0x1

    .line 235
    .end local v2    # "inputExtension":Lcom/tds/common/websocket/extensions/IExtension;
    :cond_53
    goto :goto_3a

    .line 236
    :cond_54
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    if-nez v0, :cond_66

    .line 239
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 241
    :cond_66
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iput p3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    .line 243
    return-void

    .line 225
    .end local v0    # "hasDefault":Z
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private addToBufferList(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "payloadData"    # Ljava/nio/ByteBuffer;

    .line 1052
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v0

    .line 1053
    :try_start_3
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    monitor-exit v0

    .line 1055
    return-void

    .line 1054
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private checkBufferLimit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .line 1064
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getByteBufferListSize()J

    move-result-wide v0

    .line 1065
    .local v0, "totalSize":J
    iget v2, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 1070
    return-void

    .line 1066
    :cond_c
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->clearBufferList()V

    .line 1067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Payload limit reached. Allowed: {} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 1068
    new-instance v2, Lcom/tds/common/websocket/exceptions/LimitExceededException;

    iget v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {v2, v3}, Lcom/tds/common/websocket/exceptions/LimitExceededException;-><init>(I)V

    throw v2
.end method

.method private clearBufferList()V
    .registers 3

    .line 1041
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v0

    .line 1042
    :try_start_3
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1043
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private containsRequestedProtocol(Ljava/lang/String;)Lcom/tds/common/websocket/enums/HandshakeState;
    .registers 5
    .param p1, "requestedProtocol"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/websocket/protocols/IProtocol;

    .line 280
    .local v1, "knownProtocol":Lcom/tds/common/websocket/protocols/IProtocol;
    invoke-interface {v1, p1}, Lcom/tds/common/websocket/protocols/IProtocol;->acceptProvidedProtocol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 281
    iput-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->protocol:Lcom/tds/common/websocket/protocols/IProtocol;

    .line 282
    const-string v0, "acceptHandshake - Matching protocol found: {}"

    invoke-static {v0, v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v0

    .line 285
    .end local v1    # "knownProtocol":Lcom/tds/common/websocket/protocols/IProtocol;
    :cond_22
    goto :goto_6

    .line 286
    :cond_23
    sget-object v0, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v0
.end method

.method private createByteBufferFromFramedata(Lcom/tds/common/websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .registers 15
    .param p1, "framedata"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 458
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 459
    .local v0, "mes":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->role:Lcom/tds/common/websocket/enums/Role;

    sget-object v2, Lcom/tds/common/websocket/enums/Role;->CLIENT:Lcom/tds/common/websocket/enums/Role;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_e

    move v1, v4

    goto :goto_f

    :cond_e
    move v1, v3

    .line 460
    .local v1, "mask":Z
    :goto_f
    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getSizeBytes(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 461
    .local v2, "sizebytes":I
    if-le v2, v4, :cond_18

    add-int/lit8 v5, v2, 0x1

    goto :goto_19

    :cond_18
    move v5, v2

    :goto_19
    add-int/2addr v5, v4

    const/4 v6, 0x4

    if-eqz v1, :cond_1f

    move v7, v6

    goto :goto_20

    :cond_1f
    move v7, v3

    :goto_20
    add-int/2addr v5, v7

    .line 462
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/2addr v5, v7

    .line 461
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 463
    .local v5, "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getOpcode()Lcom/tds/common/websocket/enums/Opcode;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/tds/common/websocket/drafts/Draft_6455;->fromOpcode(Lcom/tds/common/websocket/enums/Opcode;)B

    move-result v7

    .line 464
    .local v7, "optcode":B
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isFin()Z

    move-result v8

    if-eqz v8, :cond_3b

    const/16 v8, -0x80

    goto :goto_3c

    :cond_3b
    move v8, v3

    :goto_3c
    int-to-byte v8, v8

    .line 465
    .local v8, "one":B
    or-int v9, v8, v7

    int-to-byte v8, v9

    .line 466
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV1()Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 467
    invoke-direct {p0, v4}, Lcom/tds/common/websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v9

    or-int/2addr v9, v8

    int-to-byte v8, v9

    .line 469
    :cond_4c
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV2()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_59

    .line 470
    invoke-direct {p0, v10}, Lcom/tds/common/websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v9

    or-int/2addr v9, v8

    int-to-byte v8, v9

    .line 472
    :cond_59
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->isRSV3()Z

    move-result v9

    if-eqz v9, :cond_66

    .line 473
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/tds/common/websocket/drafts/Draft_6455;->getRSVByte(I)B

    move-result v9

    or-int/2addr v9, v8

    int-to-byte v8, v9

    .line 475
    :cond_66
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 476
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v11, v9

    invoke-direct {p0, v11, v12, v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->toByteArray(JI)[B

    move-result-object v9

    .line 477
    .local v9, "payloadlengthbytes":[B
    nop

    .line 479
    if-ne v2, v4, :cond_81

    .line 480
    aget-byte v3, v9, v3

    invoke-direct {p0, v1}, Lcom/tds/common/websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_a2

    .line 481
    :cond_81
    if-ne v2, v10, :cond_91

    .line 482
    invoke-direct {p0, v1}, Lcom/tds/common/websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v3

    or-int/lit8 v3, v3, 0x7e

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_a2

    .line 484
    :cond_91
    const/16 v3, 0x8

    if-ne v2, v3, :cond_dd

    .line 485
    invoke-direct {p0, v1}, Lcom/tds/common/websocket/drafts/Draft_6455;->getMaskByte(Z)B

    move-result v3

    or-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 490
    :goto_a2
    if-eqz v1, :cond_d2

    .line 491
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 492
    .local v3, "maskkey":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 493
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 494
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 495
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    rem-int/lit8 v10, v4, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    xor-int/2addr v6, v10

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 494
    add-int/lit8 v4, v4, 0x1

    goto :goto_b9

    .line 497
    .end local v3    # "maskkey":Ljava/nio/ByteBuffer;
    .end local v4    # "i":I
    :cond_d1
    goto :goto_d8

    .line 498
    :cond_d2
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 500
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 502
    :goto_d8
    nop

    .line 503
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 504
    return-object v5

    .line 488
    :cond_dd
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Size representation not supported/specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private fromOpcode(Lcom/tds/common/websocket/enums/Opcode;)B
    .registers 5
    .param p1, "opcode"    # Lcom/tds/common/websocket/enums/Opcode;

    .line 817
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v0, :cond_6

    .line 818
    const/4 v0, 0x0

    return v0

    .line 819
    :cond_6
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v0, :cond_c

    .line 820
    const/4 v0, 0x1

    return v0

    .line 821
    :cond_c
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->BINARY:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v0, :cond_12

    .line 822
    const/4 v0, 0x2

    return v0

    .line 823
    :cond_12
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CLOSING:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v0, :cond_19

    .line 824
    const/16 v0, 0x8

    return v0

    .line 825
    :cond_19
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->PING:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v0, :cond_20

    .line 826
    const/16 v0, 0x9

    return v0

    .line 827
    :cond_20
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->PONG:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p1, v0, :cond_27

    .line 828
    const/16 v0, 0xa

    return v0

    .line 830
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tds/common/websocket/enums/Opcode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "in"    # Ljava/lang/String;

    .line 795
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "seckey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "acc":Ljava/lang/String;
    :try_start_17
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1d} :catch_2b

    .line 802
    .local v2, "sh1":Ljava/security/MessageDigest;
    nop

    .line 803
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/tds/common/websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 800
    .end local v2    # "sh1":Ljava/security/MessageDigest;
    :catch_2b
    move-exception v2

    .line 801
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getByteBufferListSize()J
    .registers 8

    .line 1148
    const-wide/16 v0, 0x0

    .line 1149
    .local v0, "totalSize":J
    iget-object v2, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v2

    .line 1150
    :try_start_5
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 1151
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 1152
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_b

    .line 1153
    :cond_1e
    monitor-exit v2

    .line 1154
    return-wide v0

    .line 1153
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v3
.end method

.method private getMaskByte(Z)B
    .registers 3
    .param p1, "mask"    # Z

    .line 667
    if-eqz p1, :cond_5

    const/16 v0, -0x80

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .line 1126
    const-wide/16 v0, 0x0

    .line 1128
    .local v0, "totalSize":J
    iget-object v2, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    monitor-enter v2

    .line 1129
    :try_start_5
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 1130
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 1131
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_b

    .line 1132
    :cond_1e
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->checkBufferLimit()V

    .line 1133
    long-to-int v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1134
    .local v3, "resultingByteBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->byteBufferList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 1135
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1136
    nop

    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_2c

    .line 1137
    :cond_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_42

    .line 1138
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1139
    return-object v3

    .line 1137
    .end local v3    # "resultingByteBuffer":Ljava/nio/ByteBuffer;
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v3
.end method

.method private getRSVByte(I)B
    .registers 3
    .param p1, "rsv"    # I

    .line 648
    packed-switch p1, :pswitch_data_e

    .line 656
    const/4 v0, 0x0

    return v0

    .line 654
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 652
    :pswitch_8
    const/16 v0, 0x20

    return v0

    .line 650
    :pswitch_b
    const/16 v0, 0x40

    return v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private getServerTime()Ljava/lang/String;
    .registers 5

    .line 781
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 782
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 784
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 785
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSizeBytes(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "mes"    # Ljava/nio/ByteBuffer;

    .line 677
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_a

    .line 678
    const/4 v0, 0x1

    return v0

    .line 679
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_15

    .line 680
    const/4 v0, 0x2

    return v0

    .line 682
    :cond_15
    const/16 v0, 0x8

    return v0
.end method

.method private logRuntimeException(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/lang/RuntimeException;)V
    .registers 4
    .param p1, "webSocketImpl"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "e"    # Ljava/lang/RuntimeException;

    .line 934
    const-string v0, "Runtime exception during onWebsocketMessage"

    invoke-static {v0, p2}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketError(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/Exception;)V

    .line 936
    return-void
.end method

.method private processFrameBinary(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 5
    .param p1, "webSocketImpl"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "frame"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 920
    :try_start_0
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;

    move-result-object v0

    .line 921
    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_c

    .line 924
    goto :goto_10

    .line 922
    :catch_c
    move-exception v0

    .line 923
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->logRuntimeException(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/lang/RuntimeException;)V

    .line 925
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return-void
.end method

.method private processFrameClosing(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 8
    .param p1, "webSocketImpl"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "frame"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 1017
    const/16 v0, 0x3ed

    .line 1018
    .local v0, "code":I
    const-string v1, ""

    .line 1019
    .local v1, "reason":Ljava/lang/String;
    instance-of v2, p2, Lcom/tds/common/websocket/framing/CloseFrame;

    if-eqz v2, :cond_13

    .line 1020
    move-object v2, p2

    check-cast v2, Lcom/tds/common/websocket/framing/CloseFrame;

    .line 1021
    .local v2, "cf":Lcom/tds/common/websocket/framing/CloseFrame;
    invoke-virtual {v2}, Lcom/tds/common/websocket/framing/CloseFrame;->getCloseCode()I

    move-result v0

    .line 1022
    invoke-virtual {v2}, Lcom/tds/common/websocket/framing/CloseFrame;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1024
    .end local v2    # "cf":Lcom/tds/common/websocket/framing/CloseFrame;
    :cond_13
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getReadyState()Lcom/tds/common/websocket/enums/ReadyState;

    move-result-object v2

    sget-object v3, Lcom/tds/common/websocket/enums/ReadyState;->CLOSING:Lcom/tds/common/websocket/enums/ReadyState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_20

    .line 1026
    invoke-virtual {p1, v0, v1, v4}, Lcom/tds/common/websocket/conn/WebSocketImpl;->closeConnection(ILjava/lang/String;Z)V

    goto :goto_30

    .line 1029
    :cond_20
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getCloseHandshakeType()Lcom/tds/common/websocket/enums/CloseHandshakeType;

    move-result-object v2

    sget-object v3, Lcom/tds/common/websocket/enums/CloseHandshakeType;->TWOWAY:Lcom/tds/common/websocket/enums/CloseHandshakeType;

    if-ne v2, v3, :cond_2c

    .line 1030
    invoke-virtual {p1, v0, v1, v4}, Lcom/tds/common/websocket/conn/WebSocketImpl;->close(ILjava/lang/String;Z)V

    goto :goto_30

    .line 1032
    :cond_2c
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tds/common/websocket/conn/WebSocketImpl;->flushAndClose(ILjava/lang/String;Z)V

    .line 1035
    :goto_30
    return-void
.end method

.method private processFrameContinuousAndNonFin(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;Lcom/tds/common/websocket/enums/Opcode;)V
    .registers 7
    .param p1, "webSocketImpl"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "frame"    # Lcom/tds/common/websocket/framing/Framedata;
    .param p3, "curop"    # Lcom/tds/common/websocket/enums/Opcode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 892
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    if-eq p3, v0, :cond_8

    .line 893
    invoke-direct {p0, p2}, Lcom/tds/common/websocket/drafts/Draft_6455;->processFrameIsNotFin(Lcom/tds/common/websocket/framing/Framedata;)V

    goto :goto_16

    .line 894
    :cond_8
    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->isFin()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 895
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/drafts/Draft_6455;->processFrameIsFin(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V

    goto :goto_16

    .line 896
    :cond_12
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    if-eqz v0, :cond_42

    .line 902
    :goto_16
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p3, v0, :cond_32

    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/Charsetfunctions;->isValidUTF8(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_32

    .line 903
    :cond_25
    const-string v0, "Protocol error: Payload is not UTF8"

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 904
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(I)V

    throw v0

    .line 907
    :cond_32
    :goto_32
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    if-ne p3, v0, :cond_41

    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    if-eqz v0, :cond_41

    .line 908
    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 910
    :cond_41
    return-void

    .line 897
    :cond_42
    const-string v0, "Protocol error: Continuous frame sequence was not started."

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 898
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private processFrameIsFin(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 6
    .param p1, "webSocketImpl"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "frame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    if-eqz v0, :cond_76

    .line 968
    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 969
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->checkBufferLimit()V

    .line 970
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    invoke-interface {v0}, Lcom/tds/common/websocket/framing/Framedata;->getOpcode()Lcom/tds/common/websocket/enums/Opcode;

    move-result-object v0

    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_41

    .line 971
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    check-cast v0, Lcom/tds/common/websocket/framing/FramedataImpl1;

    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 972
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    check-cast v0, Lcom/tds/common/websocket/framing/FramedataImpl1;

    invoke-virtual {v0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->isValid()V

    .line 974
    :try_start_2a
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    .line 975
    invoke-interface {v1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 974
    invoke-interface {v0, p1, v1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_3b} :catch_3c

    goto :goto_40

    .line 976
    :catch_3c
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->logRuntimeException(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/lang/RuntimeException;)V

    .line 978
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_40
    goto :goto_6f

    .line 979
    :cond_41
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    invoke-interface {v0}, Lcom/tds/common/websocket/framing/Framedata;->getOpcode()Lcom/tds/common/websocket/enums/Opcode;

    move-result-object v0

    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->BINARY:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_6f

    .line 980
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    check-cast v0, Lcom/tds/common/websocket/framing/FramedataImpl1;

    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getPayloadFromByteBufferList()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 981
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    check-cast v0, Lcom/tds/common/websocket/framing/FramedataImpl1;

    invoke-virtual {v0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->isValid()V

    .line 983
    :try_start_5d
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    .line 984
    invoke-interface {v1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/nio/ByteBuffer;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_6a} :catch_6b

    .line 987
    goto :goto_6f

    .line 985
    :catch_6b
    move-exception v0

    .line 986
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->logRuntimeException(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/lang/RuntimeException;)V

    .line 989
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_6f
    :goto_6f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    .line 990
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->clearBufferList()V

    .line 991
    return-void

    .line 964
    :cond_76
    const-string v0, "Protocol error: Previous continuous frame sequence not completed."

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 965
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private processFrameIsNotFin(Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 5
    .param p1, "frame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    if-nez v0, :cond_11

    .line 1005
    iput-object p1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    .line 1006
    invoke-interface {p1}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->addToBufferList(Ljava/nio/ByteBuffer;)V

    .line 1007
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->checkBufferLimit()V

    .line 1008
    return-void

    .line 1001
    :cond_11
    const-string v0, "Protocol error: Previous continuous frame sequence not completed."

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 1002
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const/16 v1, 0x3ea

    const-string v2, "Previous continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private processFrameText(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 5
    .param p1, "webSocketImpl"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "frame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 947
    :try_start_0
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;

    move-result-object v0

    .line 948
    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/common/websocket/util/Charsetfunctions;->stringUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketMessage(Lcom/tds/common/websocket/conn/WebSocket;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    .line 951
    goto :goto_14

    .line 949
    :catch_10
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->logRuntimeException(Lcom/tds/common/websocket/conn/WebSocketImpl;Ljava/lang/RuntimeException;)V

    .line 952
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_14
    return-void
.end method

.method private toByteArray(JI)[B
    .registers 9
    .param p1, "val"    # J
    .param p3, "bytecount"    # I

    .line 807
    new-array v0, p3, [B

    .line 808
    .local v0, "buffer":[B
    mul-int/lit8 v1, p3, 0x8

    add-int/lit8 v1, v1, -0x8

    .line 809
    .local v1, "highest":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, p3, :cond_16

    .line 810
    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 812
    .end local v2    # "i":I
    :cond_16
    return-object v0
.end method

.method private toOpcode(B)Lcom/tds/common/websocket/enums/Opcode;
    .registers 5
    .param p1, "opcode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidFrameException;
        }
    .end annotation

    .line 834
    packed-switch p1, :pswitch_data_30

    .line 850
    :pswitch_3
    new-instance v0, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :pswitch_1d
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->PONG:Lcom/tds/common/websocket/enums/Opcode;

    return-object v0

    .line 845
    :pswitch_20
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->PING:Lcom/tds/common/websocket/enums/Opcode;

    return-object v0

    .line 843
    :pswitch_23
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CLOSING:Lcom/tds/common/websocket/enums/Opcode;

    return-object v0

    .line 840
    :pswitch_26
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->BINARY:Lcom/tds/common/websocket/enums/Opcode;

    return-object v0

    .line 838
    :pswitch_29
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    return-object v0

    .line 836
    :pswitch_2c
    sget-object v0, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/tds/common/websocket/framing/Framedata;
    .registers 22
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/IncompleteException;,
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 509
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_da

    .line 512
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 513
    .local v8, "maxpacketsize":I
    const/4 v9, 0x2

    .line 514
    .local v9, "realpacketsize":I
    invoke-direct {v6, v8, v9}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 515
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 516
    .local v10, "b1":B
    shr-int/lit8 v0, v10, 0x8

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v11

    :goto_1b
    move v12, v0

    .line 517
    .local v12, "fin":Z
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_22

    move v0, v1

    goto :goto_23

    :cond_22
    move v0, v11

    :goto_23
    move v13, v0

    .line 518
    .local v13, "rsv1":Z
    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v11

    :goto_2b
    move v14, v0

    .line 519
    .local v14, "rsv2":Z
    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_32

    move v0, v1

    goto :goto_33

    :cond_32
    move v0, v11

    :goto_33
    move v15, v0

    .line 520
    .local v15, "rsv3":Z
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v16

    .line 521
    .local v16, "b2":B
    and-int/lit8 v0, v16, -0x80

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v11

    :goto_3e
    move/from16 v17, v1

    .line 522
    .local v17, "mask":Z
    and-int/lit8 v0, v16, 0x7f

    int-to-byte v5, v0

    .line 523
    .local v5, "payloadlength":I
    and-int/lit8 v0, v10, 0xf

    int-to-byte v0, v0

    invoke-direct {v6, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->toOpcode(B)Lcom/tds/common/websocket/enums/Opcode;

    move-result-object v18

    .line 525
    .local v18, "optcode":Lcom/tds/common/websocket/enums/Opcode;
    if-ltz v5, :cond_50

    const/16 v0, 0x7d

    if-le v5, v0, :cond_67

    .line 526
    :cond_50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move v3, v5

    move v4, v8

    move/from16 v19, v5

    .end local v5    # "payloadlength":I
    .local v19, "payloadlength":I
    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFramePayloadLength(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/enums/Opcode;III)Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    move-result-object v0

    .line 528
    .local v0, "payloadData":Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    # invokes: Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getPayloadLength()I
    invoke-static {v0}, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->access$000(Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I

    move-result v5

    .line 529
    .end local v19    # "payloadlength":I
    .restart local v5    # "payloadlength":I
    # invokes: Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getRealPackageSize()I
    invoke-static {v0}, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->access$100(Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I

    move-result v9

    .line 531
    .end local v0    # "payloadData":Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    :cond_67
    int-to-long v0, v5

    invoke-direct {v6, v0, v1}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrameCheckLengthLimit(J)V

    .line 532
    const/4 v0, 0x4

    if-eqz v17, :cond_6f

    move v11, v0

    :cond_6f
    add-int/2addr v9, v11

    .line 533
    add-int/2addr v9, v5

    .line 534
    invoke-direct {v6, v8, v9}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 536
    invoke-virtual {v6, v5}, Lcom/tds/common/websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 537
    .local v1, "payload":Ljava/nio/ByteBuffer;
    if-eqz v17, :cond_97

    .line 538
    new-array v0, v0, [B

    .line 539
    .local v0, "maskskey":[B
    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_84
    if-ge v2, v5, :cond_96

    .line 541
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    rem-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 543
    .end local v0    # "maskskey":[B
    .end local v2    # "i":I
    :cond_96
    goto :goto_b2

    .line 544
    :cond_97
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 545
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 548
    :goto_b2
    invoke-static/range {v18 .. v18}, Lcom/tds/common/websocket/framing/FramedataImpl1;->get(Lcom/tds/common/websocket/enums/Opcode;)Lcom/tds/common/websocket/framing/FramedataImpl1;

    move-result-object v0

    .line 549
    .local v0, "frame":Lcom/tds/common/websocket/framing/FramedataImpl1;
    invoke-virtual {v0, v12}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setFin(Z)V

    .line 550
    invoke-virtual {v0, v13}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setRSV1(Z)V

    .line 551
    invoke-virtual {v0, v14}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setRSV2(Z)V

    .line 552
    invoke-virtual {v0, v15}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setRSV3(Z)V

    .line 553
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 554
    invoke-virtual {v0, v1}, Lcom/tds/common/websocket/framing/FramedataImpl1;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tds/common/websocket/extensions/IExtension;->isFrameValid(Lcom/tds/common/websocket/framing/Framedata;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tds/common/websocket/extensions/IExtension;->decodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V

    .line 557
    invoke-virtual {v0}, Lcom/tds/common/websocket/framing/FramedataImpl1;->isValid()V

    .line 558
    return-object v0

    .line 510
    .end local v0    # "frame":Lcom/tds/common/websocket/framing/FramedataImpl1;
    .end local v1    # "payload":Ljava/nio/ByteBuffer;
    .end local v5    # "payloadlength":I
    .end local v8    # "maxpacketsize":I
    .end local v9    # "realpacketsize":I
    .end local v10    # "b1":B
    .end local v12    # "fin":Z
    .end local v13    # "rsv1":Z
    .end local v14    # "rsv2":Z
    .end local v15    # "rsv3":Z
    .end local v16    # "b2":B
    .end local v17    # "mask":Z
    .end local v18    # "optcode":Lcom/tds/common/websocket/enums/Opcode;
    :cond_da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private translateSingleFrameCheckLengthLimit(J)V
    .registers 6
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .line 611
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_4e

    .line 615
    iget v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_22

    .line 619
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    .line 623
    return-void

    .line 620
    :cond_15
    const-string v0, "Limit underflow: Payloadsize is to little..."

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 621
    new-instance v0, Lcom/tds/common/websocket/exceptions/LimitExceededException;

    const-string v1, "Payloadsize is to little..."

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Payload limit reached. Allowed: {}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 617
    new-instance v0, Lcom/tds/common/websocket/exceptions/LimitExceededException;

    iget v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    const-string v2, "Payload limit reached."

    invoke-direct {v0, v2, v1}, Lcom/tds/common/websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 612
    :cond_4e
    const-string v0, "Limit exedeed: Payloadsize is to big..."

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 613
    new-instance v0, Lcom/tds/common/websocket/exceptions/LimitExceededException;

    const-string v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, Lcom/tds/common/websocket/exceptions/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private translateSingleFrameCheckPacketSize(II)V
    .registers 4
    .param p1, "maxpacketsize"    # I
    .param p2, "realpacketsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/IncompleteException;
        }
    .end annotation

    .line 634
    if-lt p1, p2, :cond_3

    .line 638
    return-void

    .line 635
    :cond_3
    const-string v0, "Incomplete frame: maxpacketsize < realpacketsize"

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 636
    new-instance v0, Lcom/tds/common/websocket/exceptions/IncompleteException;

    invoke-direct {v0, p2}, Lcom/tds/common/websocket/exceptions/IncompleteException;-><init>(I)V

    throw v0
.end method

.method private translateSingleFramePayloadLength(Ljava/nio/ByteBuffer;Lcom/tds/common/websocket/enums/Opcode;III)Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
    .registers 12
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "optcode"    # Lcom/tds/common/websocket/enums/Opcode;
    .param p3, "oldPayloadlength"    # I
    .param p4, "maxpacketsize"    # I
    .param p5, "oldRealpacketsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidFrameException;,
            Lcom/tds/common/websocket/exceptions/IncompleteException;,
            Lcom/tds/common/websocket/exceptions/LimitExceededException;
        }
    .end annotation

    .line 577
    move v0, p3

    .line 578
    .local v0, "payloadlength":I
    move v1, p5

    .line 579
    .local v1, "realpacketsize":I
    sget-object v2, Lcom/tds/common/websocket/enums/Opcode;->PING:Lcom/tds/common/websocket/enums/Opcode;

    if-eq p2, v2, :cond_58

    sget-object v2, Lcom/tds/common/websocket/enums/Opcode;->PONG:Lcom/tds/common/websocket/enums/Opcode;

    if-eq p2, v2, :cond_58

    sget-object v2, Lcom/tds/common/websocket/enums/Opcode;->CLOSING:Lcom/tds/common/websocket/enums/Opcode;

    if-eq p2, v2, :cond_58

    .line 583
    const/16 v2, 0x7e

    if-ne v0, v2, :cond_31

    .line 584
    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 585
    invoke-direct {p0, p4, v1}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 586
    const/4 v3, 0x3

    new-array v3, v3, [B

    .line 587
    .local v3, "sizebytes":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    .line 588
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 589
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 590
    .end local v3    # "sizebytes":[B
    goto :goto_52

    .line 591
    :cond_31
    const/16 v2, 0x8

    add-int/2addr v1, v2

    .line 592
    invoke-direct {p0, p4, v1}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrameCheckPacketSize(II)V

    .line 593
    new-array v3, v2, [B

    .line 594
    .local v3, "bytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    if-ge v4, v2, :cond_45

    .line 595
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v3, v4

    .line 594
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 597
    .end local v4    # "i":I
    :cond_45
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 598
    .local v4, "length":J
    invoke-direct {p0, v4, v5}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrameCheckLengthLimit(J)V

    .line 599
    long-to-int v0, v4

    .line 601
    .end local v3    # "bytes":[B
    .end local v4    # "length":J
    :goto_52
    new-instance v2, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    invoke-direct {v2, p0, v0, v1}, Lcom/tds/common/websocket/drafts/Draft_6455$TranslatedPayloadMetaData;-><init>(Lcom/tds/common/websocket/drafts/Draft_6455;II)V

    return-object v2

    .line 580
    :cond_58
    const-string v2, "Invalid frame: more than 125 octets"

    invoke-static {v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 581
    new-instance v2, Lcom/tds/common/websocket/exceptions/InvalidFrameException;

    const-string v3, "more than 125 octets"

    invoke-direct {v2, v3}, Lcom/tds/common/websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshake;)Lcom/tds/common/websocket/enums/HandshakeState;
    .registers 10
    .param p1, "request"    # Lcom/tds/common/websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lcom/tds/common/websocket/handshake/ServerHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p2}, Lcom/tds/common/websocket/drafts/Draft_6455;->basicAccept(Lcom/tds/common/websocket/handshake/Handshakedata;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 293
    const-string v0, "acceptHandshakeAsClient - Missing/wrong upgrade or connection in handshake."

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v0

    .line 296
    :cond_e
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/handshake/ClientHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 297
    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {p2, v1}, Lcom/tds/common/websocket/handshake/ServerHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_84

    .line 302
    :cond_1f
    invoke-interface {p2, v1}, Lcom/tds/common/websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "seckeyAnswer":Ljava/lang/String;
    invoke-interface {p1, v0}, Lcom/tds/common/websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "seckeyChallenge":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 307
    const-string v2, "acceptHandshakeAsClient - Wrong key for Sec-WebSocket-Key."

    invoke-static {v2}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 308
    sget-object v2, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v2

    .line 310
    :cond_39
    sget-object v2, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    .line 311
    .local v2, "extensionState":Lcom/tds/common/websocket/enums/HandshakeState;
    const-string v3, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v3}, Lcom/tds/common/websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "requestedExtension":Ljava/lang/String;
    iget-object v4, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/common/websocket/extensions/IExtension;

    .line 313
    .local v5, "knownExtension":Lcom/tds/common/websocket/extensions/IExtension;
    invoke-interface {v5, v3}, Lcom/tds/common/websocket/extensions/IExtension;->acceptProvidedExtensionAsClient(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 314
    iput-object v5, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    .line 315
    sget-object v2, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    .line 316
    iget-object v4, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    const-string v6, "acceptHandshakeAsClient - Matching extension found: {}"

    invoke-static {v6, v4}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    goto :goto_66

    .line 319
    .end local v5    # "knownExtension":Lcom/tds/common/websocket/extensions/IExtension;
    :cond_65
    goto :goto_47

    .line 320
    :cond_66
    :goto_66
    nop

    .line 321
    const-string v4, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v4}, Lcom/tds/common/websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-direct {p0, v4}, Lcom/tds/common/websocket/drafts/Draft_6455;->containsRequestedProtocol(Ljava/lang/String;)Lcom/tds/common/websocket/enums/HandshakeState;

    move-result-object v4

    .line 322
    .local v4, "protocolState":Lcom/tds/common/websocket/enums/HandshakeState;
    sget-object v5, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    if-ne v4, v5, :cond_7c

    sget-object v5, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    if-ne v2, v5, :cond_7c

    .line 323
    sget-object v5, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v5

    .line 325
    :cond_7c
    const-string v5, "acceptHandshakeAsClient - No matching extension or protocol found."

    invoke-static {v5}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 326
    sget-object v5, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v5

    .line 298
    .end local v0    # "seckeyChallenge":Ljava/lang/String;
    .end local v1    # "seckeyAnswer":Ljava/lang/String;
    .end local v2    # "extensionState":Lcom/tds/common/websocket/enums/HandshakeState;
    .end local v3    # "requestedExtension":Ljava/lang/String;
    .end local v4    # "protocolState":Lcom/tds/common/websocket/enums/HandshakeState;
    :cond_84
    :goto_84
    const-string v0, "acceptHandshakeAsClient - Missing Sec-WebSocket-Key or Sec-WebSocket-Accept"

    invoke-static {v0}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v0
.end method

.method public acceptHandshakeAsServer(Lcom/tds/common/websocket/handshake/ClientHandshake;)Lcom/tds/common/websocket/enums/HandshakeState;
    .registers 8
    .param p1, "handshakedata"    # Lcom/tds/common/websocket/handshake/ClientHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lcom/tds/common/websocket/drafts/Draft_6455;->readVersion(Lcom/tds/common/websocket/handshake/Handshakedata;)I

    move-result v0

    .line 249
    .local v0, "v":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_10

    .line 250
    const-string v1, "acceptHandshakeAsServer - Wrong websocket version."

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 251
    sget-object v1, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v1

    .line 253
    :cond_10
    sget-object v1, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    .line 254
    .local v1, "extensionState":Lcom/tds/common/websocket/enums/HandshakeState;
    const-string v2, "Sec-WebSocket-Extensions"

    invoke-interface {p1, v2}, Lcom/tds/common/websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "requestedExtension":Ljava/lang/String;
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/common/websocket/extensions/IExtension;

    .line 256
    .local v4, "knownExtension":Lcom/tds/common/websocket/extensions/IExtension;
    invoke-interface {v4, v2}, Lcom/tds/common/websocket/extensions/IExtension;->acceptProvidedExtensionAsServer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 257
    iput-object v4, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    .line 258
    sget-object v1, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    .line 259
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    const-string v5, "acceptHandshakeAsServer - Matching extension found: {}"

    invoke-static {v5, v3}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    goto :goto_3d

    .line 262
    .end local v4    # "knownExtension":Lcom/tds/common/websocket/extensions/IExtension;
    :cond_3c
    goto :goto_1e

    .line 263
    :cond_3d
    :goto_3d
    nop

    .line 264
    const-string v3, "Sec-WebSocket-Protocol"

    invoke-interface {p1, v3}, Lcom/tds/common/websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-direct {p0, v3}, Lcom/tds/common/websocket/drafts/Draft_6455;->containsRequestedProtocol(Ljava/lang/String;)Lcom/tds/common/websocket/enums/HandshakeState;

    move-result-object v3

    .line 265
    .local v3, "protocolState":Lcom/tds/common/websocket/enums/HandshakeState;
    sget-object v4, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    if-ne v3, v4, :cond_53

    sget-object v4, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    if-ne v1, v4, :cond_53

    .line 266
    sget-object v4, Lcom/tds/common/websocket/enums/HandshakeState;->MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v4

    .line 268
    :cond_53
    const-string v4, "acceptHandshakeAsServer - No matching extension or protocol found."

    invoke-static {v4}, Lcom/tds/common/websocket/util/LogUtil;->logD(Ljava/lang/String;)V

    .line 269
    sget-object v4, Lcom/tds/common/websocket/enums/HandshakeState;->NOT_MATCHED:Lcom/tds/common/websocket/enums/HandshakeState;

    return-object v4
.end method

.method public copyInstance()Lcom/tds/common/websocket/drafts/Draft;
    .registers 6

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v0, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tds/common/websocket/extensions/IExtension;>;"
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getKnownExtensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/websocket/extensions/IExtension;

    .line 442
    .local v2, "extension":Lcom/tds/common/websocket/extensions/IExtension;
    invoke-interface {v2}, Lcom/tds/common/websocket/extensions/IExtension;->copyInstance()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v2    # "extension":Lcom/tds/common/websocket/extensions/IExtension;
    goto :goto_d

    .line 444
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "newProtocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tds/common/websocket/protocols/IProtocol;>;"
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getKnownProtocols()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/websocket/protocols/IProtocol;

    .line 446
    .local v3, "protocol":Lcom/tds/common/websocket/protocols/IProtocol;
    invoke-interface {v3}, Lcom/tds/common/websocket/protocols/IProtocol;->copyInstance()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v3    # "protocol":Lcom/tds/common/websocket/protocols/IProtocol;
    goto :goto_2e

    .line 448
    :cond_42
    new-instance v2, Lcom/tds/common/websocket/drafts/Draft_6455;

    iget v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-direct {v2, v0, v1, v3}, Lcom/tds/common/websocket/drafts/Draft_6455;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object v2
.end method

.method public createBinaryFrame(Lcom/tds/common/websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "framedata"    # Lcom/tds/common/websocket/framing/Framedata;

    .line 453
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tds/common/websocket/extensions/IExtension;->encodeFrame(Lcom/tds/common/websocket/framing/Framedata;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/drafts/Draft_6455;->createByteBufferFromFramedata(Lcom/tds/common/websocket/framing/Framedata;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mask"    # Z
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

    .line 754
    new-instance v0, Lcom/tds/common/websocket/framing/TextFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/TextFrame;-><init>()V

    .line 755
    .local v0, "curframe":Lcom/tds/common/websocket/framing/TextFrame;
    invoke-static {p1}, Lcom/tds/common/websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/websocket/framing/TextFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 756
    invoke-virtual {v0, p2}, Lcom/tds/common/websocket/framing/TextFrame;->setTransferemasked(Z)V

    .line 758
    :try_start_13
    invoke-virtual {v0}, Lcom/tds/common/websocket/framing/TextFrame;->isValid()V
    :try_end_16
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_13 .. :try_end_16} :catch_1c

    .line 761
    nop

    .line 762
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 759
    :catch_1c
    move-exception v1

    .line 760
    .local v1, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    new-instance v2, Lcom/tds/common/websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lcom/tds/common/websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .registers 6
    .param p1, "binary"    # Ljava/nio/ByteBuffer;
    .param p2, "mask"    # Z
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

    .line 741
    new-instance v0, Lcom/tds/common/websocket/framing/BinaryFrame;

    invoke-direct {v0}, Lcom/tds/common/websocket/framing/BinaryFrame;-><init>()V

    .line 742
    .local v0, "curframe":Lcom/tds/common/websocket/framing/BinaryFrame;
    invoke-virtual {v0, p1}, Lcom/tds/common/websocket/framing/BinaryFrame;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 743
    invoke-virtual {v0, p2}, Lcom/tds/common/websocket/framing/BinaryFrame;->setTransferemasked(Z)V

    .line 745
    :try_start_b
    invoke-virtual {v0}, Lcom/tds/common/websocket/framing/BinaryFrame;->isValid()V
    :try_end_e
    .catch Lcom/tds/common/websocket/exceptions/InvalidDataException; {:try_start_b .. :try_end_e} :catch_14

    .line 748
    nop

    .line 749
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 746
    :catch_14
    move-exception v1

    .line 747
    .local v1, "e":Lcom/tds/common/websocket/exceptions/InvalidDataException;
    new-instance v2, Lcom/tds/common/websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lcom/tds/common/websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1092
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1093
    return v0

    .line 1095
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    .line 1099
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/tds/common/websocket/drafts/Draft_6455;

    .line 1101
    .local v2, "that":Lcom/tds/common/websocket/drafts/Draft_6455;
    iget v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->getMaxFrameSize()I

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 1102
    return v1

    .line 1104
    :cond_1e
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_33

    :cond_2d
    invoke-virtual {v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1105
    :goto_33
    return v1

    .line 1107
    :cond_34
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->protocol:Lcom/tds/common/websocket/protocols/IProtocol;

    if-eqz v3, :cond_41

    invoke-virtual {v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_49

    :cond_41
    invoke-virtual {v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v3

    if-nez v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    :goto_49
    return v0

    .line 1096
    .end local v2    # "that":Lcom/tds/common/websocket/drafts/Draft_6455;
    :cond_4a
    :goto_4a
    return v1
.end method

.method public getCloseHandshakeType()Lcom/tds/common/websocket/enums/CloseHandshakeType;
    .registers 2

    .line 1074
    sget-object v0, Lcom/tds/common/websocket/enums/CloseHandshakeType;->TWOWAY:Lcom/tds/common/websocket/enums/CloseHandshakeType;

    return-object v0
.end method

.method public getExtension()Lcom/tds/common/websocket/extensions/IExtension;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    return-object v0
.end method

.method public getKnownExtensions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/extensions/IExtension;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getKnownProtocols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tds/common/websocket/protocols/IProtocol;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    return-object v0
.end method

.method public getMaxFrameSize()I
    .registers 2

    .line 365
    iget v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    return v0
.end method

.method public getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->protocol:Lcom/tds/common/websocket/protocols/IProtocol;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1112
    iget-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1113
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->protocol:Lcom/tds/common/websocket/protocols/IProtocol;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v2, v1

    .line 1114
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    ushr-int/lit8 v3, v1, 0x20

    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1115
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public postProcessHandshakeRequestAsClient(Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;)Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;
    .registers 9
    .param p1, "request"    # Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;

    .line 381
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p1, v0, v1}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "Connection"

    invoke-interface {p1, v1, v0}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 384
    .local v0, "random":[B
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 385
    invoke-static {v0}, Lcom/tds/common/websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Key"

    invoke-interface {p1, v2, v1}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    invoke-interface {p1, v1, v2}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v1, "requestedExtensions":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/common/websocket/extensions/IExtension;

    .line 389
    .local v3, "knownExtension":Lcom/tds/common/websocket/extensions/IExtension;
    invoke-interface {v3}, Lcom/tds/common/websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5e

    .line 390
    invoke-interface {v3}, Lcom/tds/common/websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5e

    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_57

    .line 392
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_57
    invoke-interface {v3}, Lcom/tds/common/websocket/extensions/IExtension;->getProvidedExtensionAsClient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .end local v3    # "knownExtension":Lcom/tds/common/websocket/extensions/IExtension;
    :cond_5e
    goto :goto_30

    .line 397
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_6e

    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sec-WebSocket-Extensions"

    invoke-interface {p1, v3, v2}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v2, "requestedProtocols":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->knownProtocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/common/websocket/protocols/IProtocol;

    .line 402
    .local v5, "knownProtocol":Lcom/tds/common/websocket/protocols/IProtocol;
    invoke-interface {v5}, Lcom/tds/common/websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9f

    .line 403
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_98

    .line 404
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_98
    invoke-interface {v5}, Lcom/tds/common/websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .end local v5    # "knownProtocol":Lcom/tds/common/websocket/protocols/IProtocol;
    :cond_9f
    goto :goto_79

    .line 409
    :cond_a0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_af

    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sec-WebSocket-Protocol"

    invoke-interface {p1, v4, v3}, Lcom/tds/common/websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_af
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lcom/tds/common/websocket/handshake/ClientHandshake;Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;)Lcom/tds/common/websocket/handshake/HandshakeBuilder;
    .registers 6
    .param p1, "request"    # Lcom/tds/common/websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 418
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p2, v0, v1}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    nop

    .line 420
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-interface {p2, v0, v1}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/tds/common/websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "seckey":Ljava/lang/String;
    if-eqz v0, :cond_7c

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 425
    invoke-direct {p0, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-interface {p2, v2, v1}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/tds/common/websocket/extensions/IExtension;->getProvidedExtensionAsServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    .line 427
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/tds/common/websocket/extensions/IExtension;->getProvidedExtensionAsServer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v2, v1}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_45
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v1

    invoke-interface {v1}, Lcom/tds/common/websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_66

    .line 430
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v1

    invoke-interface {v1}, Lcom/tds/common/websocket/protocols/IProtocol;->getProvidedProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v2, v1}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_66
    const-string v1, "Web Socket Protocol Handshake"

    invoke-interface {p2, v1}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 433
    const-string v1, "Server"

    const-string v2, "TooTallNate Java-WebSocket"

    invoke-interface {p2, v1, v2}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getServerTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-interface {p2, v2, v1}, Lcom/tds/common/websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-object p2

    .line 423
    :cond_7c
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;

    const-string v2, "missing Sec-WebSocket-Key"

    invoke-direct {v1, v2}, Lcom/tds/common/websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processFrame(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V
    .registers 7
    .param p1, "webSocketImpl"    # Lcom/tds/common/websocket/conn/WebSocketImpl;
    .param p2, "frame"    # Lcom/tds/common/websocket/framing/Framedata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/common/websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .line 857
    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->getOpcode()Lcom/tds/common/websocket/enums/Opcode;

    move-result-object v0

    .line 858
    .local v0, "curop":Lcom/tds/common/websocket/enums/Opcode;
    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->CLOSING:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_c

    .line 859
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/drafts/Draft_6455;->processFrameClosing(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V

    goto :goto_63

    .line 860
    :cond_c
    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->PING:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_18

    .line 861
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketPing(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/framing/Framedata;)V

    goto :goto_63

    .line 862
    :cond_18
    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->PONG:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_27

    .line 863
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->updateLastPong()V

    .line 864
    invoke-virtual {p1}, Lcom/tds/common/websocket/conn/WebSocketImpl;->getWebSocketListener()Lcom/tds/common/websocket/conn/WebSocketListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tds/common/websocket/conn/WebSocketListener;->onWebsocketPong(Lcom/tds/common/websocket/conn/WebSocket;Lcom/tds/common/websocket/framing/Framedata;)V

    goto :goto_63

    .line 865
    :cond_27
    invoke-interface {p2}, Lcom/tds/common/websocket/framing/Framedata;->isFin()Z

    move-result v1

    if-eqz v1, :cond_60

    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->CONTINUOUS:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_32

    goto :goto_60

    .line 867
    :cond_32
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->currentContinuousFrame:Lcom/tds/common/websocket/framing/Framedata;

    const/16 v2, 0x3ea

    if-nez v1, :cond_53

    .line 871
    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->TEXT:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_40

    .line 872
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/drafts/Draft_6455;->processFrameText(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V

    goto :goto_63

    .line 873
    :cond_40
    sget-object v1, Lcom/tds/common/websocket/enums/Opcode;->BINARY:Lcom/tds/common/websocket/enums/Opcode;

    if-ne v0, v1, :cond_48

    .line 874
    invoke-direct {p0, p1, p2}, Lcom/tds/common/websocket/drafts/Draft_6455;->processFrameBinary(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;)V

    goto :goto_63

    .line 876
    :cond_48
    const-string v1, "non control or continious frame expected"

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 877
    new-instance v3, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    invoke-direct {v3, v2, v1}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 868
    :cond_53
    const-string v1, "Protocol error: Continuous frame sequence not completed."

    invoke-static {v1}, Lcom/tds/common/websocket/util/LogUtil;->logE(Ljava/lang/String;)V

    .line 869
    new-instance v1, Lcom/tds/common/websocket/exceptions/InvalidDataException;

    const-string v3, "Continuous frame sequence not completed."

    invoke-direct {v1, v2, v3}, Lcom/tds/common/websocket/exceptions/InvalidDataException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 866
    :cond_60
    :goto_60
    invoke-direct {p0, p1, p2, v0}, Lcom/tds/common/websocket/drafts/Draft_6455;->processFrameContinuousAndNonFin(Lcom/tds/common/websocket/conn/WebSocketImpl;Lcom/tds/common/websocket/framing/Framedata;Lcom/tds/common/websocket/enums/Opcode;)V

    .line 880
    :goto_63
    return-void
.end method

.method public reset()V
    .registers 3

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 768
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    if-eqz v1, :cond_a

    .line 769
    invoke-interface {v1}, Lcom/tds/common/websocket/extensions/IExtension;->reset()V

    .line 771
    :cond_a
    new-instance v1, Lcom/tds/common/websocket/extensions/DefaultExtension;

    invoke-direct {v1}, Lcom/tds/common/websocket/extensions/DefaultExtension;-><init>()V

    iput-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->extension:Lcom/tds/common/websocket/extensions/IExtension;

    .line 772
    iput-object v0, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->protocol:Lcom/tds/common/websocket/protocols/IProtocol;

    .line 773
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1079
    invoke-super {p0}, Lcom/tds/common/websocket/drafts/Draft;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getExtension()Lcom/tds/common/websocket/extensions/IExtension;

    move-result-object v2

    invoke-interface {v2}, Lcom/tds/common/websocket/extensions/IExtension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    :cond_29
    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tds/common/websocket/drafts/Draft_6455;->getProtocol()Lcom/tds/common/websocket/protocols/IProtocol;

    move-result-object v2

    invoke-interface {v2}, Lcom/tds/common/websocket/protocols/IProtocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max frame size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->maxFrameSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    return-object v0
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
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

    .line 688
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 690
    .local v0, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/websocket/framing/Framedata;>;"
    iget-object v1, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_7a

    .line 693
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 694
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 695
    .local v1, "availableNextByteCount":I
    iget-object v2, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 696
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 698
    .local v2, "expectedNextByteCount":I
    if-le v2, v1, :cond_32

    .line 700
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 701
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 702
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 704
    :cond_32
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 705
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 706
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/tds/common/websocket/framing/Framedata;

    move-result-object v3

    .line 707
    .local v3, "cur":Lcom/tds/common/websocket/framing/Framedata;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;
    :try_end_5e
    .catch Lcom/tds/common/websocket/exceptions/IncompleteException; {:try_start_9 .. :try_end_5e} :catch_5f

    .line 717
    .end local v1    # "availableNextByteCount":I
    .end local v2    # "expectedNextByteCount":I
    goto :goto_7a

    .line 709
    .end local v3    # "cur":Lcom/tds/common/websocket/framing/Framedata;
    :catch_5f
    move-exception v1

    .line 711
    .local v1, "e":Lcom/tds/common/websocket/exceptions/IncompleteException;
    invoke-virtual {v1}, Lcom/tds/common/websocket/exceptions/IncompleteException;->getPreferredSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 712
    .local v2, "extendedframe":Ljava/nio/ByteBuffer;
    nop

    .line 713
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 714
    iget-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 715
    iput-object v2, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 716
    goto :goto_0

    .line 721
    .end local v1    # "e":Lcom/tds/common/websocket/exceptions/IncompleteException;
    .end local v2    # "extendedframe":Ljava/nio/ByteBuffer;
    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 722
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 724
    :try_start_83
    invoke-direct {p0, p1}, Lcom/tds/common/websocket/drafts/Draft_6455;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lcom/tds/common/websocket/framing/Framedata;

    move-result-object v1

    .line 725
    .local v1, "cur":Lcom/tds/common/websocket/framing/Framedata;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Lcom/tds/common/websocket/exceptions/IncompleteException; {:try_start_83 .. :try_end_8a} :catch_8b

    .line 733
    goto :goto_7a

    .line 726
    .end local v1    # "cur":Lcom/tds/common/websocket/framing/Framedata;
    :catch_8b
    move-exception v1

    .line 728
    .local v1, "e":Lcom/tds/common/websocket/exceptions/IncompleteException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 729
    invoke-virtual {v1}, Lcom/tds/common/websocket/exceptions/IncompleteException;->getPreferredSize()I

    move-result v2

    .line 730
    .local v2, "pref":I
    invoke-virtual {p0, v2}, Lcom/tds/common/websocket/drafts/Draft_6455;->checkAlloc(I)I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/tds/common/websocket/drafts/Draft_6455;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 731
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 735
    .end local v1    # "e":Lcom/tds/common/websocket/exceptions/IncompleteException;
    .end local v2    # "pref":I
    :cond_a0
    return-object v0
.end method
