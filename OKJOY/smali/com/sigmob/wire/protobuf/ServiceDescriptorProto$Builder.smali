.class public final Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public method:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public options:Lcom/sigmob/wire/protobuf/ServiceOptions;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->method:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;
    .registers 6

    new-instance v0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->method:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/ServiceOptions;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/protobuf/ServiceOptions;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public method(Ljava/util/List;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/MethodDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->method:Ljava/util/List;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public options(Lcom/sigmob/wire/protobuf/ServiceOptions;)Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/ServiceDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/ServiceOptions;

    return-object p0
.end method
