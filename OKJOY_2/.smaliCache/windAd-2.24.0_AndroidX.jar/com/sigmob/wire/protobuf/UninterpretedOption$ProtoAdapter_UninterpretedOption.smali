.class final Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/UninterpretedOption;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/UninterpretedOption;
    .registers 8

    new-instance v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_77

    packed-switch v3, :pswitch_data_80

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->aggregate_value(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->string_value(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->DOUBLE:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->double_value(Ljava/lang/Double;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->negative_int_value(Ljava/lang/Long;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->positive_int_value(Ljava/lang/Long;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    goto :goto_9

    :pswitch_5f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->identifier_value(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    goto :goto_9

    :pswitch_6b
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->name:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_77
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->build()Lcom/sigmob/wire/protobuf/UninterpretedOption;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/UninterpretedOption;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->DOUBLE:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/UninterpretedOption;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/UninterpretedOption;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/UninterpretedOption;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->name:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->identifier_value:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->positive_int_value:Ljava/lang/Long;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->negative_int_value:Ljava/lang/Long;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->DOUBLE:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->double_value:Ljava/lang/Double;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BYTES:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->string_value:Lcom/sigmob/wire/okio/ByteString;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->aggregate_value:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;->encodedSize(Lcom/sigmob/wire/protobuf/UninterpretedOption;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/wire/protobuf/UninterpretedOption;)Lcom/sigmob/wire/protobuf/UninterpretedOption;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption;->newBuilder()Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->name:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->build()Lcom/sigmob/wire/protobuf/UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/UninterpretedOption;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/UninterpretedOption$ProtoAdapter_UninterpretedOption;->redact(Lcom/sigmob/wire/protobuf/UninterpretedOption;)Lcom/sigmob/wire/protobuf/UninterpretedOption;

    move-result-object p1

    return-object p1
.end method
