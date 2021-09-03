.class final Lcom/tds/lz4/LZ4JavaUnsafeSafeDecompressor;
.super Lcom/tds/lz4/LZ4SafeDecompressor;
.source "LZ4JavaUnsafeSafeDecompressor.java"


# static fields
.field public static final INSTANCE:Lcom/tds/lz4/LZ4SafeDecompressor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/tds/lz4/LZ4JavaUnsafeSafeDecompressor;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4JavaUnsafeSafeDecompressor;-><init>()V

    sput-object v0, Lcom/tds/lz4/LZ4JavaUnsafeSafeDecompressor;->INSTANCE:Lcom/tds/lz4/LZ4SafeDecompressor;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/tds/lz4/LZ4SafeDecompressor;-><init>()V

    return-void
.end method


# virtual methods
.method public decompress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 25
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # Ljava/nio/ByteBuffer;
    .param p5, "destOff"    # I
    .param p6, "destLen"    # I

    .line 115
    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 116
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int v3, v0, v1

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int v6, v9, v1

    move-object/from16 v1, p0

    move/from16 v4, p3

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/tds/lz4/LZ4JavaUnsafeSafeDecompressor;->decompress([BII[BII)I

    move-result v1

    return v1

    .line 118
    :cond_33
    invoke-static/range {p1 .. p1}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 119
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .local v1, "src":Ljava/nio/ByteBuffer;
    invoke-static/range {p4 .. p4}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 122
    .end local p4    # "dest":Ljava/nio/ByteBuffer;
    .local v2, "dest":Ljava/nio/ByteBuffer;
    invoke-static {v1, v0, v8}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 123
    invoke-static {v2, v9, v10}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 125
    const/4 v3, 0x1

    if-nez v10, :cond_56

    .line 126
    if-ne v8, v3, :cond_4e

    invoke-static {v1, v0}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v3

    if-nez v3, :cond_4e

    .line 129
    const/4 v3, 0x0

    return v3

    .line 127
    :cond_4e
    new-instance v3, Lcom/tds/lz4/LZ4Exception;

    const-string v4, "Output buffer too small"

    invoke-direct {v3, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_56
    add-int v4, v0, v8

    .line 135
    .local v4, "srcEnd":I
    add-int v5, v9, v10

    .line 137
    .local v5, "destEnd":I
    move/from16 v6, p2

    .line 138
    .local v6, "sOff":I
    move/from16 v7, p5

    .line 141
    .local v7, "dOff":I
    :goto_5e
    invoke-static {v1, v6}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    .line 142
    .local v11, "token":I
    add-int/2addr v6, v3

    .line 145
    ushr-int/lit8 v12, v11, 0x4

    .line 146
    .local v12, "literalLen":I
    const/4 v13, -0x1

    const/16 v14, 0xf

    if-ne v12, v14, :cond_82

    .line 147
    const/4 v15, -0x1

    .line 148
    .local v15, "len":B
    :goto_6d
    if-ge v6, v4, :cond_7f

    add-int/lit8 v16, v6, 0x1

    .end local v6    # "sOff":I
    .local v16, "sOff":I
    invoke-static {v1, v6}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v6

    move v15, v6

    if-ne v6, v13, :cond_7d

    .line 149
    add-int/lit16 v12, v12, 0xff

    move/from16 v6, v16

    goto :goto_6d

    .line 148
    :cond_7d
    move/from16 v6, v16

    .line 151
    .end local v16    # "sOff":I
    .restart local v6    # "sOff":I
    :cond_7f
    and-int/lit16 v3, v15, 0xff

    add-int/2addr v12, v3

    .line 154
    .end local v15    # "len":B
    :cond_82
    add-int v3, v7, v12

    .line 156
    .local v3, "literalCopyEnd":I
    add-int/lit8 v15, v5, -0x8

    const-string v13, "Malformed input at "

    if-gt v3, v15, :cond_117

    add-int v15, v6, v12

    add-int/lit8 v14, v4, -0x8

    if-le v15, v14, :cond_92

    goto/16 :goto_117

    .line 170
    :cond_92
    invoke-static {v1, v6, v2, v7, v12}, Lcom/tds/lz4/LZ4ByteBufferUtils;->wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 171
    add-int/2addr v6, v12

    .line 172
    move v7, v3

    .line 175
    invoke-static {v1, v6}, Lcom/tds/util/ByteBufferUtils;->readShortLE(Ljava/nio/ByteBuffer;I)I

    move-result v14

    .line 176
    .local v14, "matchDec":I
    add-int/lit8 v6, v6, 0x2

    .line 177
    sub-int v15, v7, v14

    .line 179
    .local v15, "matchOff":I
    if-lt v15, v9, :cond_100

    .line 183
    and-int/lit8 v0, v11, 0xf

    .line 184
    .local v0, "matchLen":I
    const/16 v8, 0xf

    if-ne v0, v8, :cond_c8

    .line 185
    const/4 v8, -0x1

    .line 186
    .local v8, "len":B
    :goto_a8
    if-ge v6, v4, :cond_c1

    add-int/lit8 v16, v6, 0x1

    .end local v6    # "sOff":I
    .restart local v16    # "sOff":I
    invoke-static {v1, v6}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v6

    move v8, v6

    move/from16 v17, v8

    const/4 v8, -0x1

    .end local v8    # "len":B
    .local v17, "len":B
    if-ne v6, v8, :cond_bd

    .line 187
    add-int/lit16 v0, v0, 0xff

    move/from16 v6, v16

    move/from16 v8, v17

    goto :goto_a8

    .line 186
    :cond_bd
    move/from16 v6, v16

    move/from16 v8, v17

    .line 189
    .end local v16    # "sOff":I
    .end local v17    # "len":B
    .restart local v6    # "sOff":I
    .restart local v8    # "len":B
    :cond_c1
    move/from16 p4, v6

    .end local v6    # "sOff":I
    .local p4, "sOff":I
    and-int/lit16 v6, v8, 0xff

    add-int/2addr v0, v6

    move/from16 v6, p4

    .line 191
    .end local v8    # "len":B
    .end local p4    # "sOff":I
    .restart local v6    # "sOff":I
    :cond_c8
    add-int/lit8 v0, v0, 0x4

    .line 193
    add-int v8, v7, v0

    .line 195
    .local v8, "matchCopyEnd":I
    add-int/lit8 v10, v5, -0x8

    if-le v8, v10, :cond_f1

    .line 196
    if-gt v8, v5, :cond_d8

    .line 199
    invoke-static {v2, v15, v7, v0}, Lcom/tds/lz4/LZ4ByteBufferUtils;->safeIncrementalCopy(Ljava/nio/ByteBuffer;III)V

    move/from16 p4, v0

    goto :goto_f6

    .line 197
    :cond_d8
    new-instance v10, Lcom/tds/lz4/LZ4Exception;

    move/from16 p4, v0

    .end local v0    # "matchLen":I
    .local p4, "matchLen":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 201
    .end local p4    # "matchLen":I
    .restart local v0    # "matchLen":I
    :cond_f1
    move/from16 p4, v0

    .end local v0    # "matchLen":I
    .restart local p4    # "matchLen":I
    invoke-static {v2, v15, v7, v8}, Lcom/tds/lz4/LZ4ByteBufferUtils;->wildIncrementalCopy(Ljava/nio/ByteBuffer;III)V

    .line 203
    :goto_f6
    move v7, v8

    .line 204
    .end local v3    # "literalCopyEnd":I
    .end local v8    # "matchCopyEnd":I
    .end local v11    # "token":I
    .end local v12    # "literalLen":I
    .end local v14    # "matchDec":I
    .end local v15    # "matchOff":I
    .end local p4    # "matchLen":I
    move/from16 v0, p2

    move/from16 v8, p3

    move/from16 v10, p6

    const/4 v3, 0x1

    goto/16 :goto_5e

    .line 180
    .restart local v3    # "literalCopyEnd":I
    .restart local v11    # "token":I
    .restart local v12    # "literalLen":I
    .restart local v14    # "matchDec":I
    .restart local v15    # "matchOff":I
    :cond_100
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    .end local v14    # "matchDec":I
    .end local v15    # "matchOff":I
    :cond_117
    :goto_117
    if-gt v3, v5, :cond_13d

    .line 159
    add-int v0, v6, v12

    if-ne v0, v4, :cond_126

    .line 163
    invoke-static {v1, v6, v2, v7, v12}, Lcom/tds/lz4/LZ4ByteBufferUtils;->safeArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 164
    add-int/2addr v6, v12

    .line 165
    move v0, v3

    .line 166
    .end local v7    # "dOff":I
    .local v0, "dOff":I
    nop

    .line 207
    .end local v3    # "literalCopyEnd":I
    .end local v11    # "token":I
    .end local v12    # "literalLen":I
    sub-int v3, v0, v9

    return v3

    .line 160
    .end local v0    # "dOff":I
    .restart local v3    # "literalCopyEnd":I
    .restart local v7    # "dOff":I
    .restart local v11    # "token":I
    .restart local v12    # "literalLen":I
    :cond_126
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_13d
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4Exception;-><init>()V

    throw v0
.end method

.method public decompress([BII[BII)I
    .registers 25
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I
    .param p6, "destLen"    # I

    .line 23
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-static/range {p1 .. p3}, Lcom/tds/util/UnsafeUtils;->checkRange([BII)V

    .line 24
    invoke-static/range {p4 .. p6}, Lcom/tds/util/UnsafeUtils;->checkRange([BII)V

    .line 26
    const/4 v4, 0x1

    if-nez p6, :cond_23

    .line 27
    if-ne v1, v4, :cond_1b

    invoke-static/range {p1 .. p2}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v4

    if-nez v4, :cond_1b

    .line 30
    const/4 v4, 0x0

    return v4

    .line 28
    :cond_1b
    new-instance v4, Lcom/tds/lz4/LZ4Exception;

    const-string v5, "Output buffer too small"

    invoke-direct {v4, v5}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 33
    :cond_23
    add-int v5, p2, v1

    .line 36
    .local v5, "srcEnd":I
    add-int v6, v3, p6

    .line 38
    .local v6, "destEnd":I
    move/from16 v7, p2

    .line 39
    .local v7, "sOff":I
    move/from16 v8, p5

    .line 42
    .local v8, "dOff":I
    :goto_2b
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    .line 43
    .local v9, "token":I
    add-int/2addr v7, v4

    .line 46
    ushr-int/lit8 v10, v9, 0x4

    .line 47
    .local v10, "literalLen":I
    const/4 v11, -0x1

    const/16 v12, 0xf

    if-ne v10, v12, :cond_4d

    .line 48
    const/4 v13, -0x1

    .line 49
    .local v13, "len":B
    :goto_3a
    if-ge v7, v5, :cond_4a

    add-int/lit8 v14, v7, 0x1

    .end local v7    # "sOff":I
    .local v14, "sOff":I
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v7

    move v13, v7

    if-ne v7, v11, :cond_49

    .line 50
    add-int/lit16 v10, v10, 0xff

    move v7, v14

    goto :goto_3a

    .line 49
    :cond_49
    move v7, v14

    .line 52
    .end local v14    # "sOff":I
    .restart local v7    # "sOff":I
    :cond_4a
    and-int/lit16 v14, v13, 0xff

    add-int/2addr v10, v14

    .line 55
    .end local v13    # "len":B
    :cond_4d
    add-int v13, v8, v10

    .line 57
    .local v13, "literalCopyEnd":I
    add-int/lit8 v14, v6, -0x8

    const-string v15, "Malformed input at "

    if-gt v13, v14, :cond_d6

    add-int v14, v7, v10

    add-int/lit8 v4, v5, -0x8

    if-le v14, v4, :cond_5d

    goto/16 :goto_d6

    .line 71
    :cond_5d
    invoke-static {v0, v7, v2, v8, v10}, Lcom/tds/lz4/LZ4UnsafeUtils;->wildArraycopy([BI[BII)V

    .line 72
    add-int/2addr v7, v10

    .line 73
    move v4, v13

    .line 76
    .end local v8    # "dOff":I
    .local v4, "dOff":I
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readShortLE([BI)I

    move-result v8

    .line 77
    .local v8, "matchDec":I
    add-int/lit8 v7, v7, 0x2

    .line 78
    sub-int v14, v4, v8

    .line 80
    .local v14, "matchOff":I
    if-lt v14, v3, :cond_bd

    .line 84
    and-int/lit8 v11, v9, 0xf

    .line 85
    .local v11, "matchLen":I
    if-ne v11, v12, :cond_89

    .line 86
    const/4 v12, -0x1

    .line 87
    .local v12, "len":B
    :goto_71
    if-ge v7, v5, :cond_86

    add-int/lit8 v17, v7, 0x1

    .end local v7    # "sOff":I
    .local v17, "sOff":I
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v7

    move v12, v7

    const/4 v1, -0x1

    if-ne v7, v1, :cond_84

    .line 88
    add-int/lit16 v11, v11, 0xff

    move/from16 v1, p3

    move/from16 v7, v17

    goto :goto_71

    .line 87
    :cond_84
    move/from16 v7, v17

    .line 90
    .end local v17    # "sOff":I
    .restart local v7    # "sOff":I
    :cond_86
    and-int/lit16 v1, v12, 0xff

    add-int/2addr v11, v1

    .line 92
    .end local v12    # "len":B
    :cond_89
    add-int/lit8 v11, v11, 0x4

    .line 94
    add-int v1, v4, v11

    .line 96
    .local v1, "matchCopyEnd":I
    add-int/lit8 v12, v6, -0x8

    if-le v1, v12, :cond_b2

    .line 97
    if-gt v1, v6, :cond_99

    .line 100
    invoke-static {v2, v14, v4, v11}, Lcom/tds/lz4/LZ4UnsafeUtils;->safeIncrementalCopy([BIII)V

    move/from16 v16, v8

    goto :goto_b7

    .line 98
    :cond_99
    new-instance v12, Lcom/tds/lz4/LZ4Exception;

    move/from16 v16, v8

    .end local v8    # "matchDec":I
    .local v16, "matchDec":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 102
    .end local v16    # "matchDec":I
    .restart local v8    # "matchDec":I
    :cond_b2
    move/from16 v16, v8

    .end local v8    # "matchDec":I
    .restart local v16    # "matchDec":I
    invoke-static {v2, v14, v4, v1}, Lcom/tds/lz4/LZ4UnsafeUtils;->wildIncrementalCopy([BIII)V

    .line 104
    :goto_b7
    move v8, v1

    .line 105
    .end local v1    # "matchCopyEnd":I
    .end local v4    # "dOff":I
    .end local v9    # "token":I
    .end local v10    # "literalLen":I
    .end local v11    # "matchLen":I
    .end local v13    # "literalCopyEnd":I
    .end local v14    # "matchOff":I
    .end local v16    # "matchDec":I
    .local v8, "dOff":I
    move/from16 v1, p3

    const/4 v4, 0x1

    goto/16 :goto_2b

    .line 81
    .restart local v4    # "dOff":I
    .local v8, "matchDec":I
    .restart local v9    # "token":I
    .restart local v10    # "literalLen":I
    .restart local v13    # "literalCopyEnd":I
    .restart local v14    # "matchOff":I
    :cond_bd
    move/from16 v16, v8

    .end local v8    # "matchDec":I
    .restart local v16    # "matchDec":I
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v4    # "dOff":I
    .end local v14    # "matchOff":I
    .end local v16    # "matchDec":I
    .local v8, "dOff":I
    :cond_d6
    :goto_d6
    if-gt v13, v6, :cond_fc

    .line 60
    add-int v1, v7, v10

    if-ne v1, v5, :cond_e5

    .line 64
    invoke-static {v0, v7, v2, v8, v10}, Lcom/tds/lz4/LZ4UnsafeUtils;->safeArraycopy([BI[BII)V

    .line 65
    add-int/2addr v7, v10

    .line 66
    move v1, v13

    .line 67
    .end local v8    # "dOff":I
    .local v1, "dOff":I
    nop

    .line 108
    .end local v9    # "token":I
    .end local v10    # "literalLen":I
    .end local v13    # "literalCopyEnd":I
    sub-int v4, v1, v3

    return v4

    .line 61
    .end local v1    # "dOff":I
    .restart local v8    # "dOff":I
    .restart local v9    # "token":I
    .restart local v10    # "literalLen":I
    .restart local v13    # "literalCopyEnd":I
    :cond_e5
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_fc
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1}, Lcom/tds/lz4/LZ4Exception;-><init>()V

    throw v1
.end method
