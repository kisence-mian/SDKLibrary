.class public final Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public aggregate_value:Ljava/lang/String;

.field public double_value:Ljava/lang/Double;

.field public identifier_value:Ljava/lang/String;

.field public name:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field public negative_int_value:Ljava/lang/Long;

.field public positive_int_value:Ljava/lang/Long;

.field public string_value:Lcom/sigmob/wire/okio/ByteString;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->name:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public aggregate_value(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->aggregate_value:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->build()Lcom/sigmob/wire/protobuf/UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/UninterpretedOption;
    .registers 11

    new-instance v9, Lcom/sigmob/wire/protobuf/UninterpretedOption;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->name:Ljava/util/List;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->identifier_value:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->positive_int_value:Ljava/lang/Long;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->negative_int_value:Ljava/lang/Long;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->double_value:Ljava/lang/Double;

    iget-object v6, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->string_value:Lcom/sigmob/wire/okio/ByteString;

    iget-object v7, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->aggregate_value:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/wire/protobuf/UninterpretedOption;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Lcom/sigmob/wire/okio/ByteString;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v9
.end method

.method public double_value(Ljava/lang/Double;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->double_value:Ljava/lang/Double;

    return-object p0
.end method

.method public identifier_value(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->identifier_value:Ljava/lang/String;

    return-object p0
.end method

.method public name(Ljava/util/List;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->name:Ljava/util/List;

    return-object p0
.end method

.method public negative_int_value(Ljava/lang/Long;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->negative_int_value:Ljava/lang/Long;

    return-object p0
.end method

.method public positive_int_value(Ljava/lang/Long;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->positive_int_value:Ljava/lang/Long;

    return-object p0
.end method

.method public string_value(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$Builder;->string_value:Lcom/sigmob/wire/okio/ByteString;

    return-object p0
.end method
