.class public final Lcom/tds/protobuf/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/protobuf/WireFormat$Utf8Validation;,
        Lcom/tds/protobuf/WireFormat$FieldType;,
        Lcom/tds/protobuf/WireFormat$JavaType;
    }
.end annotation


# static fields
.field static final MESSAGE_SET_ITEM:I = 0x1

.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE:I = 0x3

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID:I = 0x2

.field static final MESSAGE_SET_TYPE_ID_TAG:I

.field static final TAG_TYPE_BITS:I = 0x3

.field static final TAG_TYPE_MASK:I = 0x7

.field public static final WIRETYPE_END_GROUP:I = 0x4

.field public static final WIRETYPE_FIXED32:I = 0x5

.field public static final WIRETYPE_FIXED64:I = 0x1

.field public static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRETYPE_START_GROUP:I = 0x3

.field public static final WIRETYPE_VARINT:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 165
    nop

    .line 166
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lcom/tds/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    .line 167
    nop

    .line 168
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/tds/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    .line 169
    nop

    .line 170
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lcom/tds/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 171
    nop

    .line 172
    invoke-static {v1, v0}, Lcom/tds/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/tds/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    .line 171
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagFieldNumber(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 67
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static getTagWireType(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 62
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .registers 3
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static readPrimitiveField(Lcom/tds/protobuf/CodedInputStream;Lcom/tds/protobuf/WireFormat$FieldType;Lcom/tds/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;
    .registers 5
    .param p0, "input"    # Lcom/tds/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/tds/protobuf/WireFormat$FieldType;
    .param p2, "utf8Validation"    # Lcom/tds/protobuf/WireFormat$Utf8Validation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/tds/protobuf/WireFormat$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/tds/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_aa

    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :pswitch_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :pswitch_2b
    invoke-virtual {p2, p0}, Lcom/tds/protobuf/WireFormat$Utf8Validation;->readString(Lcom/tds/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_30
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_39
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_42
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_4b
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 233
    :pswitch_54
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_5d
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readBytes()Lcom/tds/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_62
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_6b
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 229
    :pswitch_74
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 228
    :pswitch_7d
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 227
    :pswitch_86
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 226
    :pswitch_8f
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 225
    :pswitch_98
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 224
    :pswitch_a1
    invoke-virtual {p0}, Lcom/tds/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_98
        :pswitch_8f
        :pswitch_86
        :pswitch_7d
        :pswitch_74
        :pswitch_6b
        :pswitch_62
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_30
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method
