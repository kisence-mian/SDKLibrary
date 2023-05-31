.class final enum Lcom/tds/lz4/LZ4SafeUtils;
.super Ljava/lang/Enum;
.source "LZ4SafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/lz4/LZ4SafeUtils$Match;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/lz4/LZ4SafeUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/lz4/LZ4SafeUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tds/lz4/LZ4SafeUtils;

    sput-object v0, Lcom/tds/lz4/LZ4SafeUtils;->$VALUES:[Lcom/tds/lz4/LZ4SafeUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method static commonBytes([BIII)I
    .registers 7
    .param p0, "b"    # [B
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "limit"    # I

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "count":I
    :goto_1
    if-ge p2, p3, :cond_14

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "o1":I
    .local v1, "o1":I
    aget-byte p1, p0, p1

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "o2":I
    .local v2, "o2":I
    aget-byte p2, p0, p2

    if-ne p1, p2, :cond_12

    .line 61
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p2, v2

    goto :goto_1

    .line 60
    :cond_12
    move p1, v1

    move p2, v2

    .line 63
    .end local v1    # "o1":I
    .end local v2    # "o2":I
    .restart local p1    # "o1":I
    .restart local p2    # "o2":I
    :cond_14
    return v0
.end method

.method static commonBytesBackward([BIIII)I
    .registers 8
    .param p0, "b"    # [B
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "l1"    # I
    .param p4, "l2"    # I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "count":I
    :goto_1
    if-le p1, p3, :cond_12

    if-le p2, p4, :cond_12

    add-int/lit8 p1, p1, -0x1

    aget-byte v1, p0, p1

    add-int/lit8 p2, p2, -0x1

    aget-byte v2, p0, p2

    if-ne v1, v2, :cond_12

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_12
    return v0
.end method

.method static copy8Bytes([BI[BI)V
    .registers 7
    .param p0, "src"    # [B
    .param p1, "sOff"    # I
    .param p2, "dest"    # [B
    .param p3, "dOff"    # I

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_10

    .line 54
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method static copyTo(Lcom/tds/lz4/LZ4SafeUtils$Match;Lcom/tds/lz4/LZ4SafeUtils$Match;)V
    .registers 3
    .param p0, "m1"    # Lcom/tds/lz4/LZ4SafeUtils$Match;
    .param p1, "m2"    # Lcom/tds/lz4/LZ4SafeUtils$Match;

    .line 174
    iget v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->len:I

    iput v0, p1, Lcom/tds/lz4/LZ4SafeUtils$Match;->len:I

    .line 175
    iget v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->start:I

    iput v0, p1, Lcom/tds/lz4/LZ4SafeUtils$Match;->start:I

    .line 176
    iget v0, p0, Lcom/tds/lz4/LZ4SafeUtils$Match;->ref:I

    iput v0, p1, Lcom/tds/lz4/LZ4SafeUtils$Match;->ref:I

    .line 177
    return-void
.end method

.method static encodeSequence([BIIII[BII)I
    .registers 16
    .param p0, "src"    # [B
    .param p1, "anchor"    # I
    .param p2, "matchOff"    # I
    .param p3, "matchRef"    # I
    .param p4, "matchLen"    # I
    .param p5, "dest"    # [B
    .param p6, "dOff"    # I
    .param p7, "destEnd"    # I

    .line 89
    sub-int v0, p2, p1

    .line 90
    .local v0, "runLen":I
    add-int/lit8 v1, p6, 0x1

    .line 92
    .local v1, "dOff":I
    .local p6, "tokenOff":I
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v3, v0, 0x8

    add-int/2addr v2, v3

    const-string v3, "maxDestLen is too small"

    if-gt v2, p7, :cond_4f

    .line 97
    const/16 v2, 0xf

    if-lt v0, v2, :cond_1c

    .line 98
    const/16 v4, -0x10

    .line 99
    .local v4, "token":I
    add-int/lit8 v5, v0, -0xf

    invoke-static {v5, p5, v1}, Lcom/tds/lz4/LZ4SafeUtils;->writeLen(I[BI)I

    move-result v1

    goto :goto_1e

    .line 101
    .end local v4    # "token":I
    :cond_1c
    shl-int/lit8 v4, v0, 0x4

    .line 105
    .restart local v4    # "token":I
    :goto_1e
    invoke-static {p0, p1, p5, v1, v0}, Lcom/tds/lz4/LZ4SafeUtils;->wildArraycopy([BI[BII)V

    .line 106
    add-int/2addr v1, v0

    .line 109
    sub-int v5, p2, p3

    .line 110
    .local v5, "matchDec":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dOff":I
    .local v6, "dOff":I
    int-to-byte v7, v5

    aput-byte v7, p5, v1

    .line 111
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "dOff":I
    .restart local v1    # "dOff":I
    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, p5, v6

    .line 114
    add-int/lit8 p4, p4, -0x4

    .line 115
    add-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v7, p4, 0x8

    add-int/2addr v6, v7

    if-gt v6, p7, :cond_49

    .line 118
    if-lt p4, v2, :cond_43

    .line 119
    or-int/2addr v2, v4

    .line 120
    .end local v4    # "token":I
    .local v2, "token":I
    add-int/lit8 v3, p4, -0xf

    invoke-static {v3, p5, v1}, Lcom/tds/lz4/LZ4SafeUtils;->writeLen(I[BI)I

    move-result v1

    goto :goto_45

    .line 122
    .end local v2    # "token":I
    .restart local v4    # "token":I
    :cond_43
    or-int v2, v4, p4

    .line 125
    .end local v4    # "token":I
    .restart local v2    # "token":I
    :goto_45
    int-to-byte v3, v2

    aput-byte v3, p5, p6

    .line 127
    return v1

    .line 116
    .end local v2    # "token":I
    .restart local v4    # "token":I
    :cond_49
    new-instance v2, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v2, v3}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v4    # "token":I
    .end local v5    # "matchDec":I
    :cond_4f
    new-instance v2, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v2, v3}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static hash([BI)I
    .registers 3
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 27
    invoke-static {p0, p1}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v0

    invoke-static {v0}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v0

    return v0
.end method

.method static hash64k([BI)I
    .registers 3
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 31
    invoke-static {p0, p1}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v0

    invoke-static {v0}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v0

    return v0
.end method

.method static lastLiterals([BII[BII)I
    .registers 10
    .param p0, "src"    # [B
    .param p1, "sOff"    # I
    .param p2, "srcLen"    # I
    .param p3, "dest"    # [B
    .param p4, "dOff"    # I
    .param p5, "destEnd"    # I

    .line 131
    move v0, p2

    .line 133
    .local v0, "runLen":I
    add-int v1, p4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit16 v2, v0, 0xff

    const/16 v3, 0xf

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    if-gt v1, p5, :cond_2b

    .line 137
    if-lt v0, v3, :cond_1e

    .line 138
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "dOff":I
    .local v1, "dOff":I
    const/16 v2, -0x10

    aput-byte v2, p3, p4

    .line 139
    add-int/lit8 p4, v0, -0xf

    invoke-static {p4, p3, v1}, Lcom/tds/lz4/LZ4SafeUtils;->writeLen(I[BI)I

    move-result p4

    .end local v1    # "dOff":I
    .restart local p4    # "dOff":I
    goto :goto_26

    .line 141
    :cond_1e
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "dOff":I
    .restart local v1    # "dOff":I
    shl-int/lit8 v2, v0, 0x4

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    move p4, v1

    .line 144
    .end local v1    # "dOff":I
    .restart local p4    # "dOff":I
    :goto_26
    invoke-static {p0, p1, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    add-int/2addr p4, v0

    .line 147
    return p4

    .line 134
    :cond_2b
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1}, Lcom/tds/lz4/LZ4Exception;-><init>()V

    throw v1
.end method

.method static readIntEquals([BII)Z
    .registers 5
    .param p0, "buf"    # [B
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 35
    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    if-ne v0, v1, :cond_26

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_26

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_26

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method static safeArraycopy([BI[BII)V
    .registers 5
    .param p0, "src"    # [B
    .param p1, "sOff"    # I
    .param p2, "dest"    # [B
    .param p3, "dOff"    # I
    .param p4, "len"    # I

    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    return-void
.end method

.method static safeIncrementalCopy([BIII)V
    .registers 7
    .param p0, "dest"    # [B
    .param p1, "matchOff"    # I
    .param p2, "dOff"    # I
    .param p3, "matchLen"    # I

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 40
    add-int v1, p2, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p0, v1

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "i":I
    :cond_e
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/lz4/LZ4SafeUtils;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/tds/lz4/LZ4SafeUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/lz4/LZ4SafeUtils;

    return-object v0
.end method

.method public static values()[Lcom/tds/lz4/LZ4SafeUtils;
    .registers 1

    .line 23
    sget-object v0, Lcom/tds/lz4/LZ4SafeUtils;->$VALUES:[Lcom/tds/lz4/LZ4SafeUtils;

    invoke-virtual {v0}, [Lcom/tds/lz4/LZ4SafeUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/lz4/LZ4SafeUtils;

    return-object v0
.end method

.method static wildArraycopy([BI[BII)V
    .registers 9
    .param p0, "src"    # [B
    .param p1, "sOff"    # I
    .param p2, "dest"    # [B
    .param p3, "dOff"    # I
    .param p4, "len"    # I

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_27

    .line 81
    add-int v1, p1, v0

    add-int v2, p3, v0

    :try_start_7
    invoke-static {p0, v1, p2, v2}, Lcom/tds/lz4/LZ4SafeUtils;->copy8Bytes([BI[BI)V
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_a} :catch_d

    .line 80
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    :catch_d
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
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

    .line 85
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_27
    nop

    .line 86
    return-void
.end method

.method static wildIncrementalCopy([BIII)V
    .registers 4
    .param p0, "dest"    # [B
    .param p1, "matchOff"    # I
    .param p2, "dOff"    # I
    .param p3, "matchCopyEnd"    # I

    .line 46
    :goto_0
    invoke-static {p0, p1, p0, p2}, Lcom/tds/lz4/LZ4SafeUtils;->copy8Bytes([BI[BI)V

    .line 47
    add-int/lit8 p1, p1, 0x8

    .line 48
    add-int/lit8 p2, p2, 0x8

    .line 49
    if-lt p2, p3, :cond_a

    .line 50
    return-void

    .line 49
    :cond_a
    goto :goto_0
.end method

.method static writeLen(I[BI)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "dest"    # [B
    .param p2, "dOff"    # I

    .line 151
    :goto_0
    const/16 v0, 0xff

    if-lt p0, v0, :cond_d

    .line 152
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dOff":I
    .local v0, "dOff":I
    const/4 v1, -0x1

    aput-byte v1, p1, p2

    .line 153
    add-int/lit16 p0, p0, -0xff

    move p2, v0

    goto :goto_0

    .line 155
    .end local v0    # "dOff":I
    .restart local p2    # "dOff":I
    :cond_d
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "dOff":I
    .restart local v0    # "dOff":I
    int-to-byte v1, p0

    aput-byte v1, p1, p2

    .line 156
    return v0
.end method
