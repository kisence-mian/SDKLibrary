.class public abstract Lcom/tds/protobuf/CodedOutputStream;
.super Lcom/tds/protobuf/ByteOutput;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;,
        Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;,
        Lcom/tds/protobuf/CodedOutputStream$AbstractBufferedEncoder;,
        Lcom/tds/protobuf/CodedOutputStream$NioEncoder;,
        Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;,
        Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;,
        Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field private static final ARRAY_BASE_OFFSET:J

.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final FIXED_32_SIZE:I = 0x4

.field private static final FIXED_64_SIZE:I = 0x8

.field private static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_VARINT_SIZE:I = 0xa

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-class v0, Lcom/tds/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tds/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    .line 59
    invoke-static {}, Lcom/tds/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/tds/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 60
    invoke-static {}, Lcom/tds/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v0

    sput-wide v0, Lcom/tds/protobuf/CodedOutputStream;->ARRAY_BASE_OFFSET:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Lcom/tds/protobuf/ByteOutput;-><init>()V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/protobuf/CodedOutputStream$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/protobuf/CodedOutputStream$1;

    .line 57
    invoke-direct {p0}, Lcom/tds/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 57
    sget-boolean v0, Lcom/tds/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static synthetic access$200()J
    .registers 2

    .line 57
    sget-wide v0, Lcom/tds/protobuf/CodedOutputStream;->ARRAY_BASE_OFFSET:J

    return-wide v0
.end method

.method public static computeBoolSize(IZ)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z

    .line 561
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .registers 2
    .param p0, "unused"    # Z

    .line 799
    const/4 v0, 0x1

    return v0
.end method

