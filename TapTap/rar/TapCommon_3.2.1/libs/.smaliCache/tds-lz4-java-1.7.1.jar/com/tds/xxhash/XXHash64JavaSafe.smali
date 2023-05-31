.class final Lcom/tds/xxhash/XXHash64JavaSafe;
.super Lcom/tds/xxhash/XXHash64;
.source "XXHash64JavaSafe.java"


# static fields
.field public static final INSTANCE:Lcom/tds/xxhash/XXHash64;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/tds/xxhash/XXHash64JavaSafe;

    invoke-direct {v0}, Lcom/tds/xxhash/XXHash64JavaSafe;-><init>()V

    sput-object v0, Lcom/tds/xxhash/XXHash64JavaSafe;->INSTANCE:Lcom/tds/xxhash/XXHash64;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/tds/xxhash/XXHash64;-><init>()V

    return-void
.end method


# virtual methods
.method public hash(Ljava/nio/ByteBuffer;IIJ)J
    .registers 31
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # J

    .line 106
    move/from16 v6, p3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 107
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v2, p2, v0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tds/xxhash/XXHash64JavaSafe;->hash([BIIJ)J

    move-result-wide v0

    return-wide v0

    .line 109
    :cond_1d
    invoke-static/range {p1 .. p3}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 110
    invoke-static/range {p1 .. p1}, Lcom/tds/util/ByteBufferUtils;->inLittleEndianOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    .local v0, "buf":Ljava/nio/ByteBuffer;
    add-int v1, p2, v6

    .line 115
    .local v1, "end":I
    const/16 v4, 0x20

    const/16 v5, 0x1f

    const-wide v9, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v11, -0x61c8864e7a143579L

    if-lt v6, v4, :cond_10a

    .line 116
    add-int/lit8 v13, v1, -0x20

    .line 117
    .local v13, "limit":I
    add-long v14, p4, v11

    add-long/2addr v14, v9

    .line 118
    .local v14, "v1":J
    add-long v16, p4, v9

    .line 119
    .local v16, "v2":J
    const-wide/16 v18, 0x0

    add-long v18, p4, v18

    .line 120
    .local v18, "v3":J
    sub-long v20, p4, v11

    move-wide/from16 v21, v20

    move-wide/from16 v19, v18

    move-wide/from16 v17, v16

    move-wide v15, v14

    move/from16 v14, p2

    .line 122
    .end local v16    # "v2":J
    .end local v18    # "v3":J
    .end local p2    # "off":I
    .local v14, "off":I
    .local v15, "v1":J
    .local v17, "v2":J
    .local v19, "v3":J
    .local v21, "v4":J
    :goto_4c
    invoke-static {v0, v14}, Lcom/tds/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v23

    mul-long v23, v23, v9

    add-long v2, v15, v23

    .line 123
    .end local v15    # "v1":J
    .local v2, "v1":J
    invoke-static {v2, v3, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 124
    mul-long/2addr v2, v11

    .line 125
    add-int/lit8 v14, v14, 0x8

    .line 127
    invoke-static {v0, v14}, Lcom/tds/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v15

    mul-long/2addr v15, v9

    add-long v7, v17, v15

    .line 128
    .end local v17    # "v2":J
    .local v7, "v2":J
    invoke-static {v7, v8, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    .line 129
    mul-long/2addr v7, v11

    .line 130
    add-int/lit8 v14, v14, 0x8

    .line 132
    invoke-static {v0, v14}, Lcom/tds/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v15

    mul-long/2addr v15, v9

    add-long v9, v19, v15

    .line 133
    .end local v19    # "v3":J
    .local v9, "v3":J
    invoke-static {v9, v10, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    .line 134
    mul-long/2addr v9, v11

    .line 135
    add-int/lit8 v14, v14, 0x8

    .line 137
    invoke-static {v0, v14}, Lcom/tds/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v15

    const-wide v17, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v15, v15, v17

    add-long v11, v21, v15

    .line 138
    .end local v21    # "v4":J
    .local v11, "v4":J
    invoke-static {v11, v12, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    .line 139
    const-wide v15, -0x61c8864e7a143579L

    mul-long/2addr v11, v15

    .line 140
    add-int/lit8 v14, v14, 0x8

    .line 141
    if-le v14, v13, :cond_f5

    .line 143
    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v15

    const/4 v4, 0x7

    invoke-static {v7, v8, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v21

    add-long v15, v15, v21

    const/16 v4, 0xc

    invoke-static {v9, v10, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v21

    add-long v15, v15, v21

    const/16 v4, 0x12

    invoke-static {v11, v12, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v21

    add-long v15, v15, v21

    .line 145
    .local v15, "h64":J
    const-wide v17, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v2, v2, v17

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    const-wide v19, -0x61c8864e7a143579L

    mul-long v2, v2, v19

    xor-long/2addr v15, v2

    .line 146
    mul-long v21, v15, v19

    const-wide v23, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long v21, v21, v23

    .line 148
    .end local v15    # "h64":J
    .local v21, "h64":J
    mul-long v7, v7, v17

    invoke-static {v7, v8, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    mul-long v7, v7, v19

    xor-long v15, v21, v7

    .line 149
    .end local v21    # "h64":J
    .restart local v15    # "h64":J
    mul-long v21, v15, v19

    add-long v21, v21, v23

    .line 151
    .end local v15    # "h64":J
    .restart local v21    # "h64":J
    mul-long v9, v9, v17

    invoke-static {v9, v10, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    mul-long v9, v9, v19

    xor-long v15, v21, v9

    .line 152
    .end local v21    # "h64":J
    .restart local v15    # "h64":J
    mul-long v21, v15, v19

    add-long v21, v21, v23

    .line 154
    .end local v15    # "h64":J
    .restart local v21    # "h64":J
    mul-long v11, v11, v17

    invoke-static {v11, v12, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long v11, v11, v19

    xor-long v15, v21, v11

    .line 155
    .end local v21    # "h64":J
    .restart local v15    # "h64":J
    mul-long v21, v15, v19

    add-long v21, v21, v23

    .line 156
    .end local v2    # "v1":J
    .end local v7    # "v2":J
    .end local v9    # "v3":J
    .end local v11    # "v4":J
    .end local v13    # "limit":I
    .end local v15    # "h64":J
    .restart local v21    # "h64":J
    goto :goto_113

    .line 141
    .end local v21    # "h64":J
    .restart local v2    # "v1":J
    .restart local v7    # "v2":J
    .restart local v9    # "v3":J
    .restart local v11    # "v4":J
    .restart local v13    # "limit":I
    :cond_f5
    move-wide v15, v2

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    const/16 v4, 0x20

    const-wide v9, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v11, -0x61c8864e7a143579L

    goto/16 :goto_4c

    .line 157
    .end local v2    # "v1":J
    .end local v7    # "v2":J
    .end local v9    # "v3":J
    .end local v11    # "v4":J
    .end local v13    # "limit":I
    .end local v14    # "off":I
    .restart local p2    # "off":I
    :cond_10a
    const-wide v2, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long v21, p4, v2

    move/from16 v14, p2

    .line 160
    .end local p2    # "off":I
    .restart local v14    # "off":I
    .restart local v21    # "h64":J
    :goto_113
    int-to-long v2, v6

    add-long v21, v21, v2

    .line 162
    :goto_116
    add-int/lit8 v2, v1, -0x8

    if-gt v14, v2, :cond_142

    .line 163
    invoke-static {v0, v14}, Lcom/tds/util/ByteBufferUtils;->readLongLE(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    .line 164
    .local v2, "k1":J
    const-wide v7, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v2, v7

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    const-wide v7, -0x61c8864e7a143579L

    mul-long/2addr v2, v7

    xor-long v9, v21, v2

    .line 165
    .end local v21    # "h64":J
    .local v9, "h64":J
    const/16 v4, 0x1b

    invoke-static {v9, v10, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long/2addr v11, v7

    const-wide v7, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long v21, v11, v7

    .line 166
    .end local v9    # "h64":J
    .restart local v21    # "h64":J
    nop

    .end local v2    # "k1":J
    add-int/lit8 v14, v14, 0x8

    .line 167
    goto :goto_116

    .line 169
    :cond_142
    add-int/lit8 v2, v1, -0x4

    const-wide v3, 0x165667b19e3779f9L    # 4.573502279054734E-201

    if-gt v14, v2, :cond_16e

    .line 170
    invoke-static {v0, v14}, Lcom/tds/util/ByteBufferUtils;->readIntLE(Ljava/nio/ByteBuffer;I)I

    move-result v2

    int-to-long v7, v2

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const-wide v9, -0x61c8864e7a143579L

    mul-long/2addr v7, v9

    xor-long v7, v21, v7

    .line 171
    .end local v21    # "h64":J
    .local v7, "h64":J
    const/16 v2, 0x17

    invoke-static {v7, v8, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    const-wide v11, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v9, v11

    add-long v21, v9, v3

    .line 172
    .end local v7    # "h64":J
    .restart local v21    # "h64":J
    add-int/lit8 v14, v14, 0x4

    .line 175
    :cond_16e
    :goto_16e
    if-ge v14, v1, :cond_18f

    .line 176
    invoke-static {v0, v14}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v7, v2

    const-wide v9, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    mul-long/2addr v7, v9

    xor-long v7, v21, v7

    .line 177
    .end local v21    # "h64":J
    .restart local v7    # "h64":J
    const/16 v2, 0xb

    invoke-static {v7, v8, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    const-wide v15, -0x61c8864e7a143579L

    mul-long v21, v11, v15

    .line 178
    .end local v7    # "h64":J
    .restart local v21    # "h64":J
    add-int/lit8 v14, v14, 0x1

    goto :goto_16e

    .line 181
    :cond_18f
    const/16 v2, 0x21

    ushr-long v7, v21, v2

    xor-long v7, v21, v7

    .line 182
    .end local v21    # "h64":J
    .restart local v7    # "h64":J
    const-wide v9, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v7, v9

    .line 183
    const/16 v2, 0x1d

    ushr-long v9, v7, v2

    xor-long/2addr v7, v9

    .line 184
    mul-long/2addr v7, v3

    .line 185
    const/16 v2, 0x20

    ushr-long v2, v7, v2

    xor-long/2addr v2, v7

    .line 187
    .end local v7    # "h64":J
    .local v2, "h64":J
    return-wide v2
.end method

.method public hash([BIIJ)J
    .registers 33
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "seed"    # J

    .line 23
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static/range {p1 .. p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 25
    add-int v2, p2, v1

    .line 28
    .local v2, "end":I
    const/16 v5, 0x20

    const/16 v8, 0x1f

    const-wide v9, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v11, -0x61c8864e7a143579L

    if-lt v1, v5, :cond_ed

    .line 29
    add-int/lit8 v13, v2, -0x20

    .line 30
    .local v13, "limit":I
    add-long v14, p4, v11

    add-long/2addr v14, v9

    .line 31
    .local v14, "v1":J
    add-long v16, p4, v9

    .line 32
    .local v16, "v2":J
    const-wide/16 v18, 0x0

    add-long v18, p4, v18

    .line 33
    .local v18, "v3":J
    sub-long v20, p4, v11

    move-wide/from16 v21, v20

    move-wide/from16 v19, v18

    move-wide/from16 v17, v16

    move-wide v15, v14

    move/from16 v14, p2

    .line 35
    .end local v16    # "v2":J
    .end local v18    # "v3":J
    .end local p2    # "off":I
    .local v14, "off":I
    .local v15, "v1":J
    .local v17, "v2":J
    .local v19, "v3":J
    .local v21, "v4":J
    :goto_2f
    invoke-static {v0, v14}, Lcom/tds/util/SafeUtils;->readLongLE([BI)J

    move-result-wide v23

    mul-long v23, v23, v9

    add-long v3, v15, v23

    .line 36
    .end local v15    # "v1":J
    .local v3, "v1":J
    invoke-static {v3, v4, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    .line 37
    mul-long/2addr v3, v11

    .line 38
    add-int/lit8 v14, v14, 0x8

    .line 40
    invoke-static {v0, v14}, Lcom/tds/util/SafeUtils;->readLongLE([BI)J

    move-result-wide v15

    mul-long/2addr v15, v9

    add-long v5, v17, v15

    .line 41
    .end local v17    # "v2":J
    .local v5, "v2":J
    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    .line 42
    mul-long/2addr v5, v11

    .line 43
    add-int/lit8 v14, v14, 0x8

    .line 45
    invoke-static {v0, v14}, Lcom/tds/util/SafeUtils;->readLongLE([BI)J

    move-result-wide v15

    mul-long/2addr v15, v9

    add-long v9, v19, v15

    .line 46
    .end local v19    # "v3":J
    .local v9, "v3":J
    invoke-static {v9, v10, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    .line 47
    mul-long/2addr v9, v11

    .line 48
    add-int/lit8 v14, v14, 0x8

    .line 50
    invoke-static {v0, v14}, Lcom/tds/util/SafeUtils;->readLongLE([BI)J

    move-result-wide v15

    const-wide v17, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v15, v15, v17

    add-long v11, v21, v15

    .line 51
    .end local v21    # "v4":J
    .local v11, "v4":J
    invoke-static {v11, v12, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    .line 52
    const-wide v15, -0x61c8864e7a143579L

    mul-long/2addr v11, v15

    .line 53
    add-int/lit8 v14, v14, 0x8

    .line 54
    if-le v14, v13, :cond_d8

    .line 56
    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v15

    const/4 v7, 0x7

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v21

    add-long v15, v15, v21

    const/16 v7, 0xc

    invoke-static {v9, v10, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v21

    add-long v15, v15, v21

    const/16 v7, 0x12

    invoke-static {v11, v12, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v21

    add-long v15, v15, v21

    .line 58
    .local v15, "h64":J
    const-wide v17, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long v3, v3, v17

    invoke-static {v3, v4, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v19, -0x61c8864e7a143579L

    mul-long v3, v3, v19

    xor-long/2addr v15, v3

    .line 59
    mul-long v21, v15, v19

    const-wide v25, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long v21, v21, v25

    .line 61
    .end local v15    # "h64":J
    .local v21, "h64":J
    mul-long v5, v5, v17

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    mul-long v5, v5, v19

    xor-long v15, v21, v5

    .line 62
    .end local v21    # "h64":J
    .restart local v15    # "h64":J
    mul-long v21, v15, v19

    add-long v21, v21, v25

    .line 64
    .end local v15    # "h64":J
    .restart local v21    # "h64":J
    mul-long v9, v9, v17

    invoke-static {v9, v10, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    mul-long v9, v9, v19

    xor-long v15, v21, v9

    .line 65
    .end local v21    # "h64":J
    .restart local v15    # "h64":J
    mul-long v21, v15, v19

    add-long v21, v21, v25

    .line 67
    .end local v15    # "h64":J
    .restart local v21    # "h64":J
    mul-long v11, v11, v17

    invoke-static {v11, v12, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long v11, v11, v19

    xor-long v15, v21, v11

    .line 68
    .end local v21    # "h64":J
    .restart local v15    # "h64":J
    mul-long v21, v15, v19

    add-long v21, v21, v25

    .line 69
    .end local v3    # "v1":J
    .end local v5    # "v2":J
    .end local v9    # "v3":J
    .end local v11    # "v4":J
    .end local v13    # "limit":I
    .end local v15    # "h64":J
    .restart local v21    # "h64":J
    goto :goto_f6

    .line 54
    .end local v21    # "h64":J
    .restart local v3    # "v1":J
    .restart local v5    # "v2":J
    .restart local v9    # "v3":J
    .restart local v11    # "v4":J
    .restart local v13    # "limit":I
    :cond_d8
    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    const/16 v5, 0x20

    const-wide v9, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    const-wide v11, -0x61c8864e7a143579L

    goto/16 :goto_2f

    .line 70
    .end local v3    # "v1":J
    .end local v5    # "v2":J
    .end local v9    # "v3":J
    .end local v11    # "v4":J
    .end local v13    # "limit":I
    .end local v14    # "off":I
    .restart local p2    # "off":I
    :cond_ed
    const-wide v3, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    add-long v21, p4, v3

    move/from16 v14, p2

    .line 73
    .end local p2    # "off":I
    .restart local v14    # "off":I
    .restart local v21    # "h64":J
    :goto_f6
    int-to-long v3, v1

    add-long v21, v21, v3

    .line 75
    :goto_f9
    add-int/lit8 v3, v2, -0x8

    if-gt v14, v3, :cond_125

    .line 76
    invoke-static {v0, v14}, Lcom/tds/util/SafeUtils;->readLongLE([BI)J

    move-result-wide v3

    .line 77
    .local v3, "k1":J
    const-wide v5, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v3, v5

    invoke-static {v3, v4, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    const-wide v5, -0x61c8864e7a143579L

    mul-long/2addr v3, v5

    xor-long v9, v21, v3

    .line 78
    .end local v21    # "h64":J
    .local v9, "h64":J
    const/16 v7, 0x1b

    invoke-static {v9, v10, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    mul-long/2addr v11, v5

    const-wide v5, -0x7a1435883d4d519dL    # -3.827511455475344E-280

    add-long v21, v11, v5

    .line 79
    .end local v9    # "h64":J
    .restart local v21    # "h64":J
    nop

    .end local v3    # "k1":J
    add-int/lit8 v14, v14, 0x8

    .line 80
    goto :goto_f9

    .line 82
    :cond_125
    add-int/lit8 v3, v2, -0x4

    const-wide v4, 0x165667b19e3779f9L    # 4.573502279054734E-201

    if-gt v14, v3, :cond_151

    .line 83
    invoke-static {v0, v14}, Lcom/tds/util/SafeUtils;->readIntLE([BI)I

    move-result v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide v8, -0x61c8864e7a143579L

    mul-long/2addr v6, v8

    xor-long v6, v21, v6

    .line 84
    .end local v21    # "h64":J
    .local v6, "h64":J
    const/16 v3, 0x17

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    const-wide v10, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v8, v10

    add-long v21, v8, v4

    .line 85
    .end local v6    # "h64":J
    .restart local v21    # "h64":J
    add-int/lit8 v14, v14, 0x4

    .line 88
    :cond_151
    :goto_151
    if-ge v14, v2, :cond_172

    .line 89
    invoke-static {v0, v14}, Lcom/tds/util/SafeUtils;->readByte([BI)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    const-wide v8, 0x27d4eb2f165667c5L    # 8.29537680305513E-117

    mul-long/2addr v6, v8

    xor-long v6, v21, v6

    .line 90
    .end local v21    # "h64":J
    .restart local v6    # "h64":J
    const/16 v3, 0xb

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    const-wide v12, -0x61c8864e7a143579L

    mul-long v21, v10, v12

    .line 91
    .end local v6    # "h64":J
    .restart local v21    # "h64":J
    add-int/lit8 v14, v14, 0x1

    goto :goto_151

    .line 94
    :cond_172
    const/16 v3, 0x21

    ushr-long v6, v21, v3

    xor-long v6, v21, v6

    .line 95
    .end local v21    # "h64":J
    .restart local v6    # "h64":J
    const-wide v8, -0x3d4d51c2d82b14b1L    # -2.053955963005931E13

    mul-long/2addr v6, v8

    .line 96
    const/16 v3, 0x1d

    ushr-long v8, v6, v3

    xor-long/2addr v6, v8

    .line 97
    mul-long/2addr v6, v4

    .line 98
    const/16 v3, 0x20

    ushr-long v3, v6, v3

    xor-long/2addr v3, v6

    .line 100
    .end local v6    # "h64":J
    .local v3, "h64":J
    return-wide v3
.end method
