.class final Lcom/tds/xxhash/StreamingXXHash32JavaSafe;
.super Lcom/tds/xxhash/AbstractStreamingXXHash32Java;
.source "StreamingXXHash32JavaSafe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/xxhash/StreamingXXHash32JavaSafe$Factory;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "seed"    # I

    .line 27
    invoke-direct {p0, p1}, Lcom/tds/xxhash/AbstractStreamingXXHash32Java;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public getValue()I
    .registers 7

    .line 33
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->totalLen:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    const v1, 0x165667b1

    if-ltz v0, :cond_2d

    .line 34
    iget v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    const/16 v3, 0x12

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    .local v0, "h32":I
    goto :goto_30

    .line 36
    .end local v0    # "h32":I
    :cond_2d
    iget v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->seed:I

    add-int/2addr v0, v1

    .line 39
    .restart local v0    # "h32":I
    :goto_30
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->totalLen:J

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "off":I
    :goto_36
    iget v3, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    add-int/lit8 v3, v3, -0x4

    const v4, -0x3d4d51c3

    if-gt v2, v3, :cond_55

    .line 43
    iget-object v3, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    invoke-static {v3, v2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 44
    const/16 v3, 0x11

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    const v4, 0x27d4eb2f

    mul-int v0, v3, v4

    .line 45
    add-int/lit8 v2, v2, 0x4

    goto :goto_36

    .line 48
    :cond_55
    :goto_55
    iget v3, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    if-ge v2, v3, :cond_71

    .line 49
    iget-object v3, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    invoke-static {v3, v2}, Lcom/tds/util/SafeUtils;->readByte([BI)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 50
    const/16 v3, 0xb

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    const v5, -0x61c8864f

    mul-int v0, v3, v5

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 54
    :cond_71
    ushr-int/lit8 v1, v0, 0xf

    xor-int/2addr v0, v1

    .line 55
    const v1, -0x7a143589

    mul-int/2addr v0, v1

    .line 56
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 57
    mul-int/2addr v0, v4

    .line 58
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public update([BII)V
    .registers 16
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 65
    invoke-static {p1, p2, p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 67
    iget-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->totalLen:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->totalLen:J

    .line 69
    iget v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1d

    .line 70
    iget-object v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    iget v1, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    .line 72
    return-void

    .line 75
    :cond_1d
    add-int v0, p2, p3

    .line 77
    .local v0, "end":I
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const v5, -0x61c8864f

    const/16 v6, 0xd

    const v7, -0x7a143589

    if-lez v2, :cond_a6

    .line 78
    iget-object v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    iget v8, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    iget v9, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    rsub-int/lit8 v9, v9, 0x10

    invoke-static {p1, p2, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    iget-object v8, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    invoke-static {v8, v3}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v2, v8

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    .line 81
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    invoke-static {v2, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    .line 82
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    mul-int/2addr v2, v5

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    .line 84
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    iget-object v8, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    invoke-static {v8, v4}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v2, v8

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    .line 85
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    invoke-static {v2, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    .line 86
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    mul-int/2addr v2, v5

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    .line 88
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    iget-object v8, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v2, v8

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    .line 89
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    invoke-static {v2, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    .line 90
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    mul-int/2addr v2, v5

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    .line 92
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    iget-object v8, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    const/16 v9, 0xc

    invoke-static {v8, v9}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v2, v8

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    .line 93
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    invoke-static {v2, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    .line 94
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    mul-int/2addr v2, v5

    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    .line 96
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    sub-int/2addr v1, v2

    add-int/2addr p2, v1

    .line 97
    iput v3, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    .line 101
    :cond_a6
    add-int/lit8 v1, v0, -0x10

    .line 102
    .local v1, "limit":I
    iget v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    .line 103
    .local v2, "v1":I
    iget v8, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    .line 104
    .local v8, "v2":I
    iget v9, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    .line 105
    .local v9, "v3":I
    iget v10, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    .line 107
    .local v10, "v4":I
    :goto_b0
    if-gt p2, v1, :cond_e4

    .line 108
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v2, v11

    .line 109
    invoke-static {v2, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    .line 110
    mul-int/2addr v2, v5

    .line 111
    add-int/lit8 p2, p2, 0x4

    .line 113
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v8, v11

    .line 114
    invoke-static {v8, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    .line 115
    mul-int/2addr v8, v5

    .line 116
    add-int/2addr p2, v4

    .line 118
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v9, v11

    .line 119
    invoke-static {v9, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v9

    .line 120
    mul-int/2addr v9, v5

    .line 121
    add-int/2addr p2, v4

    .line 123
    invoke-static {p1, p2}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v10, v11

    .line 124
    invoke-static {v10, v6}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v10

    .line 125
    mul-int/2addr v10, v5

    .line 126
    add-int/2addr p2, v4

    goto :goto_b0

    .line 129
    :cond_e4
    iput v2, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v1:I

    .line 130
    iput v8, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v2:I

    .line 131
    iput v9, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v3:I

    .line 132
    iput v10, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->v4:I

    .line 135
    .end local v1    # "limit":I
    .end local v2    # "v1":I
    .end local v8    # "v2":I
    .end local v9    # "v3":I
    .end local v10    # "v4":I
    if-ge p2, v0, :cond_f9

    .line 136
    iget-object v1, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memory:[B

    sub-int v2, v0, p2

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    sub-int v1, v0, p2

    iput v1, p0, Lcom/tds/xxhash/StreamingXXHash32JavaSafe;->memSize:I

    .line 139
    :cond_f9
    return-void
.end method
