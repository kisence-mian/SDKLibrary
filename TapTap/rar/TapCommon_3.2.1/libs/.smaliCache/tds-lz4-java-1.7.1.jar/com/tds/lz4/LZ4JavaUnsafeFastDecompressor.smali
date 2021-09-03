.class final Lcom/tds/lz4/LZ4JavaUnsafeFastDecompressor;
.super Lcom/tds/lz4/LZ4FastDecompressor;
.source "LZ4JavaUnsafeFastDecompressor.java"


# static fields
.field public static final INSTANCE:Lcom/tds/lz4/LZ4FastDecompressor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/tds/lz4/LZ4JavaUnsafeFastDecompressor;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4JavaUnsafeFastDecompressor;-><init>()V

    sput-object v0, Lcom/tds/lz4/LZ4JavaUnsafeFastDecompressor;->INSTANCE:Lcom/tds/lz4/LZ4FastDecompressor;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/tds/lz4/LZ4FastDecompressor;-><init>()V

    return-void
.end method


# virtual methods
.method public decompress(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I
    .registers 23
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .param p4, "destOff"    # I
    .param p5, "destLen"    # I

    .line 111
    move/from16 v0, p2

    move/from16 v1, p4

    move/from16 v8, p5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v4, v0, v2

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v6, v1, v2

    move-object/from16 v2, p0

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/tds/lz4/LZ4JavaUnsafeFastDecompressor;->decompress([BI[BII)I

    move-result v2

    return v2

    .line 114
    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 115
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .local v2, "src":Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 118
    .end local p3    # "dest":Ljava/nio/ByteBuffer;
    .local v3, "dest":Ljava/nio/ByteBuffer;
    invoke-static {v2, v0}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;I)V

    .line 119
    invoke-static {v3, v1, v8}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 121
    const-string v4, "Malformed input at "

    const/4 v5, 0x1

    if-nez v8, :cond_60

    .line 122
    invoke-static {v2, v0}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v6

    if-nez v6, :cond_49

    .line 125
    return v5

    .line 123
    :cond_49
    new-instance v5, Lcom/tds/lz4/LZ4Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    :cond_60
    add-int v6, v1, v8

    .line 131
    .local v6, "destEnd":I
    move/from16 v7, p2

    .line 132
    .local v7, "sOff":I
    move/from16 v9, p4

    .line 135
    .local v9, "dOff":I
    :goto_66
    invoke-static {v2, v7}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    .line 136
    .local v10, "token":I
    add-int/2addr v7, v5

    .line 139
    ushr-int/lit8 v11, v10, 0x4

    .line 140
    .local v11, "literalLen":I
    const/4 v12, -0x1

    const/16 v13, 0xf

    if-ne v11, v13, :cond_86

    .line 141
    const/4 v14, -0x1

    .line 142
    .local v14, "len":B
    :goto_75
    add-int/lit8 v15, v7, 0x1

    .end local v7    # "sOff":I
    .local v15, "sOff":I
    invoke-static {v2, v7}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v7

    move v14, v7

    if-ne v7, v12, :cond_82

    .line 143
    add-int/lit16 v11, v11, 0xff

    move v7, v15

    goto :goto_75

    .line 145
    :cond_82
    and-int/lit16 v7, v14, 0xff

    add-int/2addr v11, v7

    move v7, v15

    .line 148
    .end local v14    # "len":B
    .end local v15    # "sOff":I
    .restart local v7    # "sOff":I
    :cond_86
    add-int v14, v9, v11

    .line 150
    .local v14, "literalCopyEnd":I
    add-int/lit8 v15, v6, -0x8

    if-le v14, v15, :cond_ae

    .line 151
    if-ne v14, v6, :cond_97

    .line 155
    invoke-static {v2, v7, v3, v9, v11}, Lcom/tds/lz4/LZ4ByteBufferUtils;->safeArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 156
    add-int/2addr v7, v11

    .line 157
    move v4, v14

    .line 158
    .end local v9    # "dOff":I
    .local v4, "dOff":I
    nop

    .line 199
    .end local v10    # "token":I
    .end local v11    # "literalLen":I
    .end local v14    # "literalCopyEnd":I
    sub-int v5, v7, v0

    return v5

    .line 152
    .end local v4    # "dOff":I
    .restart local v9    # "dOff":I
    .restart local v10    # "token":I
    .restart local v11    # "literalLen":I
    .restart local v14    # "literalCopyEnd":I
    :cond_97
    new-instance v5, Lcom/tds/lz4/LZ4Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_ae
    invoke-static {v2, v7, v3, v9, v11}, Lcom/tds/lz4/LZ4ByteBufferUtils;->wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 163
    add-int/2addr v7, v11

    .line 164
    move v9, v14

    .line 167
    invoke-static {v2, v7}, Lcom/tds/util/ByteBufferUtils;->readShortLE(Ljava/nio/ByteBuffer;I)I

    move-result v15

    .line 168
    .local v15, "matchDec":I
    add-int/lit8 v7, v7, 0x2

    .line 169
    sub-int v5, v9, v15

    .line 171
    .local v5, "matchOff":I
    if-lt v5, v1, :cond_108

    .line 175
    and-int/lit8 v12, v10, 0xf

    .line 176
    .local v12, "matchLen":I
    if-ne v12, v13, :cond_d8

    .line 177
    const/4 v13, -0x1

    .line 178
    .local v13, "len":B
    :goto_c2
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "sOff":I
    .local v16, "sOff":I
    invoke-static {v2, v7}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v7

    move v13, v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_d3

    .line 179
    add-int/lit16 v12, v12, 0xff

    move/from16 v0, p2

    move/from16 v7, v16

    goto :goto_c2

    .line 181
    :cond_d3
    and-int/lit16 v0, v13, 0xff

    add-int/2addr v12, v0

    move/from16 v7, v16

    .line 183
    .end local v13    # "len":B
    .end local v16    # "sOff":I
    .restart local v7    # "sOff":I
    :cond_d8
    add-int/lit8 v12, v12, 0x4

    .line 185
    add-int v0, v9, v12

    .line 187
    .local v0, "matchCopyEnd":I
    add-int/lit8 v13, v6, -0x8

    if-le v0, v13, :cond_fd

    .line 188
    if-gt v0, v6, :cond_e6

    .line 191
    invoke-static {v3, v5, v9, v12}, Lcom/tds/lz4/LZ4ByteBufferUtils;->safeIncrementalCopy(Ljava/nio/ByteBuffer;III)V

    goto :goto_100

    .line 189
    :cond_e6
    new-instance v13, Lcom/tds/lz4/LZ4Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 193
    :cond_fd
    invoke-static {v3, v5, v9, v0}, Lcom/tds/lz4/LZ4ByteBufferUtils;->wildIncrementalCopy(Ljava/nio/ByteBuffer;III)V

    .line 195
    :goto_100
    move v9, v0

    .line 196
    .end local v0    # "matchCopyEnd":I
    .end local v5    # "matchOff":I
    .end local v10    # "token":I
    .end local v11    # "literalLen":I
    .end local v12    # "matchLen":I
    .end local v14    # "literalCopyEnd":I
    .end local v15    # "matchDec":I
    move/from16 v0, p2

    move/from16 v1, p4

    const/4 v5, 0x1

    goto/16 :goto_66

    .line 172
    .restart local v5    # "matchOff":I
    .restart local v10    # "token":I
    .restart local v11    # "literalLen":I
    .restart local v14    # "literalCopyEnd":I
    .restart local v15    # "matchDec":I
    :cond_108
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decompress([BI[BII)I
    .registers 23
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "dest"    # [B
    .param p4, "destOff"    # I
    .param p5, "destLen"    # I

    .line 23
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p2}, Lcom/tds/util/UnsafeUtils;->checkRange([BI)V

    .line 24
    invoke-static/range {p3 .. p5}, Lcom/tds/util/UnsafeUtils;->checkRange([BII)V

    .line 26
    const-string v4, "Malformed input at "

    const/4 v5, 0x1

    if-nez p5, :cond_31

    .line 27
    invoke-static/range {p1 .. p2}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v6

    if-nez v6, :cond_1a

    .line 30
    return v5

    .line 28
    :cond_1a
    new-instance v5, Lcom/tds/lz4/LZ4Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 34
    :cond_31
    add-int v6, v3, p5

    .line 36
    .local v6, "destEnd":I
    move/from16 v7, p2

    .line 37
    .local v7, "sOff":I
    move/from16 v8, p4

    .line 40
    .local v8, "dOff":I
    :goto_37
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    .line 41
    .local v9, "token":I
    add-int/2addr v7, v5

    .line 44
    ushr-int/lit8 v10, v9, 0x4

    .line 45
    .local v10, "literalLen":I
    const/4 v11, -0x1

    const/16 v12, 0xf

    if-ne v10, v12, :cond_57

    .line 46
    const/4 v13, -0x1

    .line 47
    .local v13, "len":B
    :goto_46
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "sOff":I
    .local v14, "sOff":I
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v7

    move v13, v7

    if-ne v7, v11, :cond_53

    .line 48
    add-int/lit16 v10, v10, 0xff

    move v7, v14

    goto :goto_46

    .line 50
    :cond_53
    and-int/lit16 v7, v13, 0xff

    add-int/2addr v10, v7

    move v7, v14

    .line 53
    .end local v13    # "len":B
    .end local v14    # "sOff":I
    .restart local v7    # "sOff":I
    :cond_57
    add-int v13, v8, v10

    .line 55
    .local v13, "literalCopyEnd":I
    add-int/lit8 v14, v6, -0x8

    if-le v13, v14, :cond_7f

    .line 56
    if-ne v13, v6, :cond_68

    .line 60
    invoke-static {v0, v7, v2, v8, v10}, Lcom/tds/lz4/LZ4UnsafeUtils;->safeArraycopy([BI[BII)V

    .line 61
    add-int/2addr v7, v10

    .line 62
    move v4, v13

    .line 63
    .end local v8    # "dOff":I
    .local v4, "dOff":I
    nop

    .line 104
    .end local v9    # "token":I
    .end local v10    # "literalLen":I
    .end local v13    # "literalCopyEnd":I
    sub-int v5, v7, v1

    return v5

    .line 57
    .end local v4    # "dOff":I
    .restart local v8    # "dOff":I
    .restart local v9    # "token":I
    .restart local v10    # "literalLen":I
    .restart local v13    # "literalCopyEnd":I
    :cond_68
    new-instance v5, Lcom/tds/lz4/LZ4Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 67
    :cond_7f
    invoke-static {v0, v7, v2, v8, v10}, Lcom/tds/lz4/LZ4UnsafeUtils;->wildArraycopy([BI[BII)V

    .line 68
    add-int/2addr v7, v10

    .line 69
    move v8, v13

    .line 72
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readShortLE([BI)I

    move-result v14

    .line 73
    .local v14, "matchDec":I
    add-int/lit8 v7, v7, 0x2

    .line 74
    sub-int v15, v8, v14

    .line 76
    .local v15, "matchOff":I
    if-lt v15, v3, :cond_d4

    .line 80
    and-int/lit8 v5, v9, 0xf

    .line 81
    .local v5, "matchLen":I
    if-ne v5, v12, :cond_a6

    .line 82
    const/4 v12, -0x1

    .line 83
    .local v12, "len":B
    :goto_93
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "sOff":I
    .local v16, "sOff":I
    invoke-static {v0, v7}, Lcom/tds/util/UnsafeUtils;->readByte([BI)B

    move-result v7

    move v12, v7

    if-ne v7, v11, :cond_a1

    .line 84
    add-int/lit16 v5, v5, 0xff

    move/from16 v7, v16

    goto :goto_93

    .line 86
    :cond_a1
    and-int/lit16 v7, v12, 0xff

    add-int/2addr v5, v7

    move/from16 v7, v16

    .line 88
    .end local v12    # "len":B
    .end local v16    # "sOff":I
    .restart local v7    # "sOff":I
    :cond_a6
    add-int/lit8 v5, v5, 0x4

    .line 90
    add-int v11, v8, v5

    .line 92
    .local v11, "matchCopyEnd":I
    add-int/lit8 v12, v6, -0x8

    if-le v11, v12, :cond_cb

    .line 93
    if-gt v11, v6, :cond_b4

    .line 96
    invoke-static {v2, v15, v8, v5}, Lcom/tds/lz4/LZ4UnsafeUtils;->safeIncrementalCopy([BIII)V

    goto :goto_ce

    .line 94
    :cond_b4
    new-instance v12, Lcom/tds/lz4/LZ4Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 98
    :cond_cb
    invoke-static {v2, v15, v8, v11}, Lcom/tds/lz4/LZ4UnsafeUtils;->wildIncrementalCopy([BIII)V

    .line 100
    :goto_ce
    move v8, v11

    .line 101
    .end local v5    # "matchLen":I
    .end local v9    # "token":I
    .end local v10    # "literalLen":I
    .end local v11    # "matchCopyEnd":I
    .end local v13    # "literalCopyEnd":I
    .end local v14    # "matchDec":I
    .end local v15    # "matchOff":I
    move-object/from16 v0, p1

    const/4 v5, 0x1

    goto/16 :goto_37

    .line 77
    .restart local v9    # "token":I
    .restart local v10    # "literalLen":I
    .restart local v13    # "literalCopyEnd":I
    .restart local v14    # "matchDec":I
    .restart local v15    # "matchOff":I
    :cond_d4
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
