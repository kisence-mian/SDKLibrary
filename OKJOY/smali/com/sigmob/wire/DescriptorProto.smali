.class public final Lcom/sigmob/wire/DescriptorProto;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message",
        "<",
        "Lcom/sigmob/wire/DescriptorProto;",
        "Lcom/sigmob/wire/DescriptorProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final enum_type:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.EnumDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public final extension:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FieldDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public final extension_range:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.DescriptorProto$ExtensionRange#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation
.end field

.field public final field:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FieldDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final nested_type:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.DescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public final oneof_decl:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.OneofDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public final options:Lcom/sigmob/wire/protobuf/MessageOptions;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.MessageOptions#ADAPTER"
        tag = 0x7
    .end annotation
.end field

.field public final reserved_name:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final reserved_range:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.DescriptorProto$ReservedRange#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto$ReservedRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/DescriptorProto$ProtoAdapter_DescriptorProto;

    invoke-direct {v0}, Lcom/sigmob/wire/DescriptorProto$ProtoAdapter_DescriptorProto;-><init>()V

    sput-object v0, Lcom/sigmob/wire/DescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/MessageOptions;Ljava/util/List;Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto$ExtensionRange;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/OneofDescriptorProto;",
            ">;",
            "Lcom/sigmob/wire/protobuf/MessageOptions;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto$ReservedRange;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v11, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/sigmob/wire/DescriptorProto;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/MessageOptions;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/MessageOptions;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/EnumDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto$ExtensionRange;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/OneofDescriptorProto;",
            ">;",
            "Lcom/sigmob/wire/protobuf/MessageOptions;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/DescriptorProto$ReservedRange;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/DescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p11}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    const-string v0, "field"

    invoke-static {v0, p2}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->field:Ljava/util/List;

    const-string v0, "extension"

    invoke-static {v0, p3}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->extension:Ljava/util/List;

    const-string v0, "nested_type"

    invoke-static {v0, p4}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->nested_type:Ljava/util/List;

    const-string v0, "enum_type"

    invoke-static {v0, p5}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->enum_type:Ljava/util/List;

    const-string v0, "extension_range"

    invoke-static {v0, p6}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->extension_range:Ljava/util/List;

    const-string v0, "oneof_decl"

    invoke-static {v0, p7}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->oneof_decl:Ljava/util/List;

    iput-object p8, p0, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    const-string v0, "reserved_range"

    invoke-static {v0, p9}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_range:Ljava/util/List;

    const-string v0, "reserved_name"

    invoke-static {v0, p10}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_name:Ljava/util/List;

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
    instance-of v2, p1, Lcom/sigmob/wire/DescriptorProto;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/wire/DescriptorProto;

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/DescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->field:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->field:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->extension:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->nested_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->nested_type:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->enum_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->enum_type:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension_range:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->extension_range:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->oneof_decl:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->oneof_decl:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_range:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->reserved_range:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_name:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/DescriptorProto;->reserved_name:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_7f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_71

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->field:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->nested_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->enum_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension_range:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->oneof_decl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    if-eqz v2, :cond_5c

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    invoke-virtual {v1}, Lcom/sigmob/wire/protobuf/MessageOptions;->hashCode()I

    move-result v1

    :cond_5c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_range:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_name:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_71
    return v0

    :cond_72
    move v0, v1

    goto :goto_19
.end method

.method public newBuilder()Lcom/sigmob/wire/DescriptorProto$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/DescriptorProto$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/DescriptorProto$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->name:Ljava/lang/String;

    const-string v1, "field"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->field:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->field:Ljava/util/List;

    const-string v1, "extension"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->extension:Ljava/util/List;

    const-string v1, "nested_type"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->nested_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->nested_type:Ljava/util/List;

    const-string v1, "enum_type"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->enum_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->enum_type:Ljava/util/List;

    const-string v1, "extension_range"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension_range:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->extension_range:Ljava/util/List;

    const-string v1, "oneof_decl"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->oneof_decl:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->oneof_decl:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    const-string v1, "reserved_range"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_range:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->reserved_range:Ljava/util/List;

    const-string v1, "reserved_name"

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_name:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/DescriptorProto$Builder;->reserved_name:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/DescriptorProto$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/DescriptorProto;->newBuilder()Lcom/sigmob/wire/DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->field:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->field:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->extension:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3a
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->nested_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, ", nested_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->nested_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4d
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->enum_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, ", enum_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->enum_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_60
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->extension_range:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, ", extension_range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->extension_range:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_73
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->oneof_decl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_86

    const-string v1, ", oneof_decl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->oneof_decl:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_86
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    if-eqz v1, :cond_95

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->options:Lcom/sigmob/wire/protobuf/MessageOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_95
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_range:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a8

    const-string v1, ", reserved_range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_range:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a8
    iget-object v1, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_name:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bb

    const-string v1, ", reserved_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/DescriptorProto;->reserved_name:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_bb
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "DescriptorProto{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