.method public static computeByteArraySize(I[B)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # [B

    .line 594
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeByteArraySizeNoTag([B)I
    .registers 2
    .param p0, "value"    # [B

    .line 849
    array-length v0, p0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method public static computeByteBufferSize(ILjava/nio/ByteBuffer;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/nio/ByteBuffer;

    .line 602
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "value"    # Ljava/nio/ByteBuffer;

    .line 857
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method public static computeBytesSize(ILcom/tds/protobuf/ByteString;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 586
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/tds/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag(Lcom/tds/protobuf/ByteString;)I
    .registers 2
    .param p0, "value"    # Lcom/tds/protobuf/ByteString;

    .line 841
    invoke-virtual {p0}, Lcom/tds/protobuf/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D

    .line 553
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .registers 3
    .param p0, "unused"    # D

    .line 791
    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 570
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 808
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static computeFixed32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 489
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .registers 2
    .param p0, "unused"    # I

    .line 709
    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 529
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .registers 3
    .param p0, "unused"    # J

    .line 767
    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F

    .line 545
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .registers 2
    .param p0, "unused"    # F

    .line 783
    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/tds/protobuf/MessageLite;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1018
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/tds/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/tds/protobuf/MessageLite;)I
    .registers 2
    .param p0, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1027
    invoke-interface {p0}, Lcom/tds/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 465
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 668
    if-ltz p0, :cond_7

    .line 669
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 672
    :cond_7
    const/16 v0, 0xa

    return v0
.end method

.method public static computeInt64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 505
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .registers 3
    .param p0, "value"    # J

    .line 725
    invoke-static {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0
.end method

.method public static computeLazyFieldMessageSetExtensionSize(ILcom/tds/protobuf/LazyFieldLite;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 651
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 652
    invoke-static {v1, p0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/tds/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/tds/protobuf/LazyFieldLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeLazyFieldSize(ILcom/tds/protobuf/LazyFieldLite;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 610
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/tds/protobuf/LazyFieldLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeLazyFieldSizeNoTag(Lcom/tds/protobuf/LazyFieldLite;)I
    .registers 2
    .param p0, "value"    # Lcom/tds/protobuf/LazyFieldLite;

    .line 833
    invoke-virtual {p0}, Lcom/tds/protobuf/LazyFieldLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method static computeLengthDelimitedFieldSize(I)I
    .registers 2
    .param p0, "fieldLength"    # I

    .line 869
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeMessageSetExtensionSize(ILcom/tds/protobuf/MessageLite;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/tds/protobuf/MessageLite;

    .line 627
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 628
    invoke-static {v1, p0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSize(ILcom/tds/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSize(ILcom/tds/protobuf/MessageLite;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/tds/protobuf/MessageLite;

    .line 618
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/tds/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/tds/protobuf/MessageLite;)I
    .registers 2
    .param p0, "value"    # Lcom/tds/protobuf/MessageLite;

    .line 865
    invoke-interface {p0}, Lcom/tds/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v0

    return v0
.end method

.method static computePreferredBufferSize(I)I
    .registers 2
    .param p0, "dataLength"    # I

    .line 85
    const/16 v0, 0x1000

    if-le p0, v0, :cond_5

    .line 86
    return v0

    .line 88
    :cond_5
    return p0
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/tds/protobuf/ByteString;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;

    .line 639
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 640
    invoke-static {v1, p0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/tds/protobuf/CodedOutputStream;->computeBytesSize(ILcom/tds/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .registers 2
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1060
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static computeRawVarint64Size(J)I
    .registers 3
    .param p0, "value"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    invoke-static {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0
.end method

.method public static computeSFixed32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 497
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .registers 2
    .param p0, "unused"    # I

    .line 717
    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 537
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .registers 3
    .param p0, "unused"    # J

    .line 775
    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 481
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 701
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 521
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .registers 4
    .param p0, "value"    # J

    .line 759
    invoke-static {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 578
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 818
    :try_start_0
    invoke-static {p0}, Lcom/tds/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_4
    .catch Lcom/tds/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_4} :catch_5

    .line 823
    .local v0, "length":I
    goto :goto_e

    .line 819
    .end local v0    # "length":I
    :catch_5
    move-exception v0

    .line 821
    .local v0, "e":Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    sget-object v1, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 822
    .local v1, "bytes":[B
    array-length v2, v1

    move v0, v2

    .line 825
    .end local v1    # "bytes":[B
    .local v0, "length":I
    :goto_e
    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result v1

    return v1
.end method

.method public static computeTagSize(I)I
    .registers 2
    .param p0, "fieldNumber"    # I

    .line 660
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .registers 4
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .line 473
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .registers 2
    .param p0, "value"    # I

    .line 681
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    .line 682
    const/4 v0, 0x1

    return v0

    .line 684
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    .line 685
    const/4 v0, 0x2

    return v0

    .line 687
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    .line 688
    const/4 v0, 0x3

    return v0

    .line 690
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    .line 691
    const/4 v0, 0x4

    return v0

    .line 693
    :cond_1a
    const/4 v0, 0x5

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .registers 5
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .line 513
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .registers 8
    .param p0, "value"    # J

    .line 734
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 735
    const/4 v0, 0x1

    return v0

    .line 737
    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    .line 738
    const/16 v0, 0xa

    return v0

    .line 741
    :cond_12
    const/4 v0, 0x2

    .line 742
    .local v0, "n":I
    const-wide v4, -0x800000000L

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_22

    .line 743
    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    .line 745
    :cond_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    .line 746
    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 748
    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_38

    .line 749
    add-int/lit8 v0, v0, 0x1

    .line 751
    :cond_38
    return v0
.end method

.method public static encodeZigZag32(I)I
    .registers 3
    .param p0, "n"    # I

    .line 884
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .registers 6
    .param p0, "n"    # J

    .line 899
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static newInstance(Lcom/tds/protobuf/ByteOutput;I)Lcom/tds/protobuf/CodedOutputStream;
    .registers 4
    .param p0, "byteOutput"    # Lcom/tds/protobuf/ByteOutput;
    .param p1, "bufferSize"    # I

    .line 172
    if-ltz p1, :cond_8

    .line 176
    new-instance v0, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;

    invoke-direct {v0, p0, p1}, Lcom/tds/protobuf/CodedOutputStream$ByteOutputEncoder;-><init>(Lcom/tds/protobuf/ByteOutput;I)V

    return-object v0

    .line 173
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/tds/protobuf/CodedOutputStream;
    .registers 2
    .param p0, "output"    # Ljava/io/OutputStream;

    .line 99
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/tds/protobuf/CodedOutputStream;
    .registers 3
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "bufferSize"    # I

    .line 111
    new-instance v0, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;

    invoke-direct {v0, p0, p1}, Lcom/tds/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;)Lcom/tds/protobuf/CodedOutputStream;
    .registers 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 142
    new-instance v0, Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/CodedOutputStream$NioHeapEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 144
    :cond_c
    new-instance v0, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;

    invoke-direct {v0, p0}, Lcom/tds/protobuf/CodedOutputStream$NioEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static newInstance(Ljava/nio/ByteBuffer;I)Lcom/tds/protobuf/CodedOutputStream;
    .registers 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "unused"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-static {p0}, Lcom/tds/protobuf/CodedOutputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([B)Lcom/tds/protobuf/CodedOutputStream;
    .registers 3
    .param p0, "flatArray"    # [B

    .line 122
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/tds/protobuf/CodedOutputStream;->newInstance([BII)Lcom/tds/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/tds/protobuf/CodedOutputStream;
    .registers 4
    .param p0, "flatArray"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 134
    new-instance v0, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public final checkNoSpaceLeft()V
    .registers 3

    .line 924
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_7

    .line 927
    return-void

    .line 925
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTotalBytesWritten()I
.end method

.method final inefficientWriteStringNoTag(Ljava/lang/String;Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/tds/protobuf/Utf8$UnpairedSurrogateException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    sget-object v0, Lcom/tds/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 975
    sget-object v0, Lcom/tds/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 977
    .local v0, "bytes":[B
    :try_start_f
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 978
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tds/protobuf/CodedOutputStream;->writeLazy([BII)V
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_18} :catch_1c
    .catch Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException; {:try_start_f .. :try_end_18} :catch_1a

    .line 983
    nop

    .line 984
    return-void

    .line 981
    :catch_1a
    move-exception v1

    .line 982
    .local v1, "e":Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;
    throw v1

    .line 979
    .end local v1    # "e":Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;
    :catch_1c
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v2, v1}, Lcom/tds/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public abstract spaceLeft()I
.end method

.method public abstract write(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBool(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeBoolNoTag(Z)V
    .registers 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->write(B)V

    .line 408
    return-void
.end method

.method public abstract writeByteArray(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeByteArray(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeByteArrayNoTag([B)V
    .registers 4
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeByteArrayNoTag([BII)V

    .line 430
    return-void
.end method

.method abstract writeByteArrayNoTag([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes(ILcom/tds/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytesNoTag(Lcom/tds/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeDouble(ID)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 242
    return-void
.end method

.method public final writeDoubleNoTag(D)V
    .registers 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 403
    return-void
.end method

.method public final writeEnum(II)V
    .registers 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 254
    return-void
.end method

.method public final writeEnumNoTag(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 416
    return-void
.end method

.method public abstract writeFixed32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFixed32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFixed64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFixed64NoTag(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeFloat(IF)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 237
    return-void
.end method

.method public final writeFloatNoTag(F)V
    .registers 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 398
    return-void
.end method

.method public final writeGroup(ILcom/tds/protobuf/MessageLite;)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 995
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeTag(II)V

    .line 996
    invoke-virtual {p0, p2}, Lcom/tds/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/tds/protobuf/MessageLite;)V

    .line 997
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeTag(II)V

    .line 998
    return-void
.end method

.method public final writeGroupNoTag(Lcom/tds/protobuf/MessageLite;)V
    .registers 2
    .param p1, "value"    # Lcom/tds/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1007
    invoke-interface {p1, p0}, Lcom/tds/protobuf/MessageLite;->writeTo(Lcom/tds/protobuf/CodedOutputStream;)V

    .line 1008
    return-void
.end method

.method public abstract writeInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeInt32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeInt64(IJ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 214
    return-void
.end method

.method public final writeInt64NoTag(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 375
    return-void
.end method

.method public abstract writeLazy(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeLazy([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeMessage(ILcom/tds/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeMessageNoTag(Lcom/tds/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeMessageSetExtension(ILcom/tds/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeRawByte(B)V
    .registers 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->write(B)V

    .line 291
    return-void
.end method

.method public final writeRawByte(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->write(B)V

    .line 296
    return-void
.end method

.method public final writeRawBytes(Lcom/tds/protobuf/ByteString;)V
    .registers 2
    .param p1, "value"    # Lcom/tds/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p1, p0}, Lcom/tds/protobuf/ByteString;->writeTo(Lcom/tds/protobuf/ByteOutput;)V

    .line 313
    return-void
.end method

.method public abstract writeRawBytes(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeRawBytes([B)V
    .registers 4
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/protobuf/CodedOutputStream;->write([BII)V

    .line 301
    return-void
.end method

.method public final writeRawBytes([BII)V
    .registers 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream;->write([BII)V

    .line 308
    return-void
.end method

.method public final writeRawLittleEndian32(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 1081
    return-void
.end method

.method public final writeRawLittleEndian64(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1090
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 1091
    return-void
.end method

.method public abstract writeRawMessageSetExtension(ILcom/tds/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeRawVarint32(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1038
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1039
    return-void
.end method

.method public final writeRawVarint64(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1048
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 1049
    return-void
.end method

.method public final writeSFixed32(II)V
    .registers 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 209
    return-void
.end method

.method public final writeSFixed32NoTag(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 370
    return-void
.end method

.method public final writeSFixed64(IJ)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 232
    return-void
.end method

.method public final writeSFixed64NoTag(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 393
    return-void
.end method

.method public final writeSInt32(II)V
    .registers 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-static {p2}, Lcom/tds/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 200
    return-void
.end method

.method public final writeSInt32NoTag(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-static {p1}, Lcom/tds/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 361
    return-void
.end method

.method public final writeSInt64(IJ)V
    .registers 6
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-static {p2, p3}, Lcom/tds/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 223
    return-void
.end method

.method public final writeSInt64NoTag(J)V
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-static {p1, p2}, Lcom/tds/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tds/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 384
    return-void
.end method

.method public abstract writeString(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStringNoTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTag(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt64NoTag(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
