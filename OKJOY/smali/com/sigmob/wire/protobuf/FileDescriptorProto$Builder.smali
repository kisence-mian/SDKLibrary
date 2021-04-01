.class public final Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/FileDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public dependency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public enum_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public extension:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public message_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public options:Lcom/sigmob/wire/protobuf/FileOptions;

.field public package_:Ljava/lang/String;

.field public public_dependency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public service:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

.field public syntax:Ljava/lang/String;

.field public weak_dependency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->dependency:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->public_dependency:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->weak_dependency:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->message_type:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->enum_type:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->service:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->extension:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/FileDescriptorProto;
    .registers 15

    new-instance v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->package_:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->dependency:Ljava/util/List;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->public_dependency:Ljava/util/List;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->weak_dependency:Ljava/util/List;

    iget-object v6, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->message_type:Ljava/util/List;

    iget-object v7, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->enum_type:Ljava/util/List;

    iget-object v8, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->service:Ljava/util/List;

    iget-object v9, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->extension:Ljava/util/List;

    iget-object v10, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    iget-object v11, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    iget-object v12, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->syntax:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/sigmob/wire/protobuf/FileDescriptorProto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/FileOptions;Lcom/sigmob/wire/protobuf/SourceCodeInfo;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public dependency(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->dependency:Ljava/util/List;

    return-object p0
.end method

.method public enum_type(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->enum_type:Ljava/util/List;

    return-object p0
.end method

.method public extension(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->extension:Ljava/util/List;

    return-object p0
.end method

.method public message_type(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->message_type:Ljava/util/List;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public options(Lcom/sigmob/wire/protobuf/FileOptions;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    return-object p0
.end method

.method public package_(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->package_:Ljava/lang/String;

    return-object p0
.end method

.method public public_dependency(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->public_dependency:Ljava/util/List;

    return-object p0
.end method

.method public service(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->service:Ljava/util/List;

    return-object p0
.end method

.method public source_code_info(Lcom/sigmob/wire/protobuf/SourceCodeInfo;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    return-object p0
.end method

.method public syntax(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->syntax:Ljava/lang/String;

    return-object p0
.end method

.method public weak_dependency(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->weak_dependency:Ljava/util/List;

    return-object p0
.end method
