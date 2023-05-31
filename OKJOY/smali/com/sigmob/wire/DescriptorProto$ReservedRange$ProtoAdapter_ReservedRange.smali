.class final Lcom/sigmob/wire/DescriptorProto$ReservedRange$ProtoAdapter_ReservedRange;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/wire/DescriptorProto$ReservedRange;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/DescriptorProto$ReservedRange;
    .registers 8

    new-instance v1, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;

    invoke-direct {v1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3b

    packed-switch v0, :pswitch_data_44

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->start(Ljava/lang/Integer;)Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->end(Ljava/lang/Integer;)Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;

    goto :goto_9

    :cond_3b
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->build()Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2f
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$ProtoAdapter_ReservedRange;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/DescriptorProto$ReservedRange;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$ProtoAdapter_ReservedRange;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/DescriptorProto$ReservedRange;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/DescriptorProto$ReservedRange;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->start:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->end:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$ProtoAdapter_ReservedRange;->encodedSize(Lcom/sigmob/wire/DescriptorProto$ReservedRange;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/wire/DescriptorProto$ReservedRange;)Lcom/sigmob/wire/DescriptorProto$ReservedRange;
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange;->newBuilder()Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v0}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$Builder;->build()Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/DescriptorProto$ReservedRange$ProtoAdapter_ReservedRange;->redact(Lcom/sigmob/wire/DescriptorProto$ReservedRange;)Lcom/sigmob/wire/DescriptorProto$ReservedRange;

    move-result-object v0

    return-object v0
.end method
