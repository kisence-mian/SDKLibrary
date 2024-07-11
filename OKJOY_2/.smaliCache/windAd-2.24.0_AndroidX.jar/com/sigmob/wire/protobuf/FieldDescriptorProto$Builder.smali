.class public final Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public default_value:Ljava/lang/String;

.field public extendee:Ljava/lang/String;

.field public label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/Integer;

.field public oneof_index:Ljava/lang/Integer;

.field public options:Lcom/sigmob/wire/protobuf/FieldOptions;

.field public type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->build()Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/FieldDescriptorProto;
    .registers 13

    new-instance v11, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->number:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    iget-object v4, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    iget-object v5, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->extendee:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->default_value:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->oneof_index:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldOptions;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v11
.end method

.method public default_value(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->default_value:Ljava/lang/String;

    return-object p0
.end method

.method public extendee(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->extendee:Ljava/lang/String;

    return-object p0
.end method

.method public label(Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public number(Ljava/lang/Integer;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->number:Ljava/lang/Integer;

    return-object p0
.end method

.method public oneof_index(Ljava/lang/Integer;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->oneof_index:Ljava/lang/Integer;

    return-object p0
.end method

.method public options(Lcom/sigmob/wire/protobuf/FieldOptions;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    return-object p0
.end method

.method public type(Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0
.end method

.method public type_name(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type_name:Ljava/lang/String;

    return-object p0
.end method
