.class public final Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/wire/protobuf/EnumValueOptions;",
        "Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public deprecated:Ljava/lang/Boolean;

.field public uninterpreted_option:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;->build()Lcom/sigmob/wire/protobuf/EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/EnumValueOptions;
    .registers 5

    new-instance v0, Lcom/sigmob/wire/protobuf/EnumValueOptions;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;->deprecated:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;->uninterpreted_option:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/EnumValueOptions;-><init>(Ljava/lang/Boolean;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public deprecated(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;->deprecated:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uninterpreted_option(Ljava/util/List;)Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/EnumValueOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-object p0
.end method
