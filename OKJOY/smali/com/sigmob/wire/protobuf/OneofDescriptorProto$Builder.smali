.class public final Lcom/sigmob/wire/protobuf/OneofDescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/OneofDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/OneofDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/OneofDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/OneofDescriptorProto;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/OneofDescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/OneofDescriptorProto$Builder;->name:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sigmob/wire/protobuf/OneofDescriptorProto;-><init>(Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/OneofDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/OneofDescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
