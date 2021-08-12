.class public final Lcom/sigmob/wire/ProtoReader;
.super Ljava/lang/Object;


# static fields
.field private static final FIELD_ENCODING_MASK:I = 0x7

.field private static final RECURSION_LIMIT:I = 0x41

.field private static final STATE_END_GROUP:I = 0x4

.field private static final STATE_FIXED32:I = 0x5

.field private static final STATE_FIXED64:I = 0x1

.field private static final STATE_LENGTH_DELIMITED:I = 0x2

.field private static final STATE_PACKED_TAG:I = 0x7

.field private static final STATE_START_GROUP:I = 0x3

.field private static final STATE_TAG:I = 0x6

.field private static final STATE_VARINT:I = 0x0

.field static final TAG_FIELD_ENCODING_BITS:I = 0x3


# instance fields
.field private limit:J

.field private nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

.field private pos:J

.field private pushedLimit:J

.field private recursionDepth:I

.field private final source:Lcom/sigmob/wire/okio/BufferedSource;

.field private state:I

.field private tag:I


# direct methods
.method public constructor <init>(Lcom/sigmob/wire/okio/BufferedSource;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    iput-object p1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    return-void
.end method

.method private afterPackableScalar(I)V
    .registers 8

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_8

    :goto_5
    iput v1, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    goto :goto_20

    :cond_8
    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_21

    cmp-long p1, v2, v4

    if-nez p1, :cond_1d

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    goto :goto_5

    :cond_1d
    const/4 p1, 0x7

    iput p1, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    :goto_20
    return-void

    :cond_21
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to end at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beforeLengthDelimitedScalar()J
    .registers 5

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    const/4 v2, 0x6

    iput v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    return-wide v0

    :cond_1f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyTag(Lcom/sigmob/wire/ProtoWriter;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v1

    :try_start_c
    invoke-virtual {v0, p1, p2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private internalReadVarint32()I
    .registers 7

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v0

    if-ltz v0, :cond_15

    return v0

    :cond_15
    and-int/lit8 v0, v0, 0x7f

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_2d

    shl-int/lit8 v1, v3, 0x7

    :goto_2b
    or-int/2addr v0, v1

    goto :goto_9d

    :cond_2d
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_47

    shl-int/lit8 v1, v3, 0xe

    goto :goto_2b

    :cond_47
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_61

    shl-int/lit8 v1, v3, 0x15

    goto :goto_2b

    :cond_61
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v3, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v3}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    or-int/2addr v0, v4

    if-gez v3, :cond_9d

    const/4 v3, 0x0

    :goto_7c
    const/4 v4, 0x5

    if-ge v3, v4, :cond_95

    iget-object v4, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v4, v1, v2}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v4, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v4}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v4

    if-ltz v4, :cond_92

    return v0

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_95
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed VARINT"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9d
    :goto_9d
    return v0
.end method

