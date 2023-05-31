.class final Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;
.super Lcom/tds/xxhash/AbstractStreamingXXHash64Java;
.source "StreamingXXHash64JavaUnsafe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe$Factory;
    }
.end annotation


# direct methods
.method constructor <init>(J)V
    .registers 3
    .param p1, "seed"    # J

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tds/xxhash/AbstractStreamingXXHash64Java;-><init>(J)V

    .line 28
    return-void
.end method


# virtual methods
.method public getValue()J
    .registers 22

    .line 33
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->totalLen:J

    const-wide/16 v3, 0x20

    cmp-long v1, v1, v3

    const/16 v6, 0x1f

    const-wide v7, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v9, -0x61c8864e7a143579L

    if-ltz v1, :cond_70

    .line 34
    iget-wide v11, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    .line 35
    .local v11, "v1":J
    iget-wide v13, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    .line 36
    .local v13, "v2":J
    iget-wide v2, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    .line 37
    .local v2, "v3":J
    iget-wide v4, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    .line 39
    .local v4, "v4":J
    const/4 v1, 0x1

    invoke-static {v11, v12, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v17

    const/4 v1, 0x7

    invoke-static {v13, v14, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v1, 0xc

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v19

    add-long v17, v17, v19

    const/16 v1, 0x12

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v19

    add-long v17, v17, v19

    .line 41
    .local v17, "h64":J
    mul-long/2addr v11, v7

    invoke-static {v11, v12, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long/2addr v11, v9

    xor-long v17, v17, v11

    .line 42
    mul-long v19, v17, v9

    const-wide v15, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long v19, v19, v15

    .line 44
    .end local v17    # "h64":J
    .local v19, "h64":J
    mul-long/2addr v13, v7

    invoke-static {v13, v14, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v13

    mul-long/2addr v13, v9

    xor-long v17, v19, v13

    .line 45
    .end local v19    # "h64":J
    .restart local v17    # "h64":J
    mul-long v19, v17, v9

    add-long v19, v19, v15

    .line 47
    .end local v17    # "h64":J
    .restart local v19    # "h64":J
    mul-long/2addr v2, v7

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    .end local v2    # "v3":J
    .local v1, "v3":J
    mul-long/2addr v1, v9

    xor-long v17, v19, v1

    .line 48
    .end local v19    # "h64":J
    .restart local v17    # "h64":J
    mul-long v19, v17, v9

    add-long v19, v19, v15

    .line 50
    .end local v17    # "h64":J
    .restart local v19    # "h64":J
    mul-long/2addr v4, v7

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    .end local v4    # "v4":J
    .local v3, "v4":J
    mul-long/2addr v3, v9

    xor-long v17, v19, v3

    .line 51
    .end local v19    # "h64":J
    .restart local v17    # "h64":J
    mul-long v19, v17, v9

    add-long v19, v19, v15

    .line 52
    .end local v1    # "v3":J
    .end local v3    # "v4":J
    .end local v11    # "v1":J
    .end local v13    # "v2":J
    .end local v17    # "h64":J
    .restart local v19    # "h64":J
    goto :goto_79

    .line 53
    .end local v19    # "h64":J
    :cond_70
    iget-wide v1, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->seed:J

    const-wide v3, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long v19, v1, v3

    .line 56
    .restart local v19    # "h64":J
    :goto_79
    iget-wide v1, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->totalLen:J

    add-long v19, v19, v1

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "off":I
    :goto_7e
    iget v2, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    add-int/lit8 v2, v2, -0x8

    if-gt v1, v2, :cond_a4

    .line 60
    iget-object v2, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    invoke-static {v2, v1}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v2

    .line 61
    .local v2, "k1":J
    mul-long/2addr v2, v7

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    mul-long/2addr v2, v9

    xor-long v4, v19, v2

    .line 62
    .end local v19    # "h64":J
    .local v4, "h64":J
    const/16 v11, 0x1b

    invoke-static {v4, v5, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long/2addr v11, v9

    const-wide v13, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long v19, v11, v13

    .line 63
    .end local v4    # "h64":J
    .restart local v19    # "h64":J
    nop

    .end local v2    # "k1":J
    add-int/lit8 v1, v1, 0x8

    .line 64
    goto :goto_7e

    .line 66
    :cond_a4
    iget v2, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    add-int/lit8 v2, v2, -0x4

    const-wide v3, 0x165667b19e3779f9L    # 4.573502279054734E-201

    if-gt v1, v2, :cond_ca

    .line 67
    iget-object v2, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    invoke-static {v2, v1}, Lcom/tds/util/UnsafeUtils;->readIntLE([BI)I

    move-result v2

    int-to-long v5, v2

    const-wide v11, 0xffffffffL

    and-long/2addr v5, v11

    mul-long/2addr v5, v9

    xor-long v5, v19, v5

    .line 68
    .end local v19    # "h64":J
    .local v5, "h64":J
    const/16 v2, 0x17

    invoke-static {v5, v6, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long/2addr v11, v7

    add-long v19, v11, v3

    .line 69
    .end local v5    # "h64":J
    .restart local v19    # "h64":J
    add-int/lit8 v1, v1, 0x4

    .line 72
    :cond_ca
    :goto_ca
    iget v2, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    if-ge v1, v2, :cond_e8

    .line 73
    iget-object v2, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v5, v2

    const-wide v11, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    mul-long/2addr v5, v11

    xor-long v5, v19, v5

    .line 74
    .end local v19    # "h64":J
    .restart local v5    # "h64":J
    const/16 v2, 0xb

    invoke-static {v5, v6, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v13

    mul-long v19, v13, v9

    .line 75
    .end local v5    # "h64":J
    .restart local v19    # "h64":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 78
    :cond_e8
    const/16 v2, 0x21

    ushr-long v5, v19, v2

    xor-long v5, v19, v5

    .line 79
    .end local v19    # "h64":J
    .restart local v5    # "h64":J
    mul-long/2addr v5, v7

    .line 80
    const/16 v2, 0x1d

    ushr-long v7, v5, v2

    xor-long/2addr v5, v7

    .line 81
    mul-long/2addr v5, v3

    .line 82
    const/16 v2, 0x20

    ushr-long v2, v5, v2

    xor-long/2addr v2, v5

    .line 84
    .end local v5    # "h64":J
    .local v2, "h64":J
    return-wide v2
.end method

.method public update([BII)V
    .registers 27
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 91
    iget-wide v4, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->totalLen:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->totalLen:J

    .line 93
    iget v4, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    add-int/2addr v4, v3

    const/16 v5, 0x20

    if-ge v4, v5, :cond_25

    .line 94
    iget-object v4, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    iget v5, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    invoke-static {v1, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v4, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    .line 96
    return-void

    .line 99
    :cond_25
    add-int v4, v2, v3

    .line 101
    .local v4, "end":I
    iget v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    const/4 v7, 0x0

    const/16 v8, 0x8

    const-wide v9, -0x61c8864e7a143579L

    const/16 v11, 0x1f

    const-wide v12, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    if-lez v6, :cond_bb

    .line 102
    iget-object v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    iget v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    iget v15, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    rsub-int/lit8 v15, v15, 0x20

    invoke-static {v1, v2, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    iget-object v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    invoke-static {v6, v7}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v16

    mul-long v16, v16, v12

    add-long v14, v14, v16

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    .line 105
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    invoke-static {v14, v15, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    .line 106
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    mul-long/2addr v14, v9

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    .line 108
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    iget-object v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    invoke-static {v6, v8}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v16

    mul-long v16, v16, v12

    add-long v14, v14, v16

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    .line 109
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    invoke-static {v14, v15, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    .line 110
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    mul-long/2addr v14, v9

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    .line 112
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    iget-object v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    const/16 v8, 0x10

    invoke-static {v6, v8}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v17

    mul-long v17, v17, v12

    add-long v14, v14, v17

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    .line 113
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    invoke-static {v14, v15, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    .line 114
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    mul-long/2addr v14, v9

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    .line 116
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    iget-object v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    const/16 v8, 0x18

    invoke-static {v6, v8}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v17

    mul-long v17, v17, v12

    add-long v14, v14, v17

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    .line 117
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    invoke-static {v14, v15, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    .line 118
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    mul-long/2addr v14, v9

    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    .line 120
    iget v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 121
    .end local p2    # "off":I
    .local v2, "off":I
    iput v7, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    .line 125
    :cond_bb
    add-int/lit8 v5, v4, -0x20

    .line 126
    .local v5, "limit":I
    iget-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    .line 127
    .local v14, "v1":J
    iget-wide v7, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    .line 128
    .local v7, "v2":J
    move-wide/from16 v17, v7

    .end local v7    # "v2":J
    .local v17, "v2":J
    iget-wide v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    .line 129
    .local v6, "v3":J
    iget-wide v9, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    move-wide/from16 v21, v14

    move-wide v14, v9

    move-wide/from16 v8, v17

    .line 131
    .end local v17    # "v2":J
    .local v8, "v2":J
    .local v14, "v4":J
    .local v21, "v1":J
    :goto_cc
    if-gt v2, v5, :cond_119

    .line 132
    invoke-static {v1, v2}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v17

    mul-long v17, v17, v12

    move-wide/from16 v12, v21

    .end local v21    # "v1":J
    .local v12, "v1":J
    add-long v12, v12, v17

    .line 133
    invoke-static {v12, v13, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    .line 134
    const-wide v17, -0x61c8864e7a143579L

    mul-long v21, v12, v17

    .line 135
    .end local v12    # "v1":J
    .restart local v21    # "v1":J
    add-int/lit8 v2, v2, 0x8

    .line 137
    invoke-static {v1, v2}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v12

    const-wide v19, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v12, v12, v19

    add-long/2addr v8, v12

    .line 138
    invoke-static {v8, v9, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    .line 139
    mul-long v8, v8, v17

    .line 140
    const/16 v10, 0x8

    add-int/2addr v2, v10

    .line 142
    invoke-static {v1, v2}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v12

    mul-long v12, v12, v19

    add-long/2addr v6, v12

    .line 143
    invoke-static {v6, v7, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    .line 144
    mul-long v6, v6, v17

    .line 145
    add-int/2addr v2, v10

    .line 147
    invoke-static {v1, v2}, Lcom/tds/util/UnsafeUtils;->readLongLE([BI)J

    move-result-wide v12

    mul-long v12, v12, v19

    add-long/2addr v14, v12

    .line 148
    invoke-static {v14, v15, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    .line 149
    .end local v14    # "v4":J
    .local v12, "v4":J
    mul-long v14, v12, v17

    .line 150
    .end local v12    # "v4":J
    .restart local v14    # "v4":J
    add-int/2addr v2, v10

    move-wide/from16 v12, v19

    goto :goto_cc

    .line 153
    :cond_119
    move-wide/from16 v12, v21

    .end local v21    # "v1":J
    .local v12, "v1":J
    iput-wide v12, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v1:J

    .line 154
    iput-wide v8, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v2:J

    .line 155
    iput-wide v6, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v3:J

    .line 156
    iput-wide v14, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->v4:J

    .line 159
    .end local v5    # "limit":I
    .end local v6    # "v3":J
    .end local v8    # "v2":J
    .end local v12    # "v1":J
    .end local v14    # "v4":J
    if-ge v2, v4, :cond_131

    .line 160
    iget-object v5, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memory:[B

    sub-int v6, v4, v2

    const/4 v7, 0x0

    invoke-static {v1, v2, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    sub-int v5, v4, v2

    iput v5, v0, Lcom/tds/xxhash/StreamingXXHash64JavaUnsafe;->memSize:I

    .line 163
    :cond_131
    return-void
.end method
