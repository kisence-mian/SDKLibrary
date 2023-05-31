.class final Lcom/sigmob/wire/protobuf/FieldDescriptorProto$ProtoAdapter_FieldDescriptorProto;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto;
    .registers 10

    new-instance v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    invoke-direct {v1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_ae

    packed-switch v4, :pswitch_data_b6

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->extendee(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->number(Ljava/lang/Integer;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    goto :goto_9

    :pswitch_47
    :try_start_47
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->label(Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    :try_end_52
    .catch Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_47 .. :try_end_52} :catch_53

    goto :goto_9

    :catch_53
    move-exception v0

    sget-object v5, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    iget v0, v0, Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_61
    :try_start_61
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type(Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    :try_end_6c
    .catch Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_61 .. :try_end_6c} :catch_6d

    goto :goto_9

    :catch_6d
    move-exception v0

    sget-object v5, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    iget v0, v0, Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_7b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type_name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    goto :goto_9

    :pswitch_87
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->default_value(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    goto/16 :goto_9

    :pswitch_94
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->options(Lcom/sigmob/wire/protobuf/FieldOptions;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    goto/16 :goto_9

    :pswitch_a1
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->oneof_index(Ljava/lang/Integer;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    goto/16 :goto_9

    :cond_ae
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    move-result-object v0

    return-object v0

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
        :pswitch_47
        :pswitch_61
        :pswitch_7b
        :pswitch_87
        :pswitch_94
        :pswitch_a1
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$ProtoAdapter_FieldDescriptorProto;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FieldDescriptorProto;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$ProtoAdapter_FieldDescriptorProto;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FieldDescriptorProto;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/FieldDescriptorProto;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$ProtoAdapter_FieldDescriptorProto;->encodedSize(Lcom/sigmob/wire/protobuf/FieldDescriptorProto;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/wire/protobuf/FieldDescriptorProto;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->newBuilder()Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    move-result-object v1

    iget-object v0, v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldOptions;

    iput-object v0, v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    :cond_14
    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$ProtoAdapter_FieldDescriptorProto;->redact(Lcom/sigmob/wire/protobuf/FieldDescriptorProto;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method
