.class public final Lcom/sigmob/wire/protobuf/FieldDescriptorProto;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message",
        "<",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTENDEE:Ljava/lang/String; = ""

.field public static final DEFAULT_LABEL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_NUMBER:Ljava/lang/Integer;

.field public static final DEFAULT_ONEOF_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

.field public static final DEFAULT_TYPE_NAME:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final default_value:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final extendee:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FieldDescriptorProto$Label#ADAPTER"
        tag = 0x4
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final number:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x3
    .end annotation
.end field

.field public final oneof_index:Ljava/lang/Integer;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x9
    .end annotation
.end field

.field public final options:Lcom/sigmob/wire/protobuf/FieldOptions;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FieldOptions#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FieldDescriptorProto$Type#ADAPTER"
        tag = 0x5
    .end annotation
.end field

.field public final type_name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$ProtoAdapter_FieldDescriptorProto;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$ProtoAdapter_FieldDescriptorProto;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->DEFAULT_NUMBER:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->DEFAULT_LABEL:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->DEFAULT_TYPE:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->DEFAULT_ONEOF_INDEX:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldOptions;)V
    .registers 21

    sget-object v10, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldOptions;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/wire/protobuf/FieldOptions;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 12

    sget-object v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    iput-object p4, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    iput-object p5, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    iput-object p8, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_75
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_84

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;->hashCode()I

    move-result v0

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;->hashCode()I

    move-result v0

    :goto_40
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    if-eqz v2, :cond_81

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/FieldOptions;->hashCode()I

    move-result v1

    :cond_81
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_84
    return v0

    :cond_85
    move v0, v1

    goto :goto_19

    :cond_87
    move v0, v1

    goto :goto_26

    :cond_89
    move v0, v1

    goto :goto_33

    :cond_8b
    move v0, v1

    goto :goto_40

    :cond_8d
    move v0, v1

    goto :goto_4d

    :cond_8f
    move v0, v1

    goto :goto_5a

    :cond_91
    move v0, v1

    goto :goto_67

    :cond_93
    move v0, v1

    goto :goto_74
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->newBuilder()Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;
    .registers 3

    new-instance v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->number:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->type_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->extendee:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->default_value:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->oneof_index:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    if-eqz v1, :cond_23

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->number:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    if-eqz v1, :cond_32

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->label:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Label;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_32
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    if-eqz v1, :cond_41

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type:Lcom/sigmob/wire/protobuf/FieldDescriptorProto$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    if-eqz v1, :cond_50

    const-string v1, ", type_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->type_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    if-eqz v1, :cond_5f

    const-string v1, ", extendee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->extendee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    if-eqz v1, :cond_6e

    const-string v1, ", default_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->default_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    if-eqz v1, :cond_7d

    const-string v1, ", oneof_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->oneof_index:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7d
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    if-eqz v1, :cond_8c

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FieldDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FieldOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8c
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "FieldDescriptorProto{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
