.class final Lcom/sigmob/wire/protobuf/FieldOptions$ProtoAdapter_FieldOptions;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/wire/protobuf/FieldOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FieldOptions;
    .registers 10

    new-instance v1, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;

    invoke-direct {v1}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_94

    sparse-switch v4, :sswitch_data_9c

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v0, v5}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :sswitch_23
    :try_start_23
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->ctype(Lcom/sigmob/wire/protobuf/FieldOptions$CType;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    :try_end_2e
    .catch Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_9

    :catch_2f
    move-exception v0

    sget-object v5, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    iget v0, v0, Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :sswitch_3d
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->packed(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;

    goto :goto_9

    :sswitch_49
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->deprecated(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;

    goto :goto_9

    :sswitch_55
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->lazy(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;

    goto :goto_9

    :sswitch_61
    :try_start_61
    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->jstype(Lcom/sigmob/wire/protobuf/FieldOptions$JSType;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
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

    invoke-virtual {v1, v4, v5, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :sswitch_7b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->weak(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;

    goto :goto_9

    :sswitch_87
    iget-object v0, v1, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->uninterpreted_option:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_94
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->build()Lcom/sigmob/wire/protobuf/FieldOptions;

    move-result-object v0

    return-object v0

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_49
        0x5 -> :sswitch_55
        0x6 -> :sswitch_61
        0xa -> :sswitch_7b
        0x3e7 -> :sswitch_87
    .end sparse-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldOptions$ProtoAdapter_FieldOptions;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FieldOptions;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldOptions;->ctype:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldOptions;->packed:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldOptions;->jstype:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldOptions;->lazy:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldOptions;->weak:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x3e7

    iget-object v2, p2, Lcom/sigmob/wire/protobuf/FieldOptions;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/FieldOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/FieldOptions$ProtoAdapter_FieldOptions;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FieldOptions;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/FieldOptions;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldOptions$CType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FieldOptions;->ctype:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldOptions;->packed:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldOptions$JSType;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldOptions;->jstype:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldOptions;->lazy:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldOptions;->deprecated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldOptions;->weak:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0x3e7

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldOptions;->uninterpreted_option:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FieldOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldOptions$ProtoAdapter_FieldOptions;->encodedSize(Lcom/sigmob/wire/protobuf/FieldOptions;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/wire/protobuf/FieldOptions;)Lcom/sigmob/wire/protobuf/FieldOptions;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FieldOptions;->newBuilder()Lcom/sigmob/wire/protobuf/FieldOptions$Builder;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->uninterpreted_option:Ljava/util/List;

    sget-object v2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->build()Lcom/sigmob/wire/protobuf/FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FieldOptions$ProtoAdapter_FieldOptions;->redact(Lcom/sigmob/wire/protobuf/FieldOptions;)Lcom/sigmob/wire/protobuf/FieldOptions;

    move-result-object v0

    return-object v0
.end method
