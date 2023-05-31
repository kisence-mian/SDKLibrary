.class public final Lcom/sigmob/wire/protobuf/FileDescriptorProto;
.super Lcom/sigmob/wire/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message",
        "<",
        "Lcom/sigmob/wire/protobuf/FileDescriptorProto;",
        "Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Lcom/sigmob/wire/protobuf/FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_PACKAGE_:Ljava/lang/String; = ""

.field public static final DEFAULT_SYNTAX:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final dependency:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x3
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

.field public final enum_type:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.EnumDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x5
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
        tag = 0x7
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

.field public final message_type:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.DescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x4
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

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final options:Lcom/sigmob/wire/protobuf/FileOptions;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.FileOptions#ADAPTER"
        tag = 0x8
    .end annotation
.end field

.field public final package_:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final public_dependency:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final service:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.ServiceDescriptorProto#ADAPTER"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public final source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.google.protobuf.SourceCodeInfo#ADAPTER"
        tag = 0x9
    .end annotation
.end field

.field public final syntax:Ljava/lang/String;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xc
    .end annotation
.end field

.field public final weak_dependency:Ljava/util/List;
    .annotation runtime Lcom/sigmob/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        label = .enum Lcom/sigmob/wire/WireField$Label;->REPEATED:Lcom/sigmob/wire/WireField$Label;
        tag = 0xb
    .end annotation

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
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$ProtoAdapter_FileDescriptorProto;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileDescriptorProto$ProtoAdapter_FileDescriptorProto;-><init>()V

    sput-object v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/FileOptions;Lcom/sigmob/wire/protobuf/SourceCodeInfo;Ljava/lang/String;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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
            "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;",
            "Lcom/sigmob/wire/protobuf/FileOptions;",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v13, Lcom/sigmob/wire/okio/ByteString;->EMPTY:Lcom/sigmob/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/sigmob/wire/protobuf/FileDescriptorProto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/FileOptions;Lcom/sigmob/wire/protobuf/SourceCodeInfo;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/sigmob/wire/protobuf/FileOptions;Lcom/sigmob/wire/protobuf/SourceCodeInfo;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
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
            "Lcom/sigmob/wire/protobuf/ServiceDescriptorProto;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/wire/protobuf/FieldDescriptorProto;",
            ">;",
            "Lcom/sigmob/wire/protobuf/FileOptions;",
            "Lcom/sigmob/wire/protobuf/SourceCodeInfo;",
            "Ljava/lang/String;",
            "Lcom/sigmob/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, v0, p13}, Lcom/sigmob/wire/Message;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    const-string v0, "dependency"

    invoke-static {v0, p3}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->dependency:Ljava/util/List;

    const-string v0, "public_dependency"

    invoke-static {v0, p4}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->public_dependency:Ljava/util/List;

    const-string v0, "weak_dependency"

    invoke-static {v0, p5}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->weak_dependency:Ljava/util/List;

    const-string v0, "message_type"

    invoke-static {v0, p6}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->message_type:Ljava/util/List;

    const-string v0, "enum_type"

    invoke-static {v0, p7}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->enum_type:Ljava/util/List;

    const-string v0, "service"

    invoke-static {v0, p8}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->service:Ljava/util/List;

    const-string v0, "extension"

    invoke-static {v0, p9}, Lcom/sigmob/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->extension:Ljava/util/List;

    iput-object p10, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    iput-object p11, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    iput-object p12, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->dependency:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->dependency:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->public_dependency:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->public_dependency:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->weak_dependency:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->weak_dependency:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->message_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->message_type:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->enum_type:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->enum_type:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->service:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->service:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->extension:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->extension:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sigmob/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_93
    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    if-nez v0, :cond_8f

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->dependency:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->public_dependency:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->weak_dependency:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->message_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->enum_type:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->service:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->extension:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/FileOptions;->hashCode()I

    move-result v0

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/SourceCodeInfo;->hashCode()I

    move-result v0

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v2, :cond_8c

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_8c
    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/wire/Message;->hashCode:I

    :cond_8f
    return v0

    :cond_90
    move v0, v1

    goto :goto_19

    :cond_92
    move v0, v1

    goto :goto_26

    :cond_94
    move v0, v1

    goto :goto_72

    :cond_96
    move v0, v1

    goto :goto_7f
.end method

.method public bridge synthetic newBuilder()Lcom/sigmob/wire/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->newBuilder()Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;
    .registers 4

    new-instance v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->package_:Ljava/lang/String;

    const-string v1, "dependency"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->dependency:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->dependency:Ljava/util/List;

    const-string v1, "public_dependency"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->public_dependency:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->public_dependency:Ljava/util/List;

    const-string v1, "weak_dependency"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->weak_dependency:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->weak_dependency:Ljava/util/List;

    const-string v1, "message_type"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->message_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->message_type:Ljava/util/List;

    const-string v1, "enum_type"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->enum_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->enum_type:Ljava/util/List;

    const-string v1, "service"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->service:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->service:Ljava/util/List;

    const-string v1, "extension"

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->extension:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/sigmob/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->extension:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->syntax:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/protobuf/FileDescriptorProto$Builder;->addUnknownFields(Lcom/sigmob/wire/okio/ByteString;)Lcom/sigmob/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->package_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->dependency:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, ", dependency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->dependency:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->public_dependency:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, ", public_dependency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->public_dependency:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_49
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->weak_dependency:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, ", weak_dependency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->weak_dependency:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5c
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->message_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    const-string v1, ", message_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->message_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6f
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->enum_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_82

    const-string v1, ", enum_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->enum_type:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_82
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->service:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_95

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->service:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_95
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->extension:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a8

    const-string v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->extension:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a8
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    if-eqz v1, :cond_b7

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->options:Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b7
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    if-eqz v1, :cond_c6

    const-string v1, ", source_code_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->source_code_info:Lcom/sigmob/wire/protobuf/SourceCodeInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c6
    iget-object v1, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v1, :cond_d5

    const-string v1, ", syntax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/wire/protobuf/FileDescriptorProto;->syntax:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d5
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "FileDescriptorProto{"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
