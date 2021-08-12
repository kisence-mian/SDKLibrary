.class final Lcom/sigmob/wire/protobuf/DescriptorProto$ProtoAdapter_DescriptorProto;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_DescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/wire/protobuf/DescriptorProto;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/DescriptorProto;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/DescriptorProto;
    .registers 8

    new-instance v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_68

    packed-switch v3, :pswitch_data_70

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_name:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_54

    :pswitch_28
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_range:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/DescriptorProto$ReservedRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_54

    :pswitch_2d
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->oneof_decl:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/OneofDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_54

    :pswitch_32
    sget-object v3, Lcom/sigmob/wire/protobuf/MessageOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/wire/protobuf/MessageOptions;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->options(Lcom/sigmob/wire/protobuf/MessageOptions;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;

    goto :goto_9

    :pswitch_3e
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension:Ljava/util/List;

    goto :goto_52

    :pswitch_41
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension_range:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/DescriptorProto$ExtensionRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_54

    :pswitch_46
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->enum_type:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_54

    :pswitch_4b
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->nested_type:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/DescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    goto :goto_54

    :pswitch_50
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->field:Ljava/util/List;

    :goto_52
    sget-object v4, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    :goto_54
    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :pswitch_5c
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;

    goto :goto_9

    :cond_68
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/DescriptorProto;

    move-result-object p1

    return-object p1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_3e
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/DescriptorProto$ProtoAdapter_DescriptorProto;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/DescriptorProto;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/DescriptorProto;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->field:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->extension:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/DescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->nested_type:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->enum_type:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/DescriptorProto$ExtensionRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->extension_range:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/OneofDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->oneof_decl:Ljava/util/List;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/DescriptorProto$ReservedRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->reserved_range:Ljava/util/List;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/DescriptorProto;->reserved_name:Ljava/util/List;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/DescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/DescriptorProto;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/DescriptorProto$ProtoAdapter_DescriptorProto;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/DescriptorProto;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/DescriptorProto;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->field:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->extension:Ljava/util/List;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/DescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->nested_type:Ljava/util/List;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->enum_type:Ljava/util/List;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/DescriptorProto$ExtensionRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->extension_range:Ljava/util/List;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/OneofDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->oneof_decl:Ljava/util/List;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/MessageOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/DescriptorProto$ReservedRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->reserved_range:Ljava/util/List;

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/DescriptorProto;->reserved_name:Ljava/util/List;

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/DescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/DescriptorProto;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/DescriptorProto$ProtoAdapter_DescriptorProto;->encodedSize(Lcom/sigmob/wire/protobuf/DescriptorProto;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/wire/protobuf/DescriptorProto;)Lcom/sigmob/wire/protobuf/DescriptorProto;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/DescriptorProto;->newBuilder()Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->field:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->nested_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/DescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->enum_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension_range:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/DescriptorProto$ExtensionRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->oneof_decl:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/OneofDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/sigmob/wire/protobuf/MessageOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/MessageOptions;

    iput-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    :cond_3e
    iget-object v0, p1, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_range:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/DescriptorProto$ReservedRange;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/DescriptorProto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/DescriptorProto;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/DescriptorProto$ProtoAdapter_DescriptorProto;->redact(Lcom/sigmob/wire/protobuf/DescriptorProto;)Lcom/sigmob/wire/protobuf/DescriptorProto;

    move-result-object p1

    return-object p1
.end method
