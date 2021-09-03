.class public final enum Lcom/tds/util/SafeUtils;
.super Ljava/lang/Enum;
.source "SafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/util/SafeUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/util/SafeUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/util/SafeUtils;

    sput-object v0, Lcom/tds/util/SafeUtils;->$VALUES:[Lcom/tds/util/SafeUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static checkLength(I)V
    .registers 3
    .param p0, "len"    # I

    .line 37
    if-ltz p0, :cond_3

    .line 40
    return-void

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lengths must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkRange([BI)V
    .registers 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 23
    if-ltz p1, :cond_6

    array-length v0, p0

    if-ge p1, v0, :cond_6

    .line 26
    return-void

    .line 24
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static checkRange([BII)V
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 29
    invoke-static {p2}, Lcom/tds/util/SafeUtils;->checkLength(I)V

    .line 30
    if-lez p2, :cond_f

    .line 31
    invoke-static {p0, p1}, Lcom/tds/util/SafeUtils;->checkRange([BI)V

    .line 32
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/tds/util/SafeUtils;->checkRange([BI)V

    .line 34
    :cond_f
    return-void
.end method

.method public static readByte([BI)B
    .registers 3
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 43
    aget-byte v0, p0, p1

    return v0
.end method

.method public static readInt([BI)I
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 55
    sget-object v0, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b

    .line 56
    invoke-static {p0, p1}, Lcom/tds/util/SafeUtils;->readIntBE([BI)I

    move-result v0

    return v0

    .line 58
    :cond_b
    invoke-static {p0, p1}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v0

    return v0
.end method

.method public static readInt([II)I
    .registers 3
    .param p0, "buf"    # [I
    .param p1, "off"    # I

    .line 77
    aget v0, p0, p1

    return v0
.end method

.method public static readIntBE([BI)I
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 47
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readIntLE([BI)I
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 51
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static readLongLE([BI)J
    .registers 9
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 63
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readShort([SI)I
    .registers 4
    .param p0, "buf"    # [S
    .param p1, "off"    # I

    .line 93
    aget-short v0, p0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static readShortLE([BI)I
    .registers 4
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 89
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/util/SafeUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/tds/util/SafeUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/util/SafeUtils;

    return-object v0
.end method

.method public static values()[Lcom/tds/util/SafeUtils;
    .registers 1

    .line 19
    sget-object v0, Lcom/tds/util/SafeUtils;->$VALUES:[Lcom/tds/util/SafeUtils;

    invoke-virtual {v0}, [Lcom/tds/util/SafeUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/util/SafeUtils;

    return-object v0
.end method

.method public static writeByte([BII)V
    .registers 4
    .param p0, "dest"    # [B
    .param p1, "off"    # I
    .param p2, "i"    # I

    .line 81
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 82
    return-void
.end method

.method public static writeInt([III)V
    .registers 3
    .param p0, "buf"    # [I
    .param p1, "off"    # I
    .param p2, "v"    # I

    .line 73
    aput p2, p0, p1

    .line 74
    return-void
.end method

.method public static writeShort([SII)V
    .registers 4
    .param p0, "buf"    # [S
    .param p1, "off"    # I
    .param p2, "v"    # I

    .line 85
    int-to-short v0, p2

    aput-short v0, p0, p1

    .line 86
    return-void
.end method

.method public static writeShortLE([BII)V
    .registers 5
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "v"    # I

    .line 68
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "off":I
    .local v0, "off":I
    int-to-byte v1, p2

    aput-byte v1, p0, p1

    .line 69
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "off":I
    .restart local p1    # "off":I
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 70
    return-void
.end method
