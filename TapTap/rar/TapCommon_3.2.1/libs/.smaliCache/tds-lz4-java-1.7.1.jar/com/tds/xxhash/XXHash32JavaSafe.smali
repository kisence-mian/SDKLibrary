.class final Lcom/tds/xxhash/XXHash32JavaSafe;
.super Lcom/tds/xxhash/XXHash32;
.source "XXHash32JavaSafe.java"


# static fields
.field public static final INSTANCE:Lcom/tds/xxhash/XXHash32;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/tds/xxhash/XXHash32JavaSafe;

    invoke-direct {v0}, Lcom/tds/xxhash/XXHash32JavaSafe;-><init>()V

    sput-object v0, Lcom/tds/xxhash/XXHash32JavaSafe;->INSTANCE:Lcom/tds/xxhash/XXHash32;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/tds/xxhash/XXHash32;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/nio/ByteBuffer;III)I
    .registers 16
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # I

    .line 87
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/tds/xxhash/XXHash32JavaSafe;->hash([BIII)I

    move-result v0

    return v0

    .line 90
    :cond_14
    invoke-static {p1, p2, p3}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 91
    invoke-static {p1}, Lcom/tds/util/ByteBufferUtils;->inLittleEndianOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 93
    add-int v0, p2, p3

    .line 96
    .local v0, "end":I
    const v1, 0x165667b1

    const/16 v2, 0x10

    const v3, -0x7a143589

    const v4, -0x61c8864f

    if-lt p3, v2, :cond_87

    .line 97
    add-int/lit8 v2, v0, -0x10

    .line 98
    .local v2, "limit":I
    add-int v5, p4, v4

    add-int/2addr v5, v3

    .line 99
    .local v5, "v1":I
    add-int v6, p4, v3

    .line 100
    .local v6, "v2":I
    add-int/lit8 v7, p4, 0x0

    .line 101
    .local v7, "v3":I
    sub-int v8, p4, v4

    .line 103
    .local v8, "v4":I
    :cond_35
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v5, v9

    .line 104
    const/16 v9, 0xd

    invoke-static {v5, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    .line 105
    mul-int/2addr v5, v4

    .line 106
    add-int/lit8 p2, p2, 0x4

    .line 108
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v6, v10

    .line 109
    invoke-static {v6, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    .line 110
    mul-int/2addr v6, v4

    .line 111
    add-int/lit8 p2, p2, 0x4

    .line 113
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v7, v10

    .line 114
    invoke-static {v7, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    .line 115
    mul-int/2addr v7, v4

    .line 116
    add-int/lit8 p2, p2, 0x4

    .line 118
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    .line 120
    mul-int/2addr v8, v4

    .line 121
    add-int/lit8 p2, p2, 0x4

    .line 122
    if-le p2, v2, :cond_35

    .line 124
    const/4 v9, 0x1

    invoke-static {v5, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    const/4 v10, 0x7

    invoke-static {v6, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0xc

    invoke-static {v7, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0x12

    invoke-static {v8, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    add-int/2addr v9, v10

    .line 125
    .end local v2    # "limit":I
    .end local v5    # "v1":I
    .end local v6    # "v2":I
    .end local v7    # "v3":I
    .end local v8    # "v4":I
    .local v9, "h32":I
    goto :goto_89

    .line 126
    .end local v9    # "h32":I
    :cond_87
    add-int v9, p4, v1

    .line 129
    .restart local v9    # "h32":I
    :goto_89
    add-int/2addr v9, p3

    .line 131
    :goto_8a
    add-int/lit8 v2, v0, -0x4

    const v5, -0x3d4d51c3

    if-gt p2, v2, :cond_a5

    .line 132
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v2

    mul-int/2addr v2, v5

    add-int/2addr v9, v2

    .line 133
    const/16 v2, 0x11

    invoke-static {v9, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    const v5, 0x27d4eb2f

    mul-int v9, v2, v5

    .line 134
    add-int/lit8 p2, p2, 0x4

    goto :goto_8a

    .line 137
    :cond_a5
    :goto_a5
    if-ge p2, v0, :cond_ba

    .line 138
    invoke-static {p1, p2}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    mul-int/2addr v2, v1

    add-int/2addr v9, v2

    .line 139
    const/16 v2, 0xb

    invoke-static {v9, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    mul-int v9, v2, v4

    .line 140
    add-int/lit8 p2, p2, 0x1

    goto :goto_a5

    .line 143
    :cond_ba
    ushr-int/lit8 v1, v9, 0xf

    xor-int/2addr v1, v9

    .line 144
    .end local v9    # "h32":I
    .local v1, "h32":I
    mul-int/2addr v1, v3

    .line 145
    ushr-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    .line 146
    mul-int/2addr v1, v5

    .line 147
    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    .line 149
    return v1
.end method

.method public hash([BIII)I
    .registers 16
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # I

    .line 23
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 25
    add-int v0, p2, p3

    .line 28
    .local v0, "end":I
    const v1, 0x165667b1

    const/16 v2, 0x10

    const v3, -0x7a143589

    const v4, -0x61c8864f

    if-lt p3, v2, :cond_6f

    .line 29
    add-int/lit8 v2, v0, -0x10

    .line 30
    .local v2, "limit":I
    add-int v5, p4, v4

    add-int/2addr v5, v3

    .line 31
    .local v5, "v1":I
    add-int v6, p4, v3

    .line 32
    .local v6, "v2":I
    add-int/lit8 v7, p4, 0x0

    .line 33
    .local v7, "v3":I
    sub-int v8, p4, v4

    .line 35
    .local v8, "v4":I
    :cond_1d
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v5, v9

    .line 36
    const/16 v9, 0xd

    invoke-static {v5, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v5

    .line 37
    mul-int/2addr v5, v4

    .line 38
    add-int/lit8 p2, p2, 0x4

    .line 40
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v6, v10

    .line 41
    invoke-static {v6, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v6

    .line 42
    mul-int/2addr v6, v4

    .line 43
    add-int/lit8 p2, p2, 0x4

    .line 45
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v7, v10

    .line 46
    invoke-static {v7, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v7

    .line 47
    mul-int/2addr v7, v4

    .line 48
    add-int/lit8 p2, p2, 0x4

    .line 50
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 51
    invoke-static {v8, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    .line 52
    mul-int/2addr v8, v4

    .line 53
    add-int/lit8 p2, p2, 0x4

    .line 54
    if-le p2, v2, :cond_1d

    .line 56
    const/4 v9, 0x1

    invoke-static {v5, v9}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    const/4 v10, 0x7

    invoke-static {v6, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0xc

    invoke-static {v7, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0x12

    invoke-static {v8, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    add-int/2addr v9, v10

    .line 57
    .end local v2    # "limit":I
    .end local v5    # "v1":I
    .end local v6    # "v2":I
    .end local v7    # "v3":I
    .end local v8    # "v4":I
    .local v9, "h32":I
    goto :goto_71

    .line 58
    .end local v9    # "h32":I
    :cond_6f
    add-int v9, p4, v1

    .line 61
    .restart local v9    # "h32":I
    :goto_71
    add-int/2addr v9, p3

    .line 63
    :goto_72
    add-int/lit8 v2, v0, -0x4

    const v5, -0x3d4d51c3

    if-gt p2, v2, :cond_8d

    .line 64
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v2

    mul-int/2addr v2, v5

    add-int/2addr v9, v2

    .line 65
    const/16 v2, 0x11

    invoke-static {v9, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    const v5, 0x27d4eb2f

    mul-int v9, v2, v5

    .line 66
    add-int/lit8 p2, p2, 0x4

    goto :goto_72

    .line 69
    :cond_8d
    :goto_8d
    if-ge p2, v0, :cond_a2

    .line 70
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readByte([BI)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    mul-int/2addr v2, v1

    add-int/2addr v9, v2

    .line 71
    const/16 v2, 0xb

    invoke-static {v9, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    mul-int v9, v2, v4

    .line 72
    add-int/lit8 p2, p2, 0x1

    goto :goto_8d

    .line 75
    :cond_a2
    ushr-int/lit8 v1, v9, 0xf

    xor-int/2addr v1, v9

    .line 76
    .end local v9    # "h32":I
    .local v1, "h32":I
    mul-int/2addr v1, v3

    .line 77
    ushr-int/lit8 v2, v1, 0xd

    xor-int/2addr v1, v2

    .line 78
    mul-int/2addr v1, v5

    .line 79
    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    .line 81
    return v1
.end method
