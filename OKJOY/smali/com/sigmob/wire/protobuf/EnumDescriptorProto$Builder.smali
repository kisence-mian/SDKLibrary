.class public final Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public options:Lcom/sigmob/wire/protobuf/EnumOptions;

.field public value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->value:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/EnumDescriptorProto;
    .registers 6

    new-instance v0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->value:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/wire/protobuf/EnumDescriptorProto;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/protobuf/EnumOptions;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public options(Lcom/sigmob/wire/protobuf/EnumOptions;)Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/EnumOptions;

    return-object p0
.end method

.method public value(Ljava/util/List;)Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumValueDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumDescriptorProto$Builder;->value:Ljava/util/List;

    return-object p0
.end method
