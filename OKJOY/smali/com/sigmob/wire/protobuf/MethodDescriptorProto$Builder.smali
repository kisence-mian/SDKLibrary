.class public final Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/MethodDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public client_streaming:Ljava/lang/Boolean;

.field public input_type:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public options:Lcom/sigmob/wire/protobuf/MethodOptions;

.field public output_type:Ljava/lang/String;

.field public server_streaming:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/MethodDescriptorProto;
    .registers 9

    new-instance v0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->input_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->output_type:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->client_streaming:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->server_streaming:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/wire/protobuf/MethodDescriptorProto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/protobuf/MethodOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public client_streaming(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->client_streaming:Ljava/lang/Boolean;

    return-object p0
.end method

.method public input_type(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->input_type:Ljava/lang/String;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public options(Lcom/sigmob/wire/protobuf/MethodOptions;)Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MethodOptions;

    return-object p0
.end method

.method public output_type(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->output_type:Ljava/lang/String;

    return-object p0
.end method

.method public server_streaming(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MethodDescriptorProto$Builder;->server_streaming:Ljava/lang/Boolean;

    return-object p0
.end method
