.class public final Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;",
        "Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public is_extension:Ljava/lang/Boolean;

.field public name_part:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->build()Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->name_part:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    if-eqz v1, :cond_16

    new-instance v0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->name_part:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0

    :cond_16
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "name_part"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "is_extension"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/sigmob/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public is_extension(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    return-object p0
.end method

.method public name_part(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/UninterpretedOption$NamePart$Builder;->name_part:Ljava/lang/String;

    return-object p0
.end method
