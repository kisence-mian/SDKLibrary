.class final enum Lcom/tds/lz4/LZ4ByteBufferUtils;
.super Ljava/lang/Enum;
.source "LZ4ByteBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/lz4/LZ4ByteBufferUtils$Match;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4ByteBufferUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4ByteBufferUtils;

.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/lz4/LZ4ByteBufferUtils;

    sput-object v0, Lcom/tds/lz4/LZ4ByteBufferUtils;->$VALUES:[Lcom/tds/lz4/LZ4ByteBufferUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method static commonBytes(Ljava/nio/ByteBuffer;III)I
    .registers 9
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "ref"    # I
    .param p2, "sOff"    # I
    .param p3, "srcLimit"    # I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "matchLen":I
    :goto_1
    add-int/lit8 v1, p3, -0x8

    if-gt p2, v1, :cond_3f

    .line 101
    invoke-static {p0, p2}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    .line 102
    add-int/lit8 v0, v0, 0x8

    .line 103
    add-int/lit8 p1, p1, 0x8

    .line 104
    add-int/lit8 p2, p2, 0x8

    goto :goto_1

    .line 107
    :cond_18
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_2e

    .line 108
    invoke-static {p0, p2}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    .local v1, "zeroBits":I
    goto :goto_3b

    .line 110
    .end local v1    # "zeroBits":I
    :cond_2e
    invoke-static {p0, p2}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 112
    .restart local v1    # "zeroBits":I
    :goto_3b
    ushr-int/lit8 v2, v1, 0x3

    add-int/2addr v2, v0

    return v2

    .line 115
    .end local v1    # "zeroBits":I
    :cond_3f
    :goto_3f
    if-ge p2, p3, :cond_56

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "ref":I
    .local v1, "ref":I
    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result p1

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sOff":I
    .local v2, "sOff":I
    invoke-static {p0, p2}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result p2

    if-ne p1, p2, :cond_54

    .line 116
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p2, v2

    goto :goto_3f

    .line 115
    :cond_54
    move p1, v1

    move p2, v2

    .line 118
    .end local v1    # "ref":I
    .end local v2    # "sOff":I
    .restart local p1    # "ref":I
    .restart local p2    # "sOff":I
    :cond_56
    return v0
.end method

.method static commonBytesBackward(Ljava/nio/ByteBuffer;IIII)I
    .registers 8
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "l1"    # I
    .param p4, "l2"    # I

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "count":I
    :goto_1
    if-le p1, p3, :cond_16

    if-le p2, p4, :cond_16

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v1, v2, :cond_16

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_16
    return v0
.end method

.method static copyTo(Lcom/tds/lz4/LZ4ByteBufferUtils$Match;Lcom/tds/lz4/LZ4ByteBufferUtils$Match;)V
    .registers 3
    .param p0, "m1"    # Lcom/tds/lz4/LZ4ByteBufferUtils$Match;
    .param p1, "m2"    # Lcom/tds/lz4/LZ4ByteBufferUtils$Match;

    .line 232
    iget v0, p0, Lcom/tds/lz4/LZ4ByteBufferUtils$Match;->len:I

    iput v0, p1, Lcom/tds/lz4/LZ4ByteBufferUtils$Match;->len:I

    .line 233
    iget v0, p0, Lcom/tds/lz4/LZ4ByteBufferUtils$Match;->start:I

    iput v0, p1, Lcom/tds/lz4/LZ4ByteBufferUtils$Match;->start:I

    .line 234
    iget v0, p0, Lcom/tds/lz4/LZ4ByteBufferUtils$Match;->ref:I

    iput v0, p1, Lcom/tds/lz4/LZ4ByteBufferUtils$Match;->ref:I

    .line 235
    return-void
.end method

.method static encodeSequence(Ljava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;II)I
    .registers 16
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "anchor"    # I
    .param p2, "matchOff"    # I
    .param p3, "matchRef"    # I
    .param p4, "matchLen"    # I
    .param p5, "dest"    # Ljava/nio/ByteBuffer;
    .param p6, "dOff"    # I
    .param p7, "destEnd"    # I

    .line 147
    sub-int v0, p2, p1

    .line 148
    .local v0, "runLen":I
    add-int/lit8 v1, p6, 0x1

    .line 150
    .local v1, "dOff":I
    .local p6, "tokenOff":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v3, v0, 0x8

    add-int/2addr v2, v3

    const-string v3, "maxDestLen is too small"

    if-gt v2, p7, :cond_52

    .line 155
    const/16 v2, 0xf

    if-lt v0, v2, :cond_1c

    .line 156
    const/16 v4, -0x10

    .line 157
    .local v4, "token":I
    add-int/lit8 v5, v0, -0xf

    invoke-static {v5, p5, v1}, Lcom/tds/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_1e

    .line 159
    .end local v4    # "token":I
    :cond_1c
    shl-int/lit8 v4, v0, 0x4

    .line 163
    .restart local v4    # "token":I
    :goto_1e
    invoke-static {p0, p1, p5, v1, v0}, Lcom/tds/lz4/LZ4ByteBufferUtils;->wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 164
    add-int/2addr v1, v0

    .line 167
    sub-int v5, p2, p3

    .line 168
    .local v5, "matchDec":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dOff":I
    .local v6, "dOff":I
    int-to-byte v7, v5

    invoke-virtual {p5, v1, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 169
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "dOff":I
    .restart local v1    # "dOff":I
    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    invoke-virtual {p5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 172
    add-int/lit8 p4, p4, -0x4

    .line 173
    add-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v7, p4, 0x8

    add-int/2addr v6, v7

    if-gt v6, p7, :cond_4c

    .line 176
    if-lt p4, v2, :cond_45

    .line 177
    or-int/2addr v2, v4

    .line 178
    .end local v4    # "token":I
    .local v2, "token":I
    add-int/lit8 v3, p4, -0xf

    invoke-static {v3, p5, v1}, Lcom/tds/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_47

    .line 180
    .end local v2    # "token":I
    .restart local v4    # "token":I
    :cond_45
    or-int v2, v4, p4

    .line 183
    .end local v4    # "token":I
    .restart local v2    # "token":I
    :goto_47
    int-to-byte v3, v2

    invoke-virtual {p5, p6, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 185
    return v1

    .line 174
    .end local v2    # "token":I
    .restart local v4    # "token":I
    :cond_4c
    new-instance v2, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v2, v3}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v4    # "token":I
    .end local v5    # "matchDec":I
    :cond_52
    new-instance v2, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v2, v3}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static hash(Ljava/nio/ByteBuffer;I)I
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 35
    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v0

    return v0
.end method

.method static hash64k(Ljava/nio/ByteBuffer;I)I
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 39
    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v0

    return v0
.end method

.method static lastLiterals(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 10
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sOff"    # I
    .param p2, "srcLen"    # I
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .param p4, "dOff"    # I
    .param p5, "destEnd"    # I

    .line 189
    move v0, p2

    .line 191
    .local v0, "runLen":I
    add-int v1, p4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit16 v2, v0, 0xff

    const/16 v3, 0xf

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    if-gt v1, p5, :cond_2d

    .line 195
    if-lt v0, v3, :cond_1f

    .line 196
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "dOff":I
    .local v1, "dOff":I
    const/16 v2, -0x10

    invoke-virtual {p3, p4, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 197
    add-int/lit8 p4, v0, -0xf

    invoke-static {p4, p3, v1}, Lcom/tds/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result p4

    .end local v1    # "dOff":I
    .restart local p4    # "dOff":I
    goto :goto_28

    .line 199
    :cond_1f
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "dOff":I
    .restart local v1    # "dOff":I
    shl-int/lit8 v2, v0, 0x4

    int-to-byte v2, v2

    invoke-virtual {p3, p4, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move p4, v1

    .line 202
    .end local v1    # "dOff":I
    .restart local p4    # "dOff":I
    :goto_28
    invoke-static {p0, p1, p3, p4, v0}, Lcom/tds/lz4/LZ4ByteBufferUtils;->safeArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 203
    add-int/2addr p4, v0

    .line 205
    return p4

    .line 192
    :cond_2d
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1}, Lcom/tds/lz4/LZ4Exception;-><init>()V

    throw v1
.end method

.method static readIntEquals(Ljava/nio/ByteBuffer;II)Z
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 43
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static safeArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .registers 8
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sOff"    # I
    .param p2, "dest"    # Ljava/nio/ByteBuffer;
    .param p3, "dOff"    # I
    .param p4, "len"    # I

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_11

    .line 131
    add-int v1, p3, v0

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method static safeIncrementalCopy(Ljava/nio/ByteBuffer;III)V
    .registers 7
    .param p0, "dest"    # Ljava/nio/ByteBuffer;
    .param p1, "matchOff"    # I
    .param p2, "dOff"    # I
    .param p3, "matchLen"    # I

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_11

    .line 48
    add-int v1, p2, v0

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4ByteBufferUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lcom/tds/lz4/LZ4ByteBufferUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4ByteBufferUtils;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4ByteBufferUtils;
    .registers 1

    .line 32
    sget-object v0, Lcom/tds/lz4/LZ4ByteBufferUtils;->$VALUES:[Lcom/tds/lz4/LZ4ByteBufferUtils;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4ByteBufferUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4ByteBufferUtils;

    return-object v0
.end method

.method static wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .registers 9
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sOff"    # I
    .param p2, "dest"    # Ljava/nio/ByteBuffer;
    .param p3, "dOff"    # I
    .param p4, "len"    # I

    .line 136
    nop

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p4, :cond_2c

    .line 139
    add-int v1, p3, v0

    add-int v2, p1, v0

    :try_start_8
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_f} :catch_12

    .line 138
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 141
    .end local v0    # "i":I
    :catch_12
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed input at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2c
    nop

    .line 144
    return-void
.end method

.method static wildIncrementalCopy(Ljava/nio/ByteBuffer;III)V
    .registers 8
    .param p0, "dest"    # Ljava/nio/ByteBuffer;
    .param p1, "matchOff"    # I
    .param p2, "dOff"    # I
    .param p3, "matchCopyEnd"    # I

    .line 53
    sub-int v0, p2, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3c

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_16

    .line 55
    add-int v2, p2, v0

    add-int v3, p1, v0

    invoke-static {p0, v3}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 57
    .end local v0    # "i":I
    :cond_16
    add-int/lit8 p2, p2, 0x4

    .line 58
    add-int/lit8 p1, p1, 0x4

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "dec":I
    nop

    .line 61
    sub-int v2, p2, p1

    packed-switch v2, :pswitch_data_5e

    :pswitch_21
    goto :goto_32

    .line 79
    :pswitch_22
    const/4 v0, 0x3

    .line 80
    goto :goto_32

    .line 76
    :pswitch_24
    const/4 v0, 0x2

    .line 77
    goto :goto_32

    .line 73
    :pswitch_26
    const/4 v0, 0x1

    .line 74
    goto :goto_32

    .line 69
    :pswitch_28
    add-int/lit8 p1, p1, -0x3

    .line 70
    const/4 v0, -0x1

    .line 71
    goto :goto_32

    .line 66
    :pswitch_2c
    add-int/lit8 p1, p1, -0x2

    .line 67
    goto :goto_32

    .line 63
    :pswitch_2f
    add-int/lit8 p1, p1, -0x3

    .line 64
    nop

    .line 84
    :goto_32
    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-static {p0, p2, v2}, Lcom/tds/util/ByteBufferUtils;->writeInt(Ljava/nio/ByteBuffer;II)V

    .line 85
    add-int/2addr p2, v1

    .line 86
    sub-int/2addr p1, v0

    .end local v0    # "dec":I
    goto :goto_4d

    .line 87
    :cond_3c
    sub-int v0, p2, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4d

    .line 88
    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    invoke-static {p0, p2, v0, v1}, Lcom/tds/util/ByteBufferUtils;->writeLong(Ljava/nio/ByteBuffer;IJ)V

    .line 89
    sub-int v0, p2, p1

    add-int/2addr p2, v0

    goto :goto_4e

    .line 87
    :cond_4d
    :goto_4d
    nop

    .line 91
    :goto_4e
    if-ge p2, p3, :cond_5c

    .line 92
    invoke-static {p0, p1}, Lcom/tds/util/ByteBufferUtils;->readLong(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    invoke-static {p0, p2, v0, v1}, Lcom/tds/util/ByteBufferUtils;->writeLong(Ljava/nio/ByteBuffer;IJ)V

    .line 93
    add-int/lit8 p2, p2, 0x8

    .line 94
    add-int/lit8 p1, p1, 0x8

    goto :goto_4e

    .line 96
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

.method static writeLen(ILjava/nio/ByteBuffer;I)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "dest"    # Ljava/nio/ByteBuffer;
    .param p2, "dOff"    # I

    .line 209
    :goto_0
    const/16 v0, 0xff

    if-lt p0, v0, :cond_e

    .line 210
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dOff":I
    .local v0, "dOff":I
    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 211
    add-int/lit16 p0, p0, -0xff

    move p2, v0

    goto :goto_0

    .line 213
    .end local v0    # "dOff":I
    .restart local p2    # "dOff":I
    :cond_e
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dOff":I
    .restart local v0    # "dOff":I
    int-to-byte v1, p0

    invoke-virtual {p1, p2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 214
    return v0
.end method
