.class final Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/protobuf/FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_FileOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/wire/protobuf/FileOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FileOptions;
    .registers 10

    new-instance v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    invoke-direct {v0}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_ed

    sparse-switch v3, :sswitch_data_f6

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :sswitch_23
    iget-object v3, v0, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->uninterpreted_option:Ljava/util/List;

    sget-object v4, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :sswitch_2f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->csharp_namespace(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto :goto_9

    :sswitch_3b
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->objc_class_prefix(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto :goto_9

    :sswitch_47
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_enable_arenas(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto :goto_9

    :sswitch_53
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_string_check_utf8(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto :goto_9

    :sswitch_5f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->deprecated(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto :goto_9

    :sswitch_6b
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generate_equals_and_hash(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto :goto_9

    :sswitch_77
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->py_generic_services(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto :goto_9

    :sswitch_83
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_generic_services(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto/16 :goto_9

    :sswitch_90
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->cc_generic_services(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto/16 :goto_9

    :sswitch_9d
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->go_package(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto/16 :goto_9

    :sswitch_aa
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_multiple_files(Ljava/lang/Boolean;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto/16 :goto_9

    :sswitch_b7
    :try_start_b7
    sget-object v4, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    invoke-virtual {v0, v4}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->optimize_for(Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;
    :try_end_c2
    .catch Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_b7 .. :try_end_c2} :catch_c4

    goto/16 :goto_9

    :catch_c4
    move-exception v4

    sget-object v5, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    iget v4, v4, Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto/16 :goto_9

    :sswitch_d3
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_outer_classname(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto/16 :goto_9

    :sswitch_e0
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->java_package(Ljava/lang/String;)Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    goto/16 :goto_9

    :cond_ed
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->build()Lcom/sigmob/wire/protobuf/FileOptions;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_f6
    .sparse-switch
        0x1 -> :sswitch_e0
        0x8 -> :sswitch_d3
        0x9 -> :sswitch_b7
        0xa -> :sswitch_aa
        0xb -> :sswitch_9d
        0x10 -> :sswitch_90
        0x11 -> :sswitch_83
        0x12 -> :sswitch_77
        0x14 -> :sswitch_6b
        0x17 -> :sswitch_5f
        0x1b -> :sswitch_53
        0x1f -> :sswitch_47
        0x24 -> :sswitch_3b
        0x25 -> :sswitch_2f
        0x3e7 -> :sswitch_23
    .end sparse-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/protobuf/FileOptions;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FileOptions;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    const/16 v2, 0x1b

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    const/16 v2, 0x12

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    const/16 v2, 0x17

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    const/16 v2, 0x1f

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    const/16 v2, 0x3e7

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/wire/protobuf/FileOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/protobuf/FileOptions;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/protobuf/FileOptions;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_package:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_outer_classname:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_multiple_files:Ljava/lang/Boolean;

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_generate_equals_and_hash:Ljava/lang/Boolean;

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_string_check_utf8:Ljava/lang/Boolean;

    const/16 v3, 0x1b

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->optimize_for:Lcom/sigmob/wire/protobuf/FileOptions$OptimizeMode;

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->go_package:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->cc_generic_services:Ljava/lang/Boolean;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->java_generic_services:Ljava/lang/Boolean;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->py_generic_services:Ljava/lang/Boolean;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->deprecated:Ljava/lang/Boolean;

    const/16 v3, 0x17

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->cc_enable_arenas:Ljava/lang/Boolean;

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->objc_class_prefix:Ljava/lang/String;

    const/16 v3, 0x24

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->csharp_namespace:Ljava/lang/String;

    const/16 v3, 0x25

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/wire/protobuf/FileOptions;->uninterpreted_option:Ljava/util/List;

    const/16 v3, 0x3e7

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileOptions;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;->encodedSize(Lcom/sigmob/wire/protobuf/FileOptions;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/wire/protobuf/FileOptions;)Lcom/sigmob/wire/protobuf/FileOptions;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileOptions;->newBuilder()Lcom/sigmob/wire/protobuf/FileOptions$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->uninterpreted_option:Ljava/util/List;

    sget-object v1, Lcom/sigmob/wire/protobuf/UninterpretedOption;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/wire/protobuf/FileOptions$Builder;->build()Lcom/sigmob/wire/protobuf/FileOptions;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/wire/protobuf/FileOptions;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/protobuf/FileOptions$ProtoAdapter_FileOptions;->redact(Lcom/sigmob/wire/protobuf/FileOptions;)Lcom/sigmob/wire/protobuf/FileOptions;

    move-result-object p1

    return-object p1
.end method
