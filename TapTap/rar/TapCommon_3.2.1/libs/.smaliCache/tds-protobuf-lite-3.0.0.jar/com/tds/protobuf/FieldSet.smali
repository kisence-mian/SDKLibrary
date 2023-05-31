.class final Lcom/tds/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/tds/protobuf/FieldSet;


# instance fields
.field private final fields:Lcom/tds/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasLazyField:Z

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Lcom/tds/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/tds/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/tds/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 76
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    .line 77
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/tds/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    .line 78
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .param p1, "dummy"    # Z

    .line 84
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    .line 85
    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/tds/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    .line 86
    invoke-virtual {p0}, Lcom/tds/protobuf/FieldSet;->makeImmutable()V

    .line 87
    return-void
.end method

.method private cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TFieldDescriptorType;Ljava/lang/Object;>;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    .line 202
    .local v0, "key":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/tds/protobuf/LazyField;

    if-eqz v2, :cond_19

    .line 204
    move-object v2, v1

    check-cast v2, Lcom/tds/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 206
    :cond_19
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_1c
    return-void
.end method

.method private cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 510
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    instance-of v0, p1, [B

    if-eqz v0, :cond_12

    .line 511
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    .line 512
    .local v0, "bytes":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 513
    .local v1, "copy":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    return-object v1

    .line 516
    .end local v0    # "bytes":[B
    .end local v1    # "copy":[B
    :cond_12
    return-object p1
.end method

.method static computeElementSize(Lcom/tds/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .registers 5
    .param p0, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p1, "number"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 810
    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    .line 811
    .local v0, "tagSize":I
    sget-object v1, Lcom/tds/protobuf/WireFormat$FieldType;->GROUP:Lcom/tds/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_a

    .line 814
    mul-int/lit8 v0, v0, 0x2

    .line 816
    :cond_a
    invoke-static {p0, p2}, Lcom/tds/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method static computeElementSizeNoTag(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .registers 4
    .param p0, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 831
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_112

    .line 877
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :pswitch_13
    instance-of v0, p1, Lcom/tds/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_23

    .line 870
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/Internal$EnumLite;

    .line 871
    invoke-interface {v0}, Lcom/tds/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    .line 870
    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 873
    :cond_23
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 859
    :pswitch_2f
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 858
    :pswitch_3b
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 857
    :pswitch_47
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 856
    :pswitch_53
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 855
    :pswitch_5f
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 844
    :pswitch_6b
    instance-of v0, p1, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_77

    .line 845
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/ByteString;

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/tds/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 847
    :cond_77
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v0

    return v0

    .line 850
    :pswitch_81
    instance-of v0, p1, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_8d

    .line 851
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/ByteString;

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/tds/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 853
    :cond_8d
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 862
    :pswitch_95
    instance-of v0, p1, Lcom/tds/protobuf/LazyField;

    if-eqz v0, :cond_a1

    .line 863
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/LazyField;

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/tds/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    .line 865
    :cond_a1
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/tds/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 842
    :pswitch_a9
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/tds/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 841
    :pswitch_b1
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    return v0

    .line 840
    :pswitch_bd
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 839
    :pswitch_c9
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 838
    :pswitch_d5
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 837
    :pswitch_e1
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 836
    :pswitch_ed
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 835
    :pswitch_f9
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    return v0

    .line 834
    :pswitch_105
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    return v0

    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_105
        :pswitch_f9
        :pswitch_ed
        :pswitch_e1
        :pswitch_d5
        :pswitch_c9
        :pswitch_bd
        :pswitch_b1
        :pswitch_a9
        :pswitch_95
        :pswitch_81
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_13
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 886
    .local p0, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 887
    .local v0, "type":Lcom/tds/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 888
    .local v1, "number":I
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 889
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 890
    const/4 v2, 0x0

    .line 891
    .local v2, "dataSize":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 892
    .local v4, "element":Ljava/lang/Object;
    invoke-static {v0, v4}, Lcom/tds/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 893
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_1c

    .line 894
    :cond_2c
    nop

    .line 895
    invoke-static {v1}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 896
    invoke-static {v2}, Lcom/tds/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    .line 898
    .end local v2    # "dataSize":I
    :cond_38
    const/4 v2, 0x0

    .line 899
    .local v2, "size":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 900
    .restart local v4    # "element":Ljava/lang/Object;
    invoke-static {v0, v1, v4}, Lcom/tds/protobuf/FieldSet;->computeElementSize(Lcom/tds/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 901
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_40

    .line 902
    :cond_50
    return v2

    .line 905
    .end local v2    # "size":I
    :cond_51
    invoke-static {v0, v1, p1}, Lcom/tds/protobuf/FieldSet;->computeElementSize(Lcom/tds/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public static emptySet()Lcom/tds/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/tds/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/tds/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/tds/protobuf/FieldSet;

    return-object v0
.end method

.method private getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 781
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    .line 782
    .local v0, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 783
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/tds/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_48

    .line 784
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_48

    .line 785
    instance-of v2, v1, Lcom/tds/protobuf/LazyField;

    if-eqz v2, :cond_35

    .line 786
    nop

    .line 787
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/tds/protobuf/LazyField;

    .line 786
    invoke-static {v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/tds/protobuf/LazyFieldLite;)I

    move-result v2

    return v2

    .line 789
    :cond_35
    nop

    .line 790
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/tds/protobuf/MessageLite;

    .line 789
    invoke-static {v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/tds/protobuf/MessageLite;)I

    move-result v2

    return v2

    .line 793
    :cond_48
    invoke-static {v0, v1}, Lcom/tds/protobuf/FieldSet;->computeFieldSize(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method static getWireFormatForFieldType(Lcom/tds/protobuf/WireFormat$FieldType;Z)I
    .registers 3
    .param p0, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p1, "isPacked"    # Z

    .line 488
    if-eqz p1, :cond_4

    .line 489
    const/4 v0, 0x2

    return v0

    .line 491
    :cond_4
    invoke-virtual {p0}, Lcom/tds/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    return v0
.end method

.method private isInitialized(Ljava/util/Map$Entry;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 454
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    .line 455
    .local v0, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/tds/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/tds/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_54

    .line 456
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 458
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tds/protobuf/MessageLite;

    .line 459
    .local v4, "element":Lcom/tds/protobuf/MessageLite;
    invoke-interface {v4}, Lcom/tds/protobuf/MessageLite;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_33

    .line 460
    return v2

    .line 462
    .end local v4    # "element":Lcom/tds/protobuf/MessageLite;
    :cond_33
    goto :goto_20

    :cond_34
    goto :goto_54

    .line 464
    :cond_35
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 465
    .local v1, "value":Ljava/lang/Object;
    instance-of v4, v1, Lcom/tds/protobuf/MessageLite;

    if-eqz v4, :cond_47

    .line 466
    move-object v4, v1

    check-cast v4, Lcom/tds/protobuf/MessageLite;

    invoke-interface {v4}, Lcom/tds/protobuf/MessageLite;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_54

    .line 467
    return v2

    .line 469
    :cond_47
    instance-of v2, v1, Lcom/tds/protobuf/LazyField;

    if-eqz v2, :cond_4c

    .line 470
    return v3

    .line 472
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong object type used with protocol message reflection."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    .end local v1    # "value":Ljava/lang/Object;
    :cond_54
    :goto_54
    return v3
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 523
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    .line 524
    .local v0, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 525
    .local v1, "otherValue":Ljava/lang/Object;
    instance-of v2, v1, Lcom/tds/protobuf/LazyField;

    if-eqz v2, :cond_15

    .line 526
    move-object v2, v1

    check-cast v2, Lcom/tds/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v1

    .line 529
    :cond_15
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 530
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 531
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_27

    .line 532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 534
    :cond_27
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 535
    .local v4, "element":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/tds/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_2e

    .line 537
    :cond_43
    iget-object v3, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_82

    :cond_49
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/tds/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_79

    .line 539
    invoke-virtual {p0, v0}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 540
    .restart local v2    # "value":Ljava/lang/Object;
    if-nez v2, :cond_61

    .line 541
    iget-object v3, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-direct {p0, v1}, Lcom/tds/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 544
    :cond_61
    move-object v3, v2

    check-cast v3, Lcom/tds/protobuf/MessageLite;

    .line 545
    invoke-interface {v3}, Lcom/tds/protobuf/MessageLite;->toBuilder()Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/tds/protobuf/MessageLite;

    .line 544
    invoke-interface {v0, v3, v4}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/tds/protobuf/MessageLite$Builder;Lcom/tds/protobuf/MessageLite;)Lcom/tds/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 546
    invoke-interface {v3}, Lcom/tds/protobuf/MessageLite$Builder;->build()Lcom/tds/protobuf/MessageLite;

    move-result-object v2

    .line 548
    iget-object v3, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .end local v2    # "value":Ljava/lang/Object;
    :goto_78
    goto :goto_82

    .line 551
    :cond_79
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-direct {p0, v1}, Lcom/tds/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :goto_82
    return-void
.end method

.method public static newFieldSet()Lcom/tds/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/tds/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/tds/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/tds/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p2, "checkUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    if-eqz p2, :cond_9

    .line 576
    sget-object v0, Lcom/tds/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/tds/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/tds/protobuf/WireFormat;->readPrimitiveField(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/WireFormat$FieldType;Lcom/tds/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 579
    :cond_9
    sget-object v0, Lcom/tds/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/tds/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/tds/protobuf/WireFormat;->readPrimitiveField(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/WireFormat$FieldType;Lcom/tds/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static verifyType(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 6
    .param p0, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 387
    if-eqz p1, :cond_52

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "isValid":Z
    sget-object v1, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/tds/protobuf/WireFormat$FieldType;->getJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_58

    goto :goto_47

    .line 409
    :pswitch_15
    instance-of v1, p1, Lcom/tds/protobuf/MessageLite;

    if-nez v1, :cond_1d

    instance-of v1, p1, Lcom/tds/protobuf/LazyField;

    if-eqz v1, :cond_1e

    :cond_1d
    move v2, v3

    :cond_1e
    move v0, v2

    goto :goto_47

    .line 404
    :pswitch_20
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_28

    instance-of v1, p1, Lcom/tds/protobuf/Internal$EnumLite;

    if-eqz v1, :cond_29

    :cond_28
    move v2, v3

    :cond_29
    move v0, v2

    .line 406
    goto :goto_47

    .line 400
    :pswitch_2b
    instance-of v1, p1, Lcom/tds/protobuf/ByteString;

    if-nez v1, :cond_33

    instance-of v1, p1, [B

    if-eqz v1, :cond_34

    :cond_33
    move v2, v3

    :cond_34
    move v0, v2

    .line 401
    goto :goto_47

    .line 398
    :pswitch_36
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_47

    .line 397
    :pswitch_39
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_47

    .line 396
    :pswitch_3c
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_47

    .line 395
    :pswitch_3f
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_47

    .line 394
    :pswitch_42
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_47

    .line 393
    :pswitch_45
    instance-of v0, p1, Ljava/lang/Integer;

    .line 414
    :goto_47
    if-eqz v0, :cond_4a

    .line 425
    return-void

    .line 422
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong object type used with protocol message reflection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    .end local v0    # "isValid":Z
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_2b
        :pswitch_20
        :pswitch_15
    .end packed-switch
.end method

.method static writeElement(Lcom/tds/protobuf/CodedOutputStream;Lcom/tds/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .registers 5
    .param p0, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p2, "number"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    sget-object v0, Lcom/tds/protobuf/WireFormat$FieldType;->GROUP:Lcom/tds/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_b

    .line 649
    move-object v0, p3

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p0, p2, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeGroup(ILcom/tds/protobuf/MessageLite;)V

    goto :goto_16

    .line 651
    :cond_b
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tds/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/tds/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeTag(II)V

    .line 652
    invoke-static {p0, p1, p3}, Lcom/tds/protobuf/FieldSet;->writeElementNoTag(Lcom/tds/protobuf/CodedOutputStream;Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 654
    :goto_16
    return-void
.end method

.method static writeElementNoTag(Lcom/tds/protobuf/CodedOutputStream;Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 5
    .param p0, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    sget-object v0, Lcom/tds/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f4

    goto/16 :goto_f3

    .line 702
    :pswitch_d
    instance-of v0, p2, Lcom/tds/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_1d

    .line 703
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/tds/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_f3

    .line 705
    :cond_1d
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_f3

    .line 699
    :pswitch_29
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    goto/16 :goto_f3

    .line 698
    :pswitch_35
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    goto/16 :goto_f3

    .line 697
    :pswitch_41
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    goto/16 :goto_f3

    .line 696
    :pswitch_4d
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    goto/16 :goto_f3

    .line 695
    :pswitch_59
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    goto/16 :goto_f3

    .line 689
    :pswitch_65
    instance-of v0, p2, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_71

    .line 690
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V

    goto/16 :goto_f3

    .line 692
    :cond_71
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    .line 694
    goto/16 :goto_f3

    .line 682
    :pswitch_7b
    instance-of v0, p2, Lcom/tds/protobuf/ByteString;

    if-eqz v0, :cond_87

    .line 683
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V

    goto/16 :goto_f3

    .line 685
    :cond_87
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 687
    goto :goto_f3

    .line 680
    :pswitch_8e
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V

    goto :goto_f3

    .line 679
    :pswitch_95
    move-object v0, p2

    check-cast v0, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/tds/protobuf/MessageLite;)V

    goto :goto_f3

    .line 678
    :pswitch_9c
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    goto :goto_f3

    .line 677
    :pswitch_a7
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_f3

    .line 676
    :pswitch_b2
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_f3

    .line 675
    :pswitch_bd
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    goto :goto_f3

    .line 674
    :pswitch_c8
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    goto :goto_f3

    .line 673
    :pswitch_d3
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_f3

    .line 672
    :pswitch_de
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    goto :goto_f3

    .line 671
    :pswitch_e9
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 709
    :goto_f3
    return-void

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_de
        :pswitch_d3
        :pswitch_c8
        :pswitch_bd
        :pswitch_b2
        :pswitch_a7
        :pswitch_9c
        :pswitch_95
        :pswitch_8e
        :pswitch_7b
        :pswitch_65
        :pswitch_59
        :pswitch_4d
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_d
    .end packed-switch
.end method

.method public static writeField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/tds/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    .local p0, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/tds/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 717
    .local v0, "type":Lcom/tds/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 718
    .local v1, "number":I
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 719
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 720
    .local v2, "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 721
    const/4 v3, 0x2

    invoke-virtual {p2, v1, v3}, Lcom/tds/protobuf/CodedOutputStream;->writeTag(II)V

    .line 723
    const/4 v3, 0x0

    .line 724
    .local v3, "dataSize":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 725
    .local v5, "element":Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/tds/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v3, v6

    .line 726
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_20

    .line 727
    :cond_30
    invoke-virtual {p2, v3}, Lcom/tds/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 729
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 730
    .restart local v5    # "element":Ljava/lang/Object;
    invoke-static {p2, v0, v5}, Lcom/tds/protobuf/FieldSet;->writeElementNoTag(Lcom/tds/protobuf/CodedOutputStream;Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 731
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_37

    .line 732
    .end local v3    # "dataSize":I
    :cond_45
    goto :goto_58

    .line 733
    :cond_46
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 734
    .local v4, "element":Ljava/lang/Object;
    invoke-static {p2, v0, v1, v4}, Lcom/tds/protobuf/FieldSet;->writeElement(Lcom/tds/protobuf/CodedOutputStream;Lcom/tds/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 735
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_4a

    .line 737
    .end local v2    # "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_58
    :goto_58
    goto :goto_6b

    .line 738
    :cond_59
    instance-of v2, p1, Lcom/tds/protobuf/LazyField;

    if-eqz v2, :cond_68

    .line 739
    move-object v2, p1

    check-cast v2, Lcom/tds/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/tds/protobuf/FieldSet;->writeElement(Lcom/tds/protobuf/CodedOutputStream;Lcom/tds/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_6b

    .line 741
    :cond_68
    invoke-static {p2, v0, v1, p1}, Lcom/tds/protobuf/FieldSet;->writeElement(Lcom/tds/protobuf/CodedOutputStream;Lcom/tds/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 744
    :goto_6b
    return-void
.end method

.method private writeMessageSetTo(Ljava/util/Map$Entry;Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 7
    .param p2, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tds/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    .line 617
    .local v0, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/tds/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/tds/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/tds/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_3a

    .line 618
    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-interface {v0}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 619
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 620
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/tds/protobuf/LazyField;

    if-eqz v2, :cond_29

    .line 621
    move-object v2, v1

    check-cast v2, Lcom/tds/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v1

    .line 623
    :cond_29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/tds/protobuf/MessageLite;

    invoke-virtual {p2, v2, v3}, Lcom/tds/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/tds/protobuf/MessageLite;)V

    .line 625
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_41

    .line 626
    :cond_3a
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/tds/protobuf/FieldSet;->writeField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/tds/protobuf/CodedOutputStream;)V

    .line 628
    :goto_41
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 6
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 364
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tds/protobuf/FieldSet;->verifyType(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, "existingValue":Ljava/lang/Object;
    if-nez v0, :cond_1e

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, v1}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 372
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1e
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 375
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_21
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-void

    .line 360
    .end local v0    # "existingValue":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 173
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->clear()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    .line 175
    return-void
.end method

.method public clearField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    .line 290
    :cond_10
    return-void
.end method

.method public clone()Lcom/tds/protobuf/FieldSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/protobuf/FieldSet<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-static {}, Lcom/tds/protobuf/FieldSet;->newFieldSet()Lcom/tds/protobuf/FieldSet;

    move-result-object v0

    .line 154
    .local v0, "clone":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 155
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 156
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    .line 157
    .local v3, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tds/protobuf/FieldSet;->setField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 154
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v3    # "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 160
    .end local v1    # "i":I
    :cond_23
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    .line 162
    .restart local v3    # "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tds/protobuf/FieldSet;->setField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 163
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v3    # "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    goto :goto_2d

    .line 164
    :cond_47
    iget-boolean v1, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    .line 165
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-virtual {p0}, Lcom/tds/protobuf/FieldSet;->clone()Lcom/tds/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    if-ne p0, p1, :cond_4

    .line 127
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_4
    instance-of v0, p1, Lcom/tds/protobuf/FieldSet;

    if-nez v0, :cond_a

    .line 131
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/tds/protobuf/FieldSet;

    .line 135
    .local v0, "other":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<*>;"
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    iget-object v2, v0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1, v2}, Lcom/tds/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAllFields()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_45

    .line 182
    const/16 v0, 0x10

    .line 183
    invoke-static {v0}, Lcom/tds/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/tds/protobuf/SmallSortedMap;

    move-result-object v0

    .line 184
    .local v0, "result":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TFieldDescriptorType;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 185
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/tds/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 188
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0, v2}, Lcom/tds/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;)V

    .line 190
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_29

    .line 191
    :cond_39
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 192
    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->makeImmutable()V

    .line 194
    :cond_44
    return-object v0

    .line 196
    .end local v0    # "result":Lcom/tds/protobuf/SmallSortedMap;, "Lcom/tds/protobuf/SmallSortedMap<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_45
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    goto :goto_56

    :cond_50
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_56
    return-object v0
.end method

.method public getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/tds/protobuf/LazyField;

    if-eqz v1, :cond_12

    .line 245
    move-object v1, v0

    check-cast v1, Lcom/tds/protobuf/LazyField;

    invoke-virtual {v1}, Lcom/tds/protobuf/LazyField;->getValue()Lcom/tds/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    .line 247
    :cond_12
    return-object v0
.end method

.method public getMessageSetSerializedSize()I
    .registers 5

    .line 768
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .line 769
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 770
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tds/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v0, v2

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 773
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 774
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v2}, Lcom/tds/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    .line 775
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_22

    .line 776
    :cond_34
    return v0
.end method

.method public getRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 321
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 326
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 324
    :cond_14
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 317
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedFieldCount(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .line 297
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 302
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 304
    const/4 v1, 0x0

    return v1

    .line 306
    :cond_e
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 298
    .end local v0    # "value":Ljava/lang/Object;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializedSize()I
    .registers 6

    .line 751
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .line 752
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 753
    iget-object v2, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    .line 754
    invoke-virtual {v2, v1}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 755
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tds/protobuf/FieldSet;->computeFieldSize(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 752
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 758
    .end local v1    # "i":I
    :cond_22
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 759
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tds/protobuf/FieldSet;->computeFieldSize(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 760
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_2c

    .line 761
    :cond_48
    return v0
.end method

.method public hasField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .line 228
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 233
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/tds/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 229
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 140
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isImmutable()Z
    .registers 2

    .line 121
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 5

    .line 437
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1a

    .line 438
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tds/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 439
    return v2

    .line 437
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 444
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lcom/tds/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 445
    return v2

    .line 447
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_37
    goto :goto_24

    .line 448
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 217
    new-instance v0, Lcom/tds/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    .line 218
    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 220
    :cond_14
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .registers 2

    .line 107
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_5

    .line 108
    return-void

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->makeImmutable()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->isImmutable:Z

    .line 112
    return-void
.end method

.method public mergeFrom(Lcom/tds/protobuf/FieldSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/protobuf/FieldSet<",
            "TFieldDescriptorType;>;)V"
        }
    .end annotation

    .line 500
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "other":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 501
    iget-object v1, p1, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tds/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 504
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p1, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 505
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lcom/tds/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 506
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1f

    .line 507
    :cond_2f
    return-void
.end method

.method public setField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 7
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 258
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2d

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, "newList":Ljava/util/List;
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 268
    .local v2, "element":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tds/protobuf/FieldSet;->verifyType(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 269
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_19

    .line 270
    :cond_2b
    move-object p2, v0

    .line 271
    .end local v0    # "newList":Ljava/util/List;
    goto :goto_3c

    .line 259
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_35
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tds/protobuf/FieldSet;->verifyType(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 275
    :goto_3c
    instance-of v0, p2, Lcom/tds/protobuf/LazyField;

    if-eqz v0, :cond_43

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/protobuf/FieldSet;->hasLazyField:Z

    .line 278
    :cond_43
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/tds/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method public setRepeatedField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .registers 6
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, "descriptor":Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;, "TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 343
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/FieldSet;->getField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    .local v0, "list":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    .line 348
    invoke-interface {p1}, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/tds/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/tds/protobuf/FieldSet;->verifyType(Lcom/tds/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 349
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-void

    .line 345
    :cond_1a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 339
    .end local v0    # "list":Ljava/lang/Object;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeMessageSetTo(Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 4
    .param p1, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 605
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/tds/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/tds/protobuf/CodedOutputStream;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 608
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 609
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v1, p1}, Lcom/tds/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/tds/protobuf/CodedOutputStream;)V

    .line 610
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_1f

    .line 611
    :cond_2f
    return-void
.end method

.method public writeTo(Lcom/tds/protobuf/CodedOutputStream;)V
    .registers 6
    .param p1, "output"    # Lcom/tds/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    .local p0, "this":Lcom/tds/protobuf/FieldSet;, "Lcom/tds/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/tds/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 589
    iget-object v1, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    .line 590
    invoke-virtual {v1, v0}, Lcom/tds/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 591
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/tds/protobuf/FieldSet;->writeField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/tds/protobuf/CodedOutputStream;)V

    .line 588
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 594
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Lcom/tds/protobuf/FieldSet;->fields:Lcom/tds/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/tds/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 595
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/tds/protobuf/FieldSet;->writeField(Lcom/tds/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/tds/protobuf/CodedOutputStream;)V

    .line 596
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    goto :goto_29

    .line 597
    :cond_43
    return-void
.end method
