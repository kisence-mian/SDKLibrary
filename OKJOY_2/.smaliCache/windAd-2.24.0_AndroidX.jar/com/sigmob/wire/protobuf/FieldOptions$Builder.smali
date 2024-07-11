.class public final Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/wire/protobuf/FieldOptions;",
        "Lcom/sigmob/wire/protobuf/FieldOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ctype:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

.field public deprecated:Ljava/lang/Boolean;

.field public jstype:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

.field public lazy:Ljava/lang/Boolean;

.field public packed:Ljava/lang/Boolean;

.field public uninterpreted_option:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field public weak:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->build()Lcom/sigmob/wire/protobuf/FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/FieldOptions;
    .registers 11

    new-instance v9, Lcom/sigmob/wire/protobuf/FieldOptions;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->ctype:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->packed:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->jstype:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->lazy:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->deprecated:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->weak:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->uninterpreted_option:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/wire/protobuf/FieldOptions;-><init>(Lcom/sigmob/wire/protobuf/FieldOptions$CType;Ljava/lang/Boolean;Lcom/sigmob/wire/protobuf/FieldOptions$JSType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v9
.end method

.method public ctype(Lcom/sigmob/wire/protobuf/FieldOptions$CType;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->ctype:Lcom/sigmob/wire/protobuf/FieldOptions$CType;

    return-object p0
.end method

.method public deprecated(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->deprecated:Ljava/lang/Boolean;

    return-object p0
.end method

.method public jstype(Lcom/sigmob/wire/protobuf/FieldOptions$JSType;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->jstype:Lcom/sigmob/wire/protobuf/FieldOptions$JSType;

    return-object p0
.end method

.method public lazy(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->lazy:Ljava/lang/Boolean;

    return-object p0
.end method

.method public packed(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->packed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uninterpreted_option(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FieldOptions$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-object p0
.end method

.method public weak(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FieldOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldOptions$Builder;->weak:Ljava/lang/Boolean;

    return-object p0
.end method
