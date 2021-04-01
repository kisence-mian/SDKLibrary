.class final Lcom/sigmob/wire/protobuf/SourceCodeInfo$ProtoAdapter_SourceCodeInfo;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/wire/protobuf/SourceCodeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/SourceCodeInfo;
    .registers 8

    new-instance v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2f

    packed-switch v1, :pswitch_data_38

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    iget-object v1, v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->location:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2f
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->build()Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$ProtoAdapter_SourceCodeInfo;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/SourceCodeInfo;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/SourceCodeInfo;->location:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/SourceCodeInfo;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$ProtoAdapter_SourceCodeInfo;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/SourceCodeInfo;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/SourceCodeInfo;)I
    .registers 5

    sget-object v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo;->location:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/SourceCodeInfo;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$ProtoAdapter_SourceCodeInfo;->encodedSize(Lcom/sigmob/wire/protobuf/SourceCodeInfo;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/wire/protobuf/SourceCodeInfo;)Lcom/sigmob/wire/protobuf/SourceCodeInfo;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/SourceCodeInfo;->newBuilder()Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->location:Ljava/util/List;

    sget-object v2, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Location;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$Builder;->build()Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/SourceCodeInfo$ProtoAdapter_SourceCodeInfo;->redact(Lcom/sigmob/wire/protobuf/SourceCodeInfo;)Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method
