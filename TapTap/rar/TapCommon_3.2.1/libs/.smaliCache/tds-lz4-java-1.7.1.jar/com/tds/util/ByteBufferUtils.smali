.class public final enum Lcom/tds/util/ByteBufferUtils;
.super Ljava/lang/Enum;
.source "ByteBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/util/ByteBufferUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/util/ByteBufferUtils;

.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/util/ByteBufferUtils;

    sput-object v0, Lcom/tds/util/ByteBufferUtils;->$VALUES:[Lcom/tds/util/ByteBufferUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static checkNotReadOnly(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_7

    .line 87
    return-void

    .line 85
    :cond_7
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public static checkRange(Ljava/nio/ByteBuffer;I)V
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "off"    # I

    .line 19
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 22
    return-void

    .line 20
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static checkRange(Ljava/nio/ByteBuffer;II)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 11
    invoke-static {p2}, Lcom/tds/util/SafeUtils;->checkLength(I)V

    .line 12
    if-lez p2, :cond_f

    .line 13
    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;I)V

    .line 14
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;I)V

    .line 16
    :cond_f
    return-void
.end method

.method public static inLittleEndianOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    return-object p0

    .line 28
    :cond_d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    return-object p0

    .line 36
    :cond_d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static readByte(Ljava/nio/ByteBuffer;I)B
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 41
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public static readInt(Ljava/nio/ByteBuffer;I)I
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 50
    nop

    .line 51
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static readIntLE(Ljava/nio/ByteBuffer;I)I
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 55
    nop

    .line 56
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static readLong(Ljava/nio/ByteBuffer;I)J
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 65
    nop

    .line 66
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLongLE(Ljava/nio/ByteBuffer;I)J
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 70
    nop

    .line 71
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readShortLE(Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 90
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/util/ByteBufferUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/tds/util/ByteBufferUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/util/ByteBufferUtils;

    return-object v0
.end method

.method public static values()[Lcom/tds/util/ByteBufferUtils;
    .registers 1

    .line 7
    sget-object v0, Lcom/tds/util/ByteBufferUtils;->$VALUES:[Lcom/tds/util/ByteBufferUtils;

    invoke-virtual {v0}, [Lcom/tds/util/ByteBufferUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/util/ByteBufferUtils;

    return-object v0
.end method

.method public static writeByte(Ljava/nio/ByteBuffer;II)V
    .registers 4
    .param p0, "dest"    # Ljava/nio/ByteBuffer;
    .param p1, "off"    # I
    .param p2, "i"    # I

    .line 75
    int-to-byte v0, p2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 76
    return-void
.end method

.method public static writeInt(Ljava/nio/ByteBuffer;II)V
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "v"    # I

    .line 45
    nop

    .line 46
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 47
    return-void
.end method

.method public static writeLong(Ljava/nio/ByteBuffer;IJ)V
    .registers 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "v"    # J

    .line 60
    nop

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 62
    return-void
.end method

.method public static writeShortLE(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p0, "dest"    # Ljava/nio/ByteBuffer;
    .param p1, "off"    # I
    .param p2, "i"    # I

    .line 79
    int-to-byte v0, p2

    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 80
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 81
    return-void
.end method
