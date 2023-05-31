.class final enum Lcom/tds/lz4/LZ4UnsafeUtils;
.super Ljava/lang/Enum;
.source "LZ4UnsafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4UnsafeUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4UnsafeUtils;

.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/lz4/LZ4UnsafeUtils;

    sput-object v0, Lcom/tds/lz4/LZ4UnsafeUtils;->$VALUES:[Lcom/tds/lz4/LZ4UnsafeUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static commonBytes([BIII)I
    .registers 9
    .param p0, "src"    # [B
    .param p1, "ref"    # I
    .param p2, "sOff"    # I
    .param p3, "srcLimit"    # I

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "matchLen":I
    :goto_1
    add-int/lit8 v1, p3, -0x8

    if-gt p2, v1, :cond_3d

    .line 127
    invoke-static {p0, p2}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v1

    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    .line 128
    add-int/lit8 v0, v0, 0x8

    .line 129
    add-int/lit8 p1, p1, 0x8

    .line 130
    add-int/lit8 p2, p2, 0x8

    goto :goto_1

    .line 133
    :cond_18
    sget-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_2c

    .line 134
    invoke-static {p0, p2}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v1

    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    .local v1, "zeroBits":I
    goto :goto_39

    .line 136
    .end local v1    # "zeroBits":I
    :cond_2c
    invoke-static {p0, p2}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v1

    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 138
    .restart local v1    # "zeroBits":I
    :goto_39
    ushr-int/lit8 v2, v1, 0x3

    add-int/2addr v2, v0

    return v2

    .line 141
    .end local v1    # "zeroBits":I
    :cond_3d
    :goto_3d
    if-ge p2, p3, :cond_54

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "ref":I
    .local v1, "ref":I
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result p1

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sOff":I
    .local v2, "sOff":I
    invoke-static {p0, p2}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result p2

    if-ne p1, p2, :cond_52

    .line 142
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p2, v2

    goto :goto_3d

    .line 141
    :cond_52
    move p1, v1

    move p2, v2

    .line 144
    .end local v1    # "ref":I
    .end local v2    # "sOff":I
    .restart local p1    # "ref":I
    .restart local p2    # "sOff":I
    :cond_54
    return v0
.end method

.method static commonBytesBackward([BIIII)I
    .registers 8
    .param p0, "b"    # [B
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "l1"    # I
    .param p4, "l2"    # I

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "count":I
    :goto_1
    if-le p1, p3, :cond_16

    if-le p2, p4, :cond_16

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v1

    add-int/lit8 p2, p2, -0x1

    invoke-static {p0, p2}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v2

    if-ne v1, v2, :cond_16

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_16
    return v0
.end method

.method static encodeSequence([BIIII[BII)I
    .registers 15
    .param p0, "src"    # [B
    .param p1, "anchor"    # I
    .param p2, "matchOff"    # I
    .param p3, "matchRef"    # I
    .param p4, "matchLen"    # I
    .param p5, "dest"    # [B
    .param p6, "dOff"    # I
    .param p7, "destEnd"    # I

    .line 157
    sub-int v0, p2, p1

    .line 158
    .local v0, "runLen":I
    add-int/lit8 v1, p6, 0x1

    .line 161
    .local v1, "dOff":I
    .local p6, "tokenOff":I
    const/16 v2, 0xf

    if-lt v0, v2, :cond_11

    .line 162
    const/16 v3, -0x10

    .line 163
    .local v3, "token":I
    add-int/lit8 v4, v0, -0xf

    invoke-static {v4, p5, v1}, Lcom/tds/lz4/LZ4UnsafeUtils;->writeLen(I[BI)I

    move-result v1

    goto :goto_13

    .line 165
    .end local v3    # "token":I
    :cond_11
    shl-int/lit8 v3, v0, 0x4

    .line 169
    .restart local v3    # "token":I
    :goto_13
    invoke-static {p0, p1, p5, v1, v0}, Lcom/tds/lz4/LZ4UnsafeUtils;->wildArraycopy([BI[BII)V

    .line 170
    add-int/2addr v1, v0

    .line 173
    sub-int v4, p2, p3

    .line 174
    .local v4, "matchDec":I
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dOff":I
    .local v5, "dOff":I
    int-to-byte v6, v4

    aput-byte v6, p5, v1

    .line 175
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "dOff":I
    .restart local v1    # "dOff":I
    ushr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p5, v5

    .line 178
    add-int/lit8 p4, p4, -0x4

    .line 179
    add-int/lit8 v5, v1, 0x6

    ushr-int/lit8 v6, p4, 0x8

    add-int/2addr v5, v6

    if-gt v5, p7, :cond_3e

    .line 182
    if-lt p4, v2, :cond_38

    .line 183
    or-int/2addr v2, v3

    .line 184
    .end local v3    # "token":I
    .local v2, "token":I
    add-int/lit8 v3, p4, -0xf

    invoke-static {v3, p5, v1}, Lcom/tds/lz4/LZ4UnsafeUtils;->writeLen(I[BI)I

    move-result v1

    goto :goto_3a

    .line 186
    .end local v2    # "token":I
    .restart local v3    # "token":I
    :cond_38
    or-int v2, v3, p4

    .line 189
    .end local v3    # "token":I
    .restart local v2    # "token":I
    :goto_3a
    int-to-byte v3, v2

    aput-byte v3, p5, p6

    .line 191
    return v1

    .line 180
    .end local v2    # "token":I
    .restart local v3    # "token":I
    :cond_3e
    new-instance v2, Lcom/tds/lz4/LZ4Exception;

    const-string v5, "maxDestLen is too small"

    invoke-direct {v2, v5}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static lastLiterals([BII[BII)I
    .registers 7
    .param p0, "src"    # [B
    .param p1, "sOff"    # I
    .param p2, "srcLen"    # I
    .param p3, "dest"    # [B
    .param p4, "dOff"    # I
    .param p5, "destEnd"    # I

    .line 203
    invoke-static/range {p0 .. p5}, Lcom/tds/lz4/LZ4SafeUtils;->lastLiterals([BII[BII)I

    move-result v0

    return v0
.end method

.method static readIntEquals([BII)Z
    .registers 5
    .param p0, "src"    # [B
    .param p1, "ref"    # I
    .param p2, "sOff"    # I

    .line 121
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readInt([BI)I

    move-result v0

    invoke-static {p0, p2}, Lcom/tds/util/UnsafeUtils;->readInt([BI)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static readShortLittleEndian([BI)I
    .registers 5
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I

    .line 105
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readShort([BI)S

    move-result v0

    .line 106
    .local v0, "s":S
    sget-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_e

    .line 107
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 109
    :cond_e
    const v1, 0xffff

    and-int/2addr v1, v0

    return v1
.end method

.method static safeArraycopy([BI[BII)V
    .registers 10
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "dest"    # [B
    .param p3, "destOff"    # I
    .param p4, "len"    # I

    .line 38
    and-int/lit8 v0, p4, -0x8

    .line 39
    .local v0, "fastLen":I
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tds/lz4/LZ4UnsafeUtils;->wildArraycopy([BI[BII)V

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    and-int/lit8 v2, p4, 0x7

    .local v2, "slowLen":I
    :goto_8
    if-ge v1, v2, :cond_1a

    .line 41
    add-int v3, p3, v0

    add-int/2addr v3, v1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    invoke-static {p0, v4}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v4

    invoke-static {p2, v3, v4}, Lcom/tds/util/UnsafeUtils;->writeByte([BIB)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 43
    .end local v1    # "i":I
    .end local v2    # "slowLen":I
    :cond_1a
    return-void
.end method

.method static safeIncrementalCopy([BIII)V
    .registers 7
    .param p0, "dest"    # [B
    .param p1, "matchOff"    # I
    .param p2, "dOff"    # I
    .param p3, "matchLen"    # I

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_19

    .line 99
    add-int v1, p2, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p0, v1

    .line 100
    add-int v1, p2, v0

    add-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/tds/util/UnsafeUtils;->writeByte([BIB)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4UnsafeUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/tds/lz4/LZ4UnsafeUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4UnsafeUtils;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4UnsafeUtils;
    .registers 1

    .line 34
    sget-object v0, Lcom/tds/lz4/LZ4UnsafeUtils;->$VALUES:[Lcom/tds/lz4/LZ4UnsafeUtils;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4UnsafeUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4UnsafeUtils;

    return-object v0
.end method

.method static wildArraycopy([BI[BII)V
    .registers 9
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "dest"    # [B
    .param p3, "destOff"    # I
    .param p4, "len"    # I

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_11

    .line 47
    add-int v1, p3, v0

    add-int v2, p1, v0

    invoke-static {p0, v2}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v2

    invoke-static {p2, v1, v2, v3}, Lcom/tds/util/UnsafeUtils;->writeLong([BIJ)V

    .line 46
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 49
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method static wildIncrementalCopy([BIII)V
    .registers 8
    .param p0, "dest"    # [B
    .param p1, "matchOff"    # I
    .param p2, "dOff"    # I
    .param p3, "matchCopyEnd"    # I

    .line 52
    sub-int v0, p2, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3c

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_16

    .line 54
    add-int v2, p2, v0

    add-int v3, p1, v0

    invoke-static {p0, v3}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/tds/util/UnsafeUtils;->writeByte([BIB)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 56
    .end local v0    # "i":I
    :cond_16
    add-int/lit8 p2, p2, 0x4

    .line 57
    add-int/lit8 p1, p1, 0x4

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "dec":I
    nop

    .line 60
    sub-int v2, p2, p1

    packed-switch v2, :pswitch_data_5e

    :pswitch_21
    goto :goto_32

    .line 78
    :pswitch_22
    const/4 v0, 0x3

    .line 79
    goto :goto_32

    .line 75
    :pswitch_24
    const/4 v0, 0x2

    .line 76
    goto :goto_32

    .line 72
    :pswitch_26
    const/4 v0, 0x1

    .line 73
    goto :goto_32

    .line 68
    :pswitch_28
    add-int/lit8 p1, p1, -0x3

    .line 69
    const/4 v0, -0x1

    .line 70
    goto :goto_32

    .line 65
    :pswitch_2c
    add-int/lit8 p1, p1, -0x2

    .line 66
    goto :goto_32

    .line 62
    :pswitch_2f
    add-int/lit8 p1, p1, -0x3

    .line 63
    nop

    .line 83
    :goto_32
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readInt([BI)I

    move-result v2

    invoke-static {p0, p2, v2}, Lcom/tds/util/UnsafeUtils;->writeInt([BII)V

    .line 84
    add-int/2addr p2, v1

    .line 85
    sub-int/2addr p1, v0

    .end local v0    # "dec":I
    goto :goto_4d

    .line 86
    :cond_3c
    sub-int v0, p2, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4d

    .line 87
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v0

    invoke-static {p0, p2, v0, v1}, Lcom/tds/util/UnsafeUtils;->writeLong([BIJ)V

    .line 88
    sub-int v0, p2, p1

    add-int/2addr p2, v0

    goto :goto_4e

    .line 86
    :cond_4d
    :goto_4d
    nop

    .line 90
    :goto_4e
    if-ge p2, p3, :cond_5c

    .line 91
    invoke-static {p0, p1}, Lcom/tds/util/UnsafeUtils;->readLong([BI)J

    move-result-wide v0

    invoke-static {p0, p2, v0, v1}, Lcom/tds/util/UnsafeUtils;->writeLong([BIJ)V

    .line 92
    add-int/lit8 p2, p2, 0x8

    .line 93
    add-int/lit8 p1, p1, 0x8

    goto :goto_4e

    .line 95
    :cond_5c
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_28
        :pswitch_21
        :pswitch_26
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method

.method static writeLen(I[BI)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "dest"    # [B
    .param p2, "dOff"    # I

    .line 148
    :goto_0
    const/16 v0, 0xff

    if-lt p0, v0, :cond_d

    .line 149
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "dOff":I
    .local v1, "dOff":I
    invoke-static {p1, p2, v0}, Lcom/tds/util/UnsafeUtils;->writeByte([BII)V

    .line 150
    add-int/lit16 p0, p0, -0xff

    move p2, v1

    goto :goto_0

    .line 152
    .end local v1    # "dOff":I
    .restart local p2    # "dOff":I
    :cond_d
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dOff":I
    .local v0, "dOff":I
    invoke-static {p1, p2, p0}, Lcom/tds/util/UnsafeUtils;->writeByte([BII)V

    .line 153
    return v0
.end method

.method static writeShortLittleEndian([BII)V
    .registers 6
    .param p0, "dest"    # [B
    .param p1, "destOff"    # I
    .param p2, "value"    # I

    .line 113
    int-to-short v0, p2

    .line 114
    .local v0, "s":S
    sget-object v1, Lcom/tds/util/Utils;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_b

    .line 115
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 117
    :cond_b
    invoke-static {p0, p1, v0}, Lcom/tds/util/UnsafeUtils;->writeShort([BIS)V

    .line 118
    return-void
.end method
