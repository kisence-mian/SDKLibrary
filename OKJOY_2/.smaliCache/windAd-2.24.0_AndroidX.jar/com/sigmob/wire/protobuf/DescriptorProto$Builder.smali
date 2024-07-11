.class public final Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/wire/protobuf/DescriptorProto;",
        "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public enum_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public extension:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public extension_range:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation
.end field

.field public field:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public nested_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public oneof_decl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public options:Lcom/sigmob/wire/protobuf/MessageOptions;

.field public reserved_name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reserved_range:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$ReservedRange;",
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

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->field:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->nested_type:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->enum_type:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension_range:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->oneof_decl:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_range:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_name:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/DescriptorProto;
    .registers 14

    new-instance v12, Lcom/sigmob/wire/protobuf/DescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->field:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension:Ljava/util/List;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->nested_type:Ljava/util/List;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->enum_type:Ljava/util/List;

    iget-object v6, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension_range:Ljava/util/List;

    iget-object v7, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->oneof_decl:Ljava/util/List;

    iget-object v8, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    iget-object v9, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_range:Ljava/util/List;

    iget-object v10, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_name:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/sigmob/wire/protobuf/DescriptorProto;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/MessageOptions;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v12
.end method

.method public enum_type(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->enum_type:Ljava/util/List;

    return-object p0
.end method

.method public extension(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension:Ljava/util/List;

    return-object p0
.end method

.method public extension_range(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$ExtensionRange;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->extension_range:Ljava/util/List;

    return-object p0
.end method

.method public field(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->field:Ljava/util/List;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public nested_type(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/DescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->nested_type:Ljava/util/List;

    return-object p0
.end method

.method public oneof_decl(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/OneofDescriptorProto;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->oneof_decl:Ljava/util/List;

    return-object p0
.end method

.method public options(Lcom/sigmob/wire/protobuf/MessageOptions;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    return-object p0
.end method

.method public reserved_name(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_name:Ljava/util/List;

    return-object p0
.end method

.method public reserved_range(Ljava/util/List;)Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$ReservedRange;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/DescriptorProto$Builder;->reserved_range:Ljava/util/List;

    return-object p0
.end method
