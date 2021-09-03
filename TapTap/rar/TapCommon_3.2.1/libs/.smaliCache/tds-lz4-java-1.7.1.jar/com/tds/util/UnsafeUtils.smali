.class public final enum Lcom/tds/util/UnsafeUtils;
.super Ljava/lang/Enum;
.source "UnsafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/util/UnsafeUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/util/UnsafeUtils;

.field private static final BYTE_ARRAY_OFFSET:J

.field private static final BYTE_ARRAY_SCALE:I

.field private static final INT_ARRAY_OFFSET:J

.field private static final INT_ARRAY_SCALE:I

.field private static final SHORT_ARRAY_OFFSET:J

.field private static final SHORT_ARRAY_SCALE:I

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 24
    const-class v0, [S

    const-class v1, [I

    const-class v2, [B

    const-string v3, "Cannot access Unsafe"

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/tds/util/UnsafeUtils;

    sput-object v4, Lcom/tds/util/UnsafeUtils;->$VALUES:[Lcom/tds/util/UnsafeUtils;

    .line 37
    :try_start_d
    const-class v4, Lsun/misc/Unsafe;

    const-string v5, "theUnsafe"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 38
    .local v4, "theUnsafe":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 39
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/misc/Unsafe;

    sput-object v5, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 40
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    .line 41
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_SCALE:I

    .line 42
    invoke-virtual {v5, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    int-to-long v6, v2

    sput-wide v6, Lcom/tds/util/UnsafeUtils;->INT_ARRAY_OFFSET:J

    .line 43
    invoke-virtual {v5, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Lcom/tds/util/UnsafeUtils;->INT_ARRAY_SCALE:I

    .line 44
    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/tds/util/UnsafeUtils;->SHORT_ARRAY_OFFSET:J

    .line 45
    invoke-virtual {v5, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/tds/util/UnsafeUtils;->SHORT_ARRAY_SCALE:I
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_49} :catch_59
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_49} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_49} :catch_4b

    .line 52
    .end local v4    # "theUnsafe":Ljava/lang/reflect/Field;
    nop

    .line 53
    return-void

    .line 50
    :catch_4b
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_52
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_59
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static checkLength(I)V
    .registers 1
    .param p0, "len"    # I

    .line 64
    invoke-static {p0}, Lcom/tds/util/SafeUtils;->checkLength(I)V

    .line 65
    return-void
.end method

.method public static checkRange([BI)V
    .registers 2
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 56
    invoke-static {p0, p1}, Lcom/tds/util/SafeUtils;->checkRange([BI)V

    .line 57
    return-void
.end method

.method public static checkRange([BII)V
    .registers 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 60
    invoke-static {p0, p1, p2}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 61
    return-void
.end method

.method public static readByte([BI)B
    .registers 7
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 68
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    sget v3, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public static readInt([BI)I
    .registers 7
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 96
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public static readInt([II)I
    .registers 7
    .param p0, "src"    # [I
    .param p1, "srcOff"    # I

    .line 133
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->INT_ARRAY_OFFSET:J

    sget v3, Lcom/tds/util/UnsafeUtils;->INT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public static readIntLE([BI)I
    .registers 5
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 100
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readInt([BI)I

    move-result v0

    .line 101
    .local v0, "i":I
    sget-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_e

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 104
    :cond_e
    return v0
.end method

.method public static readLong([BI)J
    .registers 7
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 80
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLongLE([BI)J
    .registers 6
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 84
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v0

    .line 85
    .local v0, "i":J
    sget-object v2, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_e

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 88
    :cond_e
    return-wide v0
.end method

.method public static readShort([SI)I
    .registers 7
    .param p0, "src"    # [S
    .param p1, "srcOff"    # I

    .line 141
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->SHORT_ARRAY_OFFSET:J

    sget v3, Lcom/tds/util/UnsafeUtils;->SHORT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static readShort([BI)S
    .registers 7
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 112
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method public static readShortLE([BI)I
    .registers 5
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 116
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readShort([BI)S

    move-result v0

    .line 117
    .local v0, "s":S
    sget-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_e

    .line 118
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 120
    :cond_e
    const v1, 0xffff

    and-int/2addr v1, v0

    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/util/UnsafeUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/tds/util/UnsafeUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/util/UnsafeUtils;

    return-object v0
.end method

.method public static values()[Lcom/tds/util/UnsafeUtils;
    .registers 1

    .line 24
    sget-object v0, Lcom/tds/util/UnsafeUtils;->$VALUES:[Lcom/tds/util/UnsafeUtils;

    invoke-virtual {v0}, [Lcom/tds/util/UnsafeUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/util/UnsafeUtils;

    return-object v0
.end method

.method public static writeByte([BIB)V
    .registers 8
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "value"    # B

    .line 72
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    sget v3, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 73
    return-void
.end method

.method public static writeByte([BII)V
    .registers 4
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "value"    # I

    .line 76
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lcom/tds/util/UnsafeUtils;->writeByte([BIB)V

    .line 77
    return-void
.end method

.method public static writeInt([BII)V
    .registers 8
    .param p0, "dest"    # [B
    .param p1, "destOff"    # I
    .param p2, "value"    # I

    .line 108
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 109
    return-void
.end method

.method public static writeInt([III)V
    .registers 8
    .param p0, "dest"    # [I
    .param p1, "destOff"    # I
    .param p2, "value"    # I

    .line 137
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->INT_ARRAY_OFFSET:J

    sget v3, Lcom/tds/util/UnsafeUtils;->INT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 138
    return-void
.end method

.method public static writeLong([BIJ)V
    .registers 10
    .param p0, "dest"    # [B
    .param p1, "destOff"    # I
    .param p2, "value"    # J

    .line 92
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 93
    return-void
.end method

.method public static writeShort([BIS)V
    .registers 8
    .param p0, "dest"    # [B
    .param p1, "destOff"    # I
    .param p2, "value"    # S

    .line 124
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->BYTE_ARRAY_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 125
    return-void
.end method

.method public static writeShort([SII)V
    .registers 8
    .param p0, "dest"    # [S
    .param p1, "destOff"    # I
    .param p2, "value"    # I

    .line 145
    sget-object v0, Lcom/tds/util/UnsafeUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/tds/util/UnsafeUtils;->SHORT_ARRAY_OFFSET:J

    sget v3, Lcom/tds/util/UnsafeUtils;->SHORT_ARRAY_SCALE:I

    mul-int/2addr v3, p1

    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-short v3, p2

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 146
    return-void
.end method

.method public static writeShortLE([BII)V
    .registers 5
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "v"    # I

    .line 128
    int-to-byte v0, p2

    invoke-static {p0, p1, v0}, Lcom/tds/util/UnsafeUtils;->writeByte([BIB)V

    .line 129
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lcom/tds/util/UnsafeUtils;->writeByte([BIB)V

    .line 130
    return-void
.end method
