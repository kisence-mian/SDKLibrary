.class public final Lcom/sigmob/wire/protobuf/FileOptions$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/wire/protobuf/FileOptions;",
        "Lcom/sigmob/wire/protobuf/FileOptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public cc_enable_arenas:Ljava/lang/Boolean;

.field public cc_generic_services:Ljava/lang/Boolean;

.field public csharp_namespace:Ljava/lang/String;

.field public deprecated:Ljava/lang/Boolean;

.field public go_package:Ljava/lang/String;

.field public java_generate_equals_and_hash:Ljava/lang/Boolean;

.field public java_generic_services:Ljava/lang/Boolean;

.field public java_multiple_files:Ljava/lang/Boolean;

.field public java_outer_classname:Ljava/lang/String;

.field public java_package:Ljava/lang/String;

.field public java_string_check_utf8:Ljava/lang/Boolean;

.field public objc_class_prefix:Ljava/lang/String;

.field public optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

.field public py_generic_services:Ljava/lang/Boolean;

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

    iput-object v0, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->build()Lcom/sigmob/wire/protobuf/FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/wire/protobuf/FileOptions;
    .registers 21

    move-object/from16 v0, p0

    new-instance v18, Lcom/sigmob/wire/protobuf/FileOptions;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_package:Ljava/lang/String;

    iget-object v3, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_outer_classname:Ljava/lang/String;

    iget-object v4, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_multiple_files:Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_string_check_utf8:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    iget-object v8, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->go_package:Ljava/lang/String;

    iget-object v9, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_generic_services:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generic_services:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->py_generic_services:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->deprecated:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_enable_arenas:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->objc_class_prefix:Ljava/lang/String;

    iget-object v15, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->csharp_namespace:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->uninterpreted_option:Ljava/util/List;

    move-object/from16 v16, v1

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v17

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/sigmob/wire/protobuf/FileOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v18
.end method

.method public cc_enable_arenas(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_enable_arenas:Ljava/lang/Boolean;

    return-object p0
.end method

.method public cc_generic_services(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_generic_services:Ljava/lang/Boolean;

    return-object p0
.end method

.method public csharp_namespace(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->csharp_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public deprecated(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->deprecated:Ljava/lang/Boolean;

    return-object p0
.end method

.method public go_package(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->go_package:Ljava/lang/String;

    return-object p0
.end method

.method public java_generate_equals_and_hash(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    return-object p0
.end method

.method public java_generic_services(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generic_services:Ljava/lang/Boolean;

    return-object p0
.end method

.method public java_multiple_files(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_multiple_files:Ljava/lang/Boolean;

    return-object p0
.end method

.method public java_outer_classname(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_outer_classname:Ljava/lang/String;

    return-object p0
.end method

.method public java_package(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_package:Ljava/lang/String;

    return-object p0
.end method

.method public java_string_check_utf8(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_string_check_utf8:Ljava/lang/Boolean;

    return-object p0
.end method

.method public objc_class_prefix(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->objc_class_prefix:Ljava/lang/String;

    return-object p0
.end method

.method public optimize_for(Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    return-object p0
.end method

.method public py_generic_services(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->py_generic_services:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uninterpreted_option(Ljava/util/List;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/wire/protobuf/UninterpretedOption;",
            ">;)",
            "Lcom/sigmob/wire/protobuf/FileOptions$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->uninterpreted_option:Ljava/util/List;

    return-object p0
.end method
