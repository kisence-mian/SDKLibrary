.class final Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_FileDescriptorSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/wire/protobuf/FileDescriptorSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FileDescriptorSet;
    .registers 8

    new-instance v0, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2f

    packed-switch v3, :pswitch_data_38

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->file:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2f
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->build()Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FileDescriptorSet;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FileDescriptorSet;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/FileDescriptorSet;)I
    .registers 5

    sget-object v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->file:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;->encodedSize(Lcom/sigmob/wire/protobuf/FileDescriptorSet;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/wire/protobuf/FileDescriptorSet;)Lcom/sigmob/wire/protobuf/FileDescriptorSet;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet;->newBuilder()Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->file:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$Builder;->build()Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FileDescriptorSet$ProtoAdapter_FileDescriptorSet;->redact(Lcom/sigmob/wire/protobuf/FileDescriptorSet;)Lcom/sigmob/wire/protobuf/FileDescriptorSet;

    move-result-object p1

    return-object p1
.end method