.method private skipGroup(I)V
    .registers 7

    :goto_0
    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_72

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_72

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-eqz v0, :cond_6a

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_78

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected field encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_36
    const/4 v0, 0x5

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed32()I

    goto :goto_0

    :pswitch_3d
    if-ne v1, p1, :cond_40

    return-void

    :cond_40
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected end group"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_48
    invoke-direct {p0, v1}, Lcom/sigmob/wire/ProtoReader;->skipGroup(I)V

    goto :goto_0

    :pswitch_4c
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    iget-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0, v3, v4}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    goto :goto_0

    :pswitch_5c
    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed64()J

    goto :goto_0

    :pswitch_63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readVarint64()J

    goto :goto_0

    :cond_6a
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unexpected tag 0"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5c
        :pswitch_4c
        :pswitch_48
        :pswitch_3d
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method public beginMessage()J
    .registers 5

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    const/16 v1, 0x41

    if-gt v0, v1, :cond_19

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const/4 v2, 0x6

    iput v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    return-wide v0

    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to beginMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endMessage(J)V
    .registers 8

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_52

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    if-ltz v0, :cond_4a

    iget-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4a

    iget-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_47

    if-nez v0, :cond_20

    goto :goto_47

    :cond_20
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to end at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    :goto_47
    iput-wide p1, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    return-void

    :cond_4a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No corresponding call to beginMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call to endMessage()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEachTag(Lcom/sigmob/wire/TagHandler;)Lcom/sigmob/wire/okio/ByteString;
    .registers 9

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_6
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    invoke-interface {p1, v4}, Lcom/sigmob/wire/TagHandler;->decodeMessage(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/sigmob/wire/TagHandler;->UNKNOWN_TAG:Ljava/lang/Object;

    if-eq v5, v6, :cond_16

    goto :goto_6

    :cond_16
    if-nez v2, :cond_22

    new-instance v2, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v2}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    new-instance v3, Lcom/sigmob/wire/ProtoWriter;

    invoke-direct {v3, v2}, Lcom/sigmob/wire/ProtoWriter;-><init>(Lcom/sigmob/wire/okio/BufferedSink;)V

    :cond_22
    invoke-direct {p0, v3, v4}, Lcom/sigmob/wire/ProtoReader;->copyTag(Lcom/sigmob/wire/ProtoWriter;I)V

    goto :goto_6

    :cond_26
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    goto :goto_32

    :cond_30
    sget-object p1, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    :goto_32
    return-object p1
.end method

.method public nextTag()I
    .registers 8

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_b

    iput v1, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    :goto_8
    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    return v0

    :cond_b
    const/4 v2, 0x6

    if-ne v0, v2, :cond_ba

    :goto_e
    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_b8

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-eqz v0, :cond_b0

    shr-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_c2

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected field encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_46
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED32:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    const/4 v0, 0x5

    :goto_4b
    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    goto :goto_8

    :pswitch_4e
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_56
    invoke-direct {p0, v2}, Lcom/sigmob/wire/ProtoReader;->skipGroup(I)V

    goto :goto_e

    :pswitch_5a
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    iput v1, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-ltz v0, :cond_8b

    iget-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_85

    iget-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    iput-wide v1, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    iget-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_7f

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    return v0

    :cond_7f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_85
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8b
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_a4
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED64:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    const/4 v0, 0x1

    goto :goto_4b

    :pswitch_aa
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    const/4 v0, 0x0

    goto :goto_4b

    :cond_b0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    const/4 v0, -0x1

    return v0

    :cond_ba
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextTag()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_a4
        :pswitch_5a
        :pswitch_56
        :pswitch_4e
        :pswitch_46
    .end packed-switch
.end method

.method public peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    return-object v0
.end method

.method public readBytes()Lcom/sigmob/wire/okio/ByteString;
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->readByteString(J)Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readFixed32()I
    .registers 7

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_24

    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readIntLe()I

    move-result v0

    invoke-direct {p0, v1}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public readFixed64()J
    .registers 7

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_24

    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readLongLe()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v2
.end method

.method public readString()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readVarint32()I
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    if-eqz v0, :cond_23

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_23

    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public readVarint64()J
    .registers 10

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    if-eqz v0, :cond_23

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    goto :goto_23

    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_27
    const/16 v4, 0x40

    if-ge v3, v4, :cond_4d

    iget-object v4, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    const-wide/16 v5, 0x1

    invoke-interface {v4, v5, v6}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v7, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v4, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v4}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4a

    invoke-direct {p0, v2}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v0

    :cond_4a
    add-int/lit8 v3, v3, 0x7

    goto :goto_27

    :cond_4d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "WireInput encountered a malformed varint"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip()V
    .registers 4

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    packed-switch v0, :pswitch_data_24

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to skip()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed32()I

    goto :goto_22

    :pswitch_11
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    goto :goto_22

    :pswitch_1b
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed64()J

    goto :goto_22

    :pswitch_1f
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readVarint64()J

    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1b
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_d
    .end packed-switch
.end method
