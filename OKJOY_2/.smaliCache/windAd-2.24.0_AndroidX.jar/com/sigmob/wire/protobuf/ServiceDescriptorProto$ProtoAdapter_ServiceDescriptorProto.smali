.class final Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$ProtoAdapter_ServiceDescriptorProto;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ServiceDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;
    .registers 8

    new-instance v0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_47

    packed-switch v3, :pswitch_data_50

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v3, Lcom/sigmob/wire/protobuf/ServiceOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/wire/protobuf/ServiceOptions;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->options(Lcom/sigmob/wire/protobuf/ServiceOptions;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;

    goto :goto_9

    :pswitch_2f
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->method:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :pswitch_3b
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;

    goto :goto_9

    :cond_47
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$ProtoAdapter_ServiceDescriptorProto;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->method:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/ServiceOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->options:Lcom/sigmob/wire/protobuf/ServiceOptions;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$ProtoAdapter_ServiceDescriptorProto;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->method:Ljava/util/List;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/ServiceOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->options:Lcom/sigmob/wire/protobuf/ServiceOptions;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$ProtoAdapter_ServiceDescriptorProto;->encodedSize(Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;->newBuilder()Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->method:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/ServiceOptions;

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/sigmob/wire/protobuf/ServiceOptions;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/ServiceOptions;

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/wire/protobuf/ServiceOptions;

    iput-object v0, p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/ServiceOptions;

    :cond_1b
    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$ProtoAdapter_ServiceDescriptorProto;->redact(Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    move-result-object p1

    return-object p1
.end method
