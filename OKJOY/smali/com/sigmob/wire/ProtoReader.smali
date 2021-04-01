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
    .registers 7

    const/4 v4, 0x6

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    if-ne v0, p1, :cond_8

    iput v4, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    :goto_7
    return-void

    :cond_8
    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4a

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    iput v4, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    goto :goto_7

    :cond_4a
    const/4 v0, 0x7

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    goto :goto_7
.end method

.method private beforeLengthDelimitedScalar()J
    .registers 5

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

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

    :cond_20
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
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private internalReadVarint32()I
    .registers 7

    const-wide/16 v4, 0x1

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v0

    if-ltz v0, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    and-int/lit8 v0, v0, 0x7f

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v1

    if-ltz v1, :cond_2d

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_14

    :cond_2d
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v1

    if-ltz v1, :cond_48

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_14

    :cond_48
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v1

    if-ltz v1, :cond_63

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_14

    :cond_63
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_14

    const/4 v1, 0x0

    :goto_7e
    const/4 v2, 0x5

    if-ge v1, v2, :cond_96

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v2

    if-gez v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_96
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed VARINT"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private skipGroup(I)V
    .registers 8

    :goto_0
    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_73

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_7a

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

    :pswitch_3e
    invoke-direct {p0, v1}, Lcom/sigmob/wire/ProtoReader;->skipGroup(I)V

    goto :goto_0

    :pswitch_42
    if-ne v1, p1, :cond_45

    return-void

    :cond_45
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4d
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v1, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    goto :goto_0

    :pswitch_5e
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readVarint64()J

    goto :goto_0

    :pswitch_65
    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed64()J

    goto :goto_0

    :pswitch_6c
    const/4 v0, 0x5

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed32()I

    goto :goto_0

    :cond_73
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_65
        :pswitch_4d
        :pswitch_3e
        :pswitch_42
        :pswitch_6c
    .end packed-switch
.end method


# virtual methods
.method public beginMessage()J
    .registers 5

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to beginMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    const/16 v1, 0x41

    if-le v0, v1, :cond_1f

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wire recursion limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const/4 v2, 0x6

    iput v2, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    return-wide v0
.end method

.method public endMessage(J)V
    .registers 8

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to endMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No corresponding call to beginMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->recursionDepth:I

    if-eqz v0, :cond_58

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    iput-wide p1, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    return-void
.end method

.method public forEachTag(Lcom/sigmob/wire/TagHandler;)Lcom/sigmob/wire/okio/ByteString;
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    move-object v1, v0

    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_25

    invoke-interface {p1, v4}, Lcom/sigmob/wire/TagHandler;->decodeMessage(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/sigmob/wire/TagHandler;->UNKNOWN_TAG:Ljava/lang/Object;

    if-ne v5, v6, :cond_6

    if-nez v1, :cond_21

    new-instance v1, Lcom/sigmob/wire/okio/Buffer;

    invoke-direct {v1}, Lcom/sigmob/wire/okio/Buffer;-><init>()V

    new-instance v0, Lcom/sigmob/wire/ProtoWriter;

    invoke-direct {v0, v1}, Lcom/sigmob/wire/ProtoWriter;-><init>(Lcom/sigmob/wire/okio/BufferedSink;)V

    :cond_21
    invoke-direct {p0, v0, v4}, Lcom/sigmob/wire/ProtoReader;->copyTag(Lcom/sigmob/wire/ProtoWriter;I)V

    goto :goto_6

    :cond_25
    invoke-virtual {p0, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/Buffer;->readByteString()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    sget-object v0, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    goto :goto_2e
.end method

.method public nextTag()I
    .registers 7

    const/4 v4, 0x2

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    iput v4, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to nextTag()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    invoke-direct {p0, v0}, Lcom/sigmob/wire/ProtoReader;->skipGroup(I)V

    :cond_1d
    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d5

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_d5

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected tag 0"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    shr-int/lit8 v1, v0, 0x3

    iput v1, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_d8

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

    :pswitch_5d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Unexpected end group"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_65
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    iput v4, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-gez v0, :cond_8a

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

    :cond_8a
    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_98

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_98
    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    iput-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->limit:J

    iget-wide v2, p0, Lcom/sigmob/wire/ProtoReader;->pushedLimit:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_b0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b0
    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    goto/16 :goto_a

    :pswitch_b4
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    goto/16 :goto_a

    :pswitch_bf
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED64:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    goto/16 :goto_a

    :pswitch_ca
    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->FIXED32:Lcom/sigmob/wire/FieldEncoding;

    iput-object v0, p0, Lcom/sigmob/wire/ProtoReader;->nextFieldEncoding:Lcom/sigmob/wire/FieldEncoding;

    const/4 v0, 0x5

    iput v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->tag:I

    goto/16 :goto_a

    :cond_d5
    const/4 v0, -0x1

    goto/16 :goto_a

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_bf
        :pswitch_65
        :pswitch_18
        :pswitch_5d
        :pswitch_ca
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

    const-wide/16 v4, 0x4

    const/4 v2, 0x5

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    if-eq v0, v2, :cond_27

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

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

    :cond_27
    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readIntLe()I

    move-result v0

    invoke-direct {p0, v2}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public readFixed64()J
    .registers 7

    const-wide/16 v4, 0x8

    const/4 v2, 0x1

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    if-eq v0, v2, :cond_27

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

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

    :cond_27
    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0, v4, v5}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v0, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sigmob/wire/okio/BufferedSource;->readLongLe()J

    move-result-wide v0

    invoke-direct {p0, v2}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v0
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

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

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

    :cond_24
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public readVarint64()J
    .registers 11

    const-wide/16 v8, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/sigmob/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

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

    :cond_27
    const-wide/16 v0, 0x0

    move v2, v3

    :goto_2a
    const/16 v4, 0x40

    if-ge v2, v4, :cond_4e

    iget-object v4, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v4, v8, v9}, Lcom/sigmob/wire/okio/BufferedSource;->require(J)V

    iget-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/sigmob/wire/ProtoReader;->pos:J

    iget-object v4, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v4}, Lcom/sigmob/wire/okio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v6, v5

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4b

    invoke-direct {p0, v3}, Lcom/sigmob/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v0

    :cond_4b
    add-int/lit8 v2, v2, 0x7

    goto :goto_2a

    :cond_4e
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
    invoke-direct {p0}, Lcom/sigmob/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/wire/ProtoReader;->source:Lcom/sigmob/wire/okio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lcom/sigmob/wire/okio/BufferedSource;->skip(J)V

    :goto_16
    return-void

    :pswitch_17
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readVarint64()J

    goto :goto_16

    :pswitch_1b
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed64()J

    goto :goto_16

    :pswitch_1f
    invoke-virtual {p0}, Lcom/sigmob/wire/ProtoReader;->readFixed32()I

    goto :goto_16

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1b
        :pswitch_d
        :pswitch_5
        :pswitch_5
        :pswitch_1f
    .end packed-switch
.end method
