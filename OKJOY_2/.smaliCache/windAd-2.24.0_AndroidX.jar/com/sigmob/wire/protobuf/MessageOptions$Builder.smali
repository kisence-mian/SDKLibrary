.class public final Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/wire/protobuf/MessageOptions;",
        "Lcom/sigmob/wire/protobuf/MessageOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public deprecated:Ljava/lang/Boolean;

.field public map_entry:Ljava/lang/Boolean;

.field public message_set_wire_format:Ljava/lang/Boolean;

.field public no_standard_descriptor_accessor:Ljava/lang/Boolean;

.field public uninterpreted_option:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
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

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->build()Lcom/sigmob/wire/protobuf/MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/MessageOptions;
    .registers 9

    new-instance v7, Lcom/sigmob/wire/protobuf/MessageOptions;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->message_set_wire_format:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->deprecated:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->map_entry:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->uninterpreted_option:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/wire/protobuf/MessageOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v7
.end method

.method public deprecated(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->deprecated:Ljava/lang/Boolean;

    return-object p0
.end method

.method public map_entry(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->map_entry:Ljava/lang/Boolean;

    return-object p0
.end method

.method public message_set_wire_format(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->message_set_wire_format:Ljava/lang/Boolean;

    return-object p0
.end method

.method public no_standard_descriptor_accessor(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->no_standard_descriptor_accessor:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uninterpreted_option(Ljava/util/List;)Lcom/sigmob/wire/protobuf/MessageOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/MessageOptions$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/MessageOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-object p0
.end method
