.class public final Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public number:Ljava/lang/Integer;

.field public options:Lcom/sigmob/wire/protobuf/EnumValueOptions;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;
    .registers 6

    new-instance v0, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;->number:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/EnumValueOptions;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/EnumValueOptions;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public number(Ljava/lang/Integer;)Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;->number:Ljava/lang/Integer;

    return-object p0
.end method

.method public options(Lcom/sigmob/wire/protobuf/EnumValueOptions;)Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/EnumValueOptions;

    return-object p0
.end method
