.class final Lcom/tds/lz4/LZ4JavaSafeCompressor;
.super Lcom/tds/lz4/LZ4Compressor;
.source "LZ4JavaSafeCompressor.java"


# static fields
.field public static final INSTANCE:Lcom/tds/lz4/LZ4Compressor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/tds/lz4/LZ4JavaSafeCompressor;

    invoke-direct {v0}, Lcom/tds/lz4/LZ4JavaSafeCompressor;-><init>()V

    sput-object v0, Lcom/tds/lz4/LZ4JavaSafeCompressor;->INSTANCE:Lcom/tds/lz4/LZ4Compressor;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/tds/lz4/LZ4Compressor;-><init>()V

    return-void
.end method

.method static compress64k(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 31
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I
    .param p3, "dest"    # Ljava/nio/ByteBuffer;
    .param p4, "destOff"    # I
    .param p5, "destEnd"    # I

    .line 264
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    add-int v11, v7, v8

    .line 265
    .local v11, "srcEnd":I
    add-int/lit8 v12, v11, -0x5

    .line 266
    .local v12, "srcLimit":I
    add-int/lit8 v13, v11, -0xc

    .line 268
    .local v13, "mflimit":I
    move/from16 v0, p1

    .local v0, "sOff":I
    move/from16 v1, p4

    .line 270
    .local v1, "dOff":I
    move v2, v0

    .line 272
    .local v2, "anchor":I
    const/16 v3, 0xd

    if-lt v8, v3, :cond_135

    .line 274
    const/16 v3, 0x2000

    new-array v3, v3, [S

    .line 276
    .local v3, "hashTable":[S
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v4, v2

    .line 282
    .end local v1    # "dOff":I
    .end local v2    # "anchor":I
    .local v4, "anchor":I
    .local v5, "dOff":I
    :goto_21
    move v1, v0

    .line 285
    .local v1, "forwardOff":I
    const/4 v2, 0x1

    .line 286
    .local v2, "step":I
    sget v14, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/4 v15, 0x1

    shl-int v14, v15, v14

    .line 288
    .local v14, "searchMatchNb":I
    :goto_28
    move v0, v1

    .line 289
    add-int/2addr v1, v2

    .line 290
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "searchMatchNb":I
    .local v15, "searchMatchNb":I
    sget v16, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int v2, v14, v16

    .line 292
    if-le v1, v13, :cond_37

    .line 293
    move v8, v0

    move v14, v4

    move v10, v5

    goto/16 :goto_138

    .line 296
    :cond_37
    invoke-static {v6, v0}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v14

    invoke-static {v14}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v14

    .line 297
    .local v14, "h":I
    invoke-static {v3, v14}, Lcom/tds/util/SafeUtils;->readShort([SI)I

    move-result v16

    move/from16 v17, v1

    .end local v1    # "forwardOff":I
    .local v17, "forwardOff":I
    add-int v1, v7, v16

    .line 298
    .local v1, "ref":I
    move/from16 v16, v2

    .end local v2    # "step":I
    .local v16, "step":I
    sub-int v2, v0, v7

    invoke-static {v3, v14, v2}, Lcom/tds/util/SafeUtils;->writeShort([SII)V

    .line 299
    .end local v14    # "h":I
    invoke-static {v6, v1, v0}, Lcom/tds/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 302
    invoke-static {v6, v1, v0, v7, v4}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytesBackward(Ljava/nio/ByteBuffer;IIII)I

    move-result v2

    .line 303
    .local v2, "excess":I
    sub-int/2addr v0, v2

    .line 304
    sub-int/2addr v1, v2

    .line 307
    sub-int v14, v0, v4

    .line 310
    .local v14, "runLen":I
    move/from16 v18, v0

    .end local v0    # "sOff":I
    .local v18, "sOff":I
    add-int/lit8 v0, v5, 0x1

    .line 312
    .local v0, "dOff":I
    .local v5, "tokenOff":I
    add-int v19, v0, v14

    add-int/lit8 v19, v19, 0x8

    ushr-int/lit8 v20, v14, 0x8

    move/from16 v21, v1

    .end local v1    # "ref":I
    .local v21, "ref":I
    add-int v1, v19, v20

    move/from16 v19, v2

    .end local v2    # "excess":I
    .local v19, "excess":I
    const-string v2, "maxDestLen is too small"

    if-gt v1, v10, :cond_122

    .line 316
    const/16 v1, 0xf

    if-lt v14, v1, :cond_80

    .line 317
    const/16 v1, 0xf0

    invoke-static {v9, v5, v1}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 318
    add-int/lit8 v1, v14, -0xf

    invoke-static {v1, v9, v0}, Lcom/tds/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_85

    .line 320
    :cond_80
    shl-int/lit8 v1, v14, 0x4

    invoke-static {v9, v5, v1}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 324
    :goto_85
    invoke-static {v6, v4, v9, v0, v14}, Lcom/tds/lz4/LZ4ByteBufferUtils;->wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 325
    add-int/2addr v0, v14

    move/from16 v1, v21

    .line 329
    .end local v21    # "ref":I
    .restart local v1    # "ref":I
    :goto_8b
    move/from16 v22, v4

    .end local v4    # "anchor":I
    .local v22, "anchor":I
    sub-int v4, v18, v1

    int-to-short v4, v4

    invoke-static {v9, v0, v4}, Lcom/tds/util/ByteBufferUtils;->writeShortLE(Ljava/nio/ByteBuffer;II)V

    .line 330
    add-int/lit8 v0, v0, 0x2

    .line 333
    add-int/lit8 v4, v18, 0x4

    .line 334
    .end local v18    # "sOff":I
    .local v4, "sOff":I
    add-int/lit8 v1, v1, 0x4

    .line 335
    invoke-static {v6, v1, v4, v12}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v8

    .line 336
    .local v8, "matchLen":I
    add-int/lit8 v18, v0, 0x6

    ushr-int/lit8 v21, v8, 0x8

    move/from16 v23, v1

    .end local v1    # "ref":I
    .local v23, "ref":I
    add-int v1, v18, v21

    if-gt v1, v10, :cond_11c

    .line 339
    add-int v1, v4, v8

    .line 342
    .end local v4    # "sOff":I
    .local v1, "sOff":I
    const/16 v4, 0xf

    if-lt v8, v4, :cond_bd

    .line 343
    invoke-static {v9, v5}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v18

    or-int/lit8 v10, v18, 0xf

    invoke-static {v9, v5, v10}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 344
    add-int/lit8 v10, v8, -0xf

    invoke-static {v10, v9, v0}, Lcom/tds/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_c5

    .line 346
    :cond_bd
    invoke-static {v9, v5}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v10

    or-int/2addr v10, v8

    invoke-static {v9, v5, v10}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 350
    :goto_c5
    if-le v1, v13, :cond_cd

    .line 351
    move v2, v1

    .line 352
    .end local v22    # "anchor":I
    .local v2, "anchor":I
    move v10, v0

    move v8, v1

    move v14, v2

    goto/16 :goto_138

    .line 356
    .end local v2    # "anchor":I
    .restart local v22    # "anchor":I
    :cond_cd
    add-int/lit8 v10, v1, -0x2

    invoke-static {v6, v10}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v10

    invoke-static {v10}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v10

    add-int/lit8 v18, v1, -0x2

    sub-int v4, v18, v7

    invoke-static {v3, v10, v4}, Lcom/tds/util/SafeUtils;->writeShort([SII)V

    .line 359
    invoke-static {v6, v1}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v4

    invoke-static {v4}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v4

    .line 360
    .local v4, "h":I
    invoke-static {v3, v4}, Lcom/tds/util/SafeUtils;->readShort([SI)I

    move-result v10

    add-int/2addr v10, v7

    .line 361
    .end local v23    # "ref":I
    .local v10, "ref":I
    move/from16 v18, v5

    .end local v5    # "tokenOff":I
    .local v18, "tokenOff":I
    sub-int v5, v1, v7

    invoke-static {v3, v4, v5}, Lcom/tds/util/SafeUtils;->writeShort([SII)V

    .line 363
    invoke-static {v6, v1, v10}, Lcom/tds/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v5

    if-nez v5, :cond_104

    .line 364
    nop

    .line 372
    .end local v4    # "h":I
    .end local v8    # "matchLen":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "sOff":I
    .local v2, "sOff":I
    move v4, v1

    .line 373
    .end local v10    # "ref":I
    .end local v14    # "runLen":I
    .end local v15    # "searchMatchNb":I
    .end local v16    # "step":I
    .end local v17    # "forwardOff":I
    .end local v18    # "tokenOff":I
    .end local v19    # "excess":I
    .end local v22    # "anchor":I
    .local v4, "anchor":I
    move/from16 v8, p2

    move/from16 v10, p5

    move v5, v0

    move v0, v2

    goto/16 :goto_21

    .line 367
    .end local v2    # "sOff":I
    .restart local v1    # "sOff":I
    .local v4, "h":I
    .restart local v8    # "matchLen":I
    .restart local v10    # "ref":I
    .restart local v14    # "runLen":I
    .restart local v15    # "searchMatchNb":I
    .restart local v16    # "step":I
    .restart local v17    # "forwardOff":I
    .restart local v18    # "tokenOff":I
    .restart local v19    # "excess":I
    .restart local v22    # "anchor":I
    :cond_104
    add-int/lit8 v5, v0, 0x1

    .line 368
    .end local v18    # "tokenOff":I
    .local v0, "tokenOff":I
    .local v5, "dOff":I
    move/from16 v21, v1

    .end local v1    # "sOff":I
    .local v21, "sOff":I
    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 369
    .end local v4    # "h":I
    .end local v8    # "matchLen":I
    move/from16 v8, p2

    move v1, v10

    move/from16 v18, v21

    move/from16 v4, v22

    move/from16 v10, p5

    move/from16 v24, v5

    move v5, v0

    move/from16 v0, v24

    goto/16 :goto_8b

    .line 337
    .end local v10    # "ref":I
    .end local v21    # "sOff":I
    .local v0, "dOff":I
    .local v4, "sOff":I
    .local v5, "tokenOff":I
    .restart local v8    # "matchLen":I
    .restart local v23    # "ref":I
    :cond_11c
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1, v2}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    .end local v8    # "matchLen":I
    .end local v22    # "anchor":I
    .end local v23    # "ref":I
    .local v4, "anchor":I
    .local v18, "sOff":I
    .local v21, "ref":I
    :cond_122
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1, v2}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v14    # "runLen":I
    .end local v18    # "sOff":I
    .end local v19    # "excess":I
    .end local v21    # "ref":I
    .local v0, "sOff":I
    .local v1, "ref":I
    .local v5, "dOff":I
    :cond_128
    move/from16 v22, v4

    .end local v4    # "anchor":I
    .restart local v22    # "anchor":I
    move/from16 v8, p2

    move/from16 v10, p5

    move v14, v15

    move/from16 v2, v16

    move/from16 v1, v17

    goto/16 :goto_28

    .line 272
    .end local v3    # "hashTable":[S
    .end local v5    # "dOff":I
    .end local v15    # "searchMatchNb":I
    .end local v16    # "step":I
    .end local v17    # "forwardOff":I
    .end local v22    # "anchor":I
    .local v1, "dOff":I
    .local v2, "anchor":I
    :cond_135
    move v8, v0

    move v10, v1

    move v14, v2

    .line 376
    .end local v0    # "sOff":I
    .end local v1    # "dOff":I
    .end local v2    # "anchor":I
    .local v8, "sOff":I
    .local v10, "dOff":I
    .local v14, "anchor":I
    :goto_138
    sub-int v2, v11, v14

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tds/lz4/LZ4ByteBufferUtils;->lastLiterals(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 377
    .end local v10    # "dOff":I
    .local v0, "dOff":I
    sub-int v1, v0, p4

    return v1
.end method

.method static compress64k([BII[BII)I
    .registers 31
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I
    .param p3, "dest"    # [B
    .param p4, "destOff"    # I
    .param p5, "destEnd"    # I

    .line 22
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    add-int v11, v7, v8

    .line 23
    .local v11, "srcEnd":I
    add-int/lit8 v12, v11, -0x5

    .line 24
    .local v12, "srcLimit":I
    add-int/lit8 v13, v11, -0xc

    .line 26
    .local v13, "mflimit":I
    move/from16 v0, p1

    .local v0, "sOff":I
    move/from16 v1, p4

    .line 28
    .local v1, "dOff":I
    move v2, v0

    .line 30
    .local v2, "anchor":I
    const/16 v3, 0xd

    if-lt v8, v3, :cond_135

    .line 32
    const/16 v3, 0x2000

    new-array v3, v3, [S

    .line 34
    .local v3, "hashTable":[S
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v4, v2

    .line 40
    .end local v1    # "dOff":I
    .end local v2    # "anchor":I
    .local v4, "anchor":I
    .local v5, "dOff":I
    :goto_21
    move v1, v0

    .line 43
    .local v1, "forwardOff":I
    const/4 v2, 0x1

    .line 44
    .local v2, "step":I
    sget v14, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/4 v15, 0x1

    shl-int v14, v15, v14

    .line 46
    .local v14, "searchMatchNb":I
    :goto_28
    move v0, v1

    .line 47
    add-int/2addr v1, v2

    .line 48
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "searchMatchNb":I
    .local v15, "searchMatchNb":I
    sget v16, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int v2, v14, v16

    .line 50
    if-le v1, v13, :cond_37

    .line 51
    move v8, v0

    move v14, v4

    move v10, v5

    goto/16 :goto_138

    .line 54
    :cond_37
    invoke-static {v6, v0}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v14

    invoke-static {v14}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v14

    .line 55
    .local v14, "h":I
    invoke-static {v3, v14}, Lcom/tds/util/SafeUtils;->readShort([SI)I

    move-result v16

    move/from16 v17, v1

    .end local v1    # "forwardOff":I
    .local v17, "forwardOff":I
    add-int v1, v7, v16

    .line 56
    .local v1, "ref":I
    move/from16 v16, v2

    .end local v2    # "step":I
    .local v16, "step":I
    sub-int v2, v0, v7

    invoke-static {v3, v14, v2}, Lcom/tds/util/SafeUtils;->writeShort([SII)V

    .line 57
    .end local v14    # "h":I
    invoke-static {v6, v1, v0}, Lcom/tds/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v2

    if-eqz v2, :cond_128

    .line 60
    invoke-static {v6, v1, v0, v7, v4}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytesBackward([BIIII)I

    move-result v2

    .line 61
    .local v2, "excess":I
    sub-int/2addr v0, v2

    .line 62
    sub-int/2addr v1, v2

    .line 65
    sub-int v14, v0, v4

    .line 68
    .local v14, "runLen":I
    move/from16 v18, v0

    .end local v0    # "sOff":I
    .local v18, "sOff":I
    add-int/lit8 v0, v5, 0x1

    .line 70
    .local v0, "dOff":I
    .local v5, "tokenOff":I
    add-int v19, v0, v14

    add-int/lit8 v19, v19, 0x8

    ushr-int/lit8 v20, v14, 0x8

    move/from16 v21, v1

    .end local v1    # "ref":I
    .local v21, "ref":I
    add-int v1, v19, v20

    move/from16 v19, v2

    .end local v2    # "excess":I
    .local v19, "excess":I
    const-string v2, "maxDestLen is too small"

    if-gt v1, v10, :cond_122

    .line 74
    const/16 v1, 0xf

    if-lt v14, v1, :cond_80

    .line 75
    const/16 v1, 0xf0

    invoke-static {v9, v5, v1}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 76
    add-int/lit8 v1, v14, -0xf

    invoke-static {v1, v9, v0}, Lcom/tds/lz4/LZ4SafeUtils;->writeLen(I[BI)I

    move-result v0

    goto :goto_85

    .line 78
    :cond_80
    shl-int/lit8 v1, v14, 0x4

    invoke-static {v9, v5, v1}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 82
    :goto_85
    invoke-static {v6, v4, v9, v0, v14}, Lcom/tds/lz4/LZ4SafeUtils;->wildArraycopy([BI[BII)V

    .line 83
    add-int/2addr v0, v14

    move/from16 v1, v21

    .line 87
    .end local v21    # "ref":I
    .restart local v1    # "ref":I
    :goto_8b
    move/from16 v22, v4

    .end local v4    # "anchor":I
    .local v22, "anchor":I
    sub-int v4, v18, v1

    int-to-short v4, v4

    invoke-static {v9, v0, v4}, Lcom/tds/util/SafeUtils;->writeShortLE([BII)V

    .line 88
    add-int/lit8 v0, v0, 0x2

    .line 91
    add-int/lit8 v4, v18, 0x4

    .line 92
    .end local v18    # "sOff":I
    .local v4, "sOff":I
    add-int/lit8 v1, v1, 0x4

    .line 93
    invoke-static {v6, v1, v4, v12}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v8

    .line 94
    .local v8, "matchLen":I
    add-int/lit8 v18, v0, 0x6

    ushr-int/lit8 v21, v8, 0x8

    move/from16 v23, v1

    .end local v1    # "ref":I
    .local v23, "ref":I
    add-int v1, v18, v21

    if-gt v1, v10, :cond_11c

    .line 97
    add-int v1, v4, v8

    .line 100
    .end local v4    # "sOff":I
    .local v1, "sOff":I
    const/16 v4, 0xf

    if-lt v8, v4, :cond_bd

    .line 101
    invoke-static {v9, v5}, Lcom/tds/util/SafeUtils;->readByte([BI)B

    move-result v18

    or-int/lit8 v10, v18, 0xf

    invoke-static {v9, v5, v10}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 102
    add-int/lit8 v10, v8, -0xf

    invoke-static {v10, v9, v0}, Lcom/tds/lz4/LZ4SafeUtils;->writeLen(I[BI)I

    move-result v0

    goto :goto_c5

    .line 104
    :cond_bd
    invoke-static {v9, v5}, Lcom/tds/util/SafeUtils;->readByte([BI)B

    move-result v10

    or-int/2addr v10, v8

    invoke-static {v9, v5, v10}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 108
    :goto_c5
    if-le v1, v13, :cond_cd

    .line 109
    move v2, v1

    .line 110
    .end local v22    # "anchor":I
    .local v2, "anchor":I
    move v10, v0

    move v8, v1

    move v14, v2

    goto/16 :goto_138

    .line 114
    .end local v2    # "anchor":I
    .restart local v22    # "anchor":I
    :cond_cd
    add-int/lit8 v10, v1, -0x2

    invoke-static {v6, v10}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v10

    invoke-static {v10}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v10

    add-int/lit8 v18, v1, -0x2

    sub-int v4, v18, v7

    invoke-static {v3, v10, v4}, Lcom/tds/util/SafeUtils;->writeShort([SII)V

    .line 117
    invoke-static {v6, v1}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v4

    invoke-static {v4}, Lcom/tds/lz4/LZ4Utils;->hash64k(I)I

    move-result v4

    .line 118
    .local v4, "h":I
    invoke-static {v3, v4}, Lcom/tds/util/SafeUtils;->readShort([SI)I

    move-result v10

    add-int/2addr v10, v7

    .line 119
    .end local v23    # "ref":I
    .local v10, "ref":I
    move/from16 v18, v5

    .end local v5    # "tokenOff":I
    .local v18, "tokenOff":I
    sub-int v5, v1, v7

    invoke-static {v3, v4, v5}, Lcom/tds/util/SafeUtils;->writeShort([SII)V

    .line 121
    invoke-static {v6, v1, v10}, Lcom/tds/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v5

    if-nez v5, :cond_104

    .line 122
    nop

    .line 130
    .end local v4    # "h":I
    .end local v8    # "matchLen":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "sOff":I
    .local v2, "sOff":I
    move v4, v1

    .line 131
    .end local v10    # "ref":I
    .end local v14    # "runLen":I
    .end local v15    # "searchMatchNb":I
    .end local v16    # "step":I
    .end local v17    # "forwardOff":I
    .end local v18    # "tokenOff":I
    .end local v19    # "excess":I
    .end local v22    # "anchor":I
    .local v4, "anchor":I
    move/from16 v8, p2

    move/from16 v10, p5

    move v5, v0

    move v0, v2

    goto/16 :goto_21

    .line 125
    .end local v2    # "sOff":I
    .restart local v1    # "sOff":I
    .local v4, "h":I
    .restart local v8    # "matchLen":I
    .restart local v10    # "ref":I
    .restart local v14    # "runLen":I
    .restart local v15    # "searchMatchNb":I
    .restart local v16    # "step":I
    .restart local v17    # "forwardOff":I
    .restart local v18    # "tokenOff":I
    .restart local v19    # "excess":I
    .restart local v22    # "anchor":I
    :cond_104
    add-int/lit8 v5, v0, 0x1

    .line 126
    .end local v18    # "tokenOff":I
    .local v0, "tokenOff":I
    .local v5, "dOff":I
    move/from16 v21, v1

    .end local v1    # "sOff":I
    .local v21, "sOff":I
    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 127
    .end local v4    # "h":I
    .end local v8    # "matchLen":I
    move/from16 v8, p2

    move v1, v10

    move/from16 v18, v21

    move/from16 v4, v22

    move/from16 v10, p5

    move/from16 v24, v5

    move v5, v0

    move/from16 v0, v24

    goto/16 :goto_8b

    .line 95
    .end local v10    # "ref":I
    .end local v21    # "sOff":I
    .local v0, "dOff":I
    .local v4, "sOff":I
    .local v5, "tokenOff":I
    .restart local v8    # "matchLen":I
    .restart local v23    # "ref":I
    :cond_11c
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1, v2}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v8    # "matchLen":I
    .end local v22    # "anchor":I
    .end local v23    # "ref":I
    .local v4, "anchor":I
    .local v18, "sOff":I
    .local v21, "ref":I
    :cond_122
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1, v2}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v14    # "runLen":I
    .end local v18    # "sOff":I
    .end local v19    # "excess":I
    .end local v21    # "ref":I
    .local v0, "sOff":I
    .local v1, "ref":I
    .local v5, "dOff":I
    :cond_128
    move/from16 v22, v4

    .end local v4    # "anchor":I
    .restart local v22    # "anchor":I
    move/from16 v8, p2

    move/from16 v10, p5

    move v14, v15

    move/from16 v2, v16

    move/from16 v1, v17

    goto/16 :goto_28

    .line 30
    .end local v3    # "hashTable":[S
    .end local v5    # "dOff":I
    .end local v15    # "searchMatchNb":I
    .end local v16    # "step":I
    .end local v17    # "forwardOff":I
    .end local v22    # "anchor":I
    .local v1, "dOff":I
    .local v2, "anchor":I
    :cond_135
    move v8, v0

    move v10, v1

    move v14, v2

    .line 134
    .end local v0    # "sOff":I
    .end local v1    # "dOff":I
    .end local v2    # "anchor":I
    .local v8, "sOff":I
    .local v10, "dOff":I
    .local v14, "anchor":I
    :goto_138
    sub-int v2, v11, v14

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tds/lz4/LZ4SafeUtils;->lastLiterals([BII[BII)I

    move-result v0

    .line 135
    .end local v10    # "dOff":I
    .local v0, "dOff":I
    sub-int v1, v0, p4

    return v1
.end method


# virtual methods
.method public compress(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .registers 33
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # Ljava/nio/ByteBuffer;
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 383
    move/from16 v6, p2

    move/from16 v14, p3

    move/from16 v15, p5

    move/from16 v5, p6

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 384
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v9, v6, v0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int v12, v15, v0

    move-object/from16 v7, p0

    move/from16 v10, p3

    move/from16 v13, p6

    invoke-virtual/range {v7 .. v13}, Lcom/tds/lz4/LZ4JavaSafeCompressor;->compress([BII[BII)I

    move-result v0

    return v0

    .line 386
    :cond_33
    invoke-static/range {p1 .. p1}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 387
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .local v13, "src":Ljava/nio/ByteBuffer;
    invoke-static/range {p4 .. p4}, Lcom/tds/util/ByteBufferUtils;->inNativeByteOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 389
    .end local p4    # "dest":Ljava/nio/ByteBuffer;
    .local v12, "dest":Ljava/nio/ByteBuffer;
    invoke-static {v13, v6, v14}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 390
    invoke-static {v12, v15, v5}, Lcom/tds/util/ByteBufferUtils;->checkRange(Ljava/nio/ByteBuffer;II)V

    .line 391
    add-int v11, v15, v5

    .line 393
    .local v11, "destEnd":I
    const v0, 0x1000b

    if-ge v14, v0, :cond_56

    .line 394
    move-object v0, v13

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v12

    move/from16 v4, p5

    move v5, v11

    invoke-static/range {v0 .. v5}, Lcom/tds/lz4/LZ4JavaSafeCompressor;->compress64k(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 397
    :cond_56
    add-int v0, v6, v14

    .line 398
    .local v0, "srcEnd":I
    add-int/lit8 v1, v0, -0x5

    .line 399
    .local v1, "srcLimit":I
    add-int/lit8 v2, v0, -0xc

    .line 401
    .local v2, "mflimit":I
    move/from16 v3, p2

    .local v3, "sOff":I
    move/from16 v4, p5

    .line 402
    .local v4, "dOff":I
    add-int/lit8 v5, v3, 0x1

    .line 404
    .local v3, "anchor":I
    .local v5, "sOff":I
    const/16 v7, 0x1000

    new-array v10, v7, [I

    .line 405
    .local v10, "hashTable":[I
    invoke-static {v10, v3}, Ljava/util/Arrays;->fill([II)V

    .line 411
    :goto_69
    move v7, v5

    .line 414
    .local v7, "forwardOff":I
    const/4 v8, 0x1

    .line 415
    .local v8, "step":I
    sget v9, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/16 v16, 0x1

    shl-int v9, v16, v9

    .line 418
    .local v9, "searchMatchNb":I
    :goto_71
    move v5, v7

    .line 419
    add-int/2addr v7, v8

    .line 420
    add-int/lit8 v16, v9, 0x1

    .end local v9    # "searchMatchNb":I
    .local v16, "searchMatchNb":I
    sget v17, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int v8, v9, v17

    .line 422
    if-le v7, v2, :cond_7f

    .line 423
    move/from16 v24, v1

    goto/16 :goto_114

    .line 426
    :cond_7f
    invoke-static {v13, v5}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v9

    invoke-static {v9}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v9

    .line 427
    .local v9, "h":I
    move/from16 p1, v7

    .end local v7    # "forwardOff":I
    .local p1, "forwardOff":I
    invoke-static {v10, v9}, Lcom/tds/util/SafeUtils;->readInt([II)I

    move-result v7

    .line 428
    .local v7, "ref":I
    move/from16 p4, v8

    .end local v8    # "step":I
    .local p4, "step":I
    sub-int v8, v5, v7

    .line 429
    .local v8, "back":I
    invoke-static {v10, v9, v5}, Lcom/tds/util/SafeUtils;->writeInt([III)V

    .line 430
    .end local v9    # "h":I
    const/high16 v9, 0x10000

    if-ge v8, v9, :cond_193

    invoke-static {v13, v7, v5}, Lcom/tds/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v17

    if-eqz v17, :cond_193

    .line 433
    invoke-static {v13, v7, v5, v6, v3}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytesBackward(Ljava/nio/ByteBuffer;IIII)I

    move-result v17

    .line 434
    .local v17, "excess":I
    sub-int v5, v5, v17

    .line 435
    sub-int v7, v7, v17

    .line 438
    sub-int v9, v5, v3

    .line 441
    .local v9, "runLen":I
    move/from16 v19, v5

    .end local v5    # "sOff":I
    .local v19, "sOff":I
    add-int/lit8 v5, v4, 0x1

    .line 443
    .local v4, "tokenOff":I
    .local v5, "dOff":I
    add-int v20, v5, v9

    add-int/lit8 v20, v20, 0x8

    ushr-int/lit8 v21, v9, 0x8

    add-int v6, v20, v21

    move/from16 v20, v7

    .end local v7    # "ref":I
    .local v20, "ref":I
    const-string v7, "maxDestLen is too small"

    if-gt v6, v11, :cond_18b

    .line 447
    const/16 v6, 0xf

    if-lt v9, v6, :cond_ca

    .line 448
    const/16 v6, 0xf0

    invoke-static {v12, v4, v6}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 449
    add-int/lit8 v6, v9, -0xf

    invoke-static {v6, v12, v5}, Lcom/tds/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v5

    goto :goto_cf

    .line 451
    :cond_ca
    shl-int/lit8 v6, v9, 0x4

    invoke-static {v12, v4, v6}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 455
    :goto_cf
    invoke-static {v13, v3, v12, v5, v9}, Lcom/tds/lz4/LZ4ByteBufferUtils;->wildArraycopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 456
    add-int/2addr v5, v9

    .line 460
    :goto_d3
    invoke-static {v12, v5, v8}, Lcom/tds/util/ByteBufferUtils;->writeShortLE(Ljava/nio/ByteBuffer;II)V

    .line 461
    add-int/lit8 v5, v5, 0x2

    .line 464
    add-int/lit8 v6, v19, 0x4

    .line 465
    .end local v19    # "sOff":I
    .local v6, "sOff":I
    move/from16 v22, v3

    .end local v3    # "anchor":I
    .local v22, "anchor":I
    add-int/lit8 v3, v20, 0x4

    invoke-static {v13, v3, v6, v1}, Lcom/tds/lz4/LZ4ByteBufferUtils;->commonBytes(Ljava/nio/ByteBuffer;III)I

    move-result v3

    .line 466
    .local v3, "matchLen":I
    add-int/lit8 v19, v5, 0x6

    ushr-int/lit8 v23, v3, 0x8

    move/from16 v24, v1

    .end local v1    # "srcLimit":I
    .local v24, "srcLimit":I
    add-int v1, v19, v23

    if-gt v1, v11, :cond_183

    .line 469
    add-int v1, v6, v3

    .line 472
    .end local v6    # "sOff":I
    .local v1, "sOff":I
    const/16 v6, 0xf

    if-lt v3, v6, :cond_104

    .line 473
    invoke-static {v12, v4}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v19

    move/from16 v21, v8

    .end local v8    # "back":I
    .local v21, "back":I
    or-int/lit8 v8, v19, 0xf

    invoke-static {v12, v4, v8}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 474
    add-int/lit8 v8, v3, -0xf

    invoke-static {v8, v12, v5}, Lcom/tds/lz4/LZ4ByteBufferUtils;->writeLen(ILjava/nio/ByteBuffer;I)I

    move-result v5

    goto :goto_10e

    .line 476
    .end local v21    # "back":I
    .restart local v8    # "back":I
    :cond_104
    move/from16 v21, v8

    .end local v8    # "back":I
    .restart local v21    # "back":I
    invoke-static {v12, v4}, Lcom/tds/util/ByteBufferUtils;->readByte(Ljava/nio/ByteBuffer;I)B

    move-result v8

    or-int/2addr v8, v3

    invoke-static {v12, v4, v8}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 480
    :goto_10e
    if-le v1, v2, :cond_127

    .line 481
    move v6, v1

    .line 482
    .end local v22    # "anchor":I
    .local v6, "anchor":I
    move v4, v5

    move v3, v6

    move v5, v1

    .line 506
    .end local v1    # "sOff":I
    .end local v6    # "anchor":I
    .end local v9    # "runLen":I
    .end local v16    # "searchMatchNb":I
    .end local v17    # "excess":I
    .end local v20    # "ref":I
    .end local v21    # "back":I
    .end local p1    # "forwardOff":I
    .end local p4    # "step":I
    .local v3, "anchor":I
    .local v4, "dOff":I
    .local v5, "sOff":I
    :goto_114
    sub-int v9, v0, v3

    move-object v7, v13

    move v8, v3

    move-object v1, v10

    .end local v10    # "hashTable":[I
    .local v1, "hashTable":[I
    move-object v10, v12

    move/from16 v23, v11

    .end local v11    # "destEnd":I
    .local v23, "destEnd":I
    move v11, v4

    move-object v6, v12

    .end local v12    # "dest":Ljava/nio/ByteBuffer;
    .local v6, "dest":Ljava/nio/ByteBuffer;
    move/from16 v12, v23

    invoke-static/range {v7 .. v12}, Lcom/tds/lz4/LZ4ByteBufferUtils;->lastLiterals(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v4

    .line 507
    sub-int v7, v4, v15

    return v7

    .line 486
    .end local v6    # "dest":Ljava/nio/ByteBuffer;
    .end local v23    # "destEnd":I
    .local v1, "sOff":I
    .local v3, "matchLen":I
    .local v4, "tokenOff":I
    .local v5, "dOff":I
    .restart local v9    # "runLen":I
    .restart local v10    # "hashTable":[I
    .restart local v11    # "destEnd":I
    .restart local v12    # "dest":Ljava/nio/ByteBuffer;
    .restart local v16    # "searchMatchNb":I
    .restart local v17    # "excess":I
    .restart local v20    # "ref":I
    .restart local v21    # "back":I
    .restart local v22    # "anchor":I
    .restart local p1    # "forwardOff":I
    .restart local p4    # "step":I
    :cond_127
    move/from16 v23, v11

    move-object v11, v10

    move-object v10, v12

    .end local v12    # "dest":Ljava/nio/ByteBuffer;
    .local v10, "dest":Ljava/nio/ByteBuffer;
    .local v11, "hashTable":[I
    .restart local v23    # "destEnd":I
    add-int/lit8 v8, v1, -0x2

    invoke-static {v13, v8}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v8

    invoke-static {v8}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v8

    add-int/lit8 v12, v1, -0x2

    invoke-static {v11, v8, v12}, Lcom/tds/util/SafeUtils;->writeInt([III)V

    .line 489
    invoke-static {v13, v1}, Lcom/tds/util/ByteBufferUtils;->readInt(Ljava/nio/ByteBuffer;I)I

    move-result v8

    invoke-static {v8}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v8

    .line 490
    .local v8, "h":I
    invoke-static {v11, v8}, Lcom/tds/util/SafeUtils;->readInt([II)I

    move-result v12

    .line 491
    .end local v20    # "ref":I
    .local v12, "ref":I
    invoke-static {v11, v8, v1}, Lcom/tds/util/SafeUtils;->writeInt([III)V

    .line 492
    sub-int v6, v1, v12

    .line 494
    .end local v21    # "back":I
    .local v6, "back":I
    move/from16 v25, v0

    const/high16 v0, 0x10000

    .end local v0    # "srcEnd":I
    .local v25, "srcEnd":I
    if-ge v6, v0, :cond_172

    invoke-static {v13, v12, v1}, Lcom/tds/lz4/LZ4ByteBufferUtils;->readIntEquals(Ljava/nio/ByteBuffer;II)Z

    move-result v18

    if-nez v18, :cond_158

    .line 495
    goto :goto_172

    .line 498
    :cond_158
    add-int/lit8 v18, v5, 0x1

    .end local v5    # "dOff":I
    .local v18, "dOff":I
    move v4, v5

    .line 499
    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Lcom/tds/util/ByteBufferUtils;->writeByte(Ljava/nio/ByteBuffer;II)V

    .line 500
    .end local v3    # "matchLen":I
    .end local v8    # "h":I
    move/from16 v19, v1

    move v8, v6

    move/from16 v20, v12

    move/from16 v5, v18

    move/from16 v3, v22

    move/from16 v1, v24

    move/from16 v0, v25

    move-object v12, v10

    move-object v10, v11

    move/from16 v11, v23

    goto/16 :goto_d3

    .line 503
    .end local v18    # "dOff":I
    .restart local v5    # "dOff":I
    :cond_172
    :goto_172
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "sOff":I
    .local v0, "sOff":I
    move v3, v1

    .line 504
    .end local v4    # "tokenOff":I
    .end local v6    # "back":I
    .end local v9    # "runLen":I
    .end local v12    # "ref":I
    .end local v16    # "searchMatchNb":I
    .end local v17    # "excess":I
    .end local v22    # "anchor":I
    .end local p1    # "forwardOff":I
    .end local p4    # "step":I
    .local v3, "anchor":I
    move/from16 v6, p2

    move v4, v5

    move-object v12, v10

    move-object v10, v11

    move/from16 v11, v23

    move/from16 v1, v24

    move v5, v0

    move/from16 v0, v25

    goto/16 :goto_69

    .line 467
    .end local v23    # "destEnd":I
    .end local v25    # "srcEnd":I
    .local v0, "srcEnd":I
    .local v3, "matchLen":I
    .restart local v4    # "tokenOff":I
    .local v6, "sOff":I
    .local v8, "back":I
    .restart local v9    # "runLen":I
    .local v10, "hashTable":[I
    .local v11, "destEnd":I
    .local v12, "dest":Ljava/nio/ByteBuffer;
    .restart local v16    # "searchMatchNb":I
    .restart local v17    # "excess":I
    .restart local v20    # "ref":I
    .restart local v22    # "anchor":I
    .restart local p1    # "forwardOff":I
    .restart local p4    # "step":I
    :cond_183
    move/from16 v25, v0

    .end local v0    # "srcEnd":I
    .restart local v25    # "srcEnd":I
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v0, v7}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    .end local v6    # "sOff":I
    .end local v22    # "anchor":I
    .end local v24    # "srcLimit":I
    .end local v25    # "srcEnd":I
    .restart local v0    # "srcEnd":I
    .local v1, "srcLimit":I
    .local v3, "anchor":I
    .restart local v19    # "sOff":I
    :cond_18b
    move/from16 v25, v0

    .end local v0    # "srcEnd":I
    .restart local v25    # "srcEnd":I
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v0, v7}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    .end local v9    # "runLen":I
    .end local v17    # "excess":I
    .end local v19    # "sOff":I
    .end local v20    # "ref":I
    .end local v25    # "srcEnd":I
    .restart local v0    # "srcEnd":I
    .local v4, "dOff":I
    .local v5, "sOff":I
    .restart local v7    # "ref":I
    :cond_193
    move/from16 v25, v0

    move/from16 v24, v1

    move/from16 v22, v3

    move/from16 v23, v11

    move-object v11, v10

    move-object v10, v12

    .line 418
    .end local v0    # "srcEnd":I
    .end local v1    # "srcLimit":I
    .end local v3    # "anchor":I
    .end local v7    # "ref":I
    .end local v8    # "back":I
    .end local v12    # "dest":Ljava/nio/ByteBuffer;
    .local v10, "dest":Ljava/nio/ByteBuffer;
    .local v11, "hashTable":[I
    .restart local v22    # "anchor":I
    .restart local v23    # "destEnd":I
    .restart local v24    # "srcLimit":I
    .restart local v25    # "srcEnd":I
    move/from16 v7, p1

    move/from16 v6, p2

    move/from16 v8, p4

    move-object v12, v10

    move-object v10, v11

    move/from16 v9, v16

    move/from16 v3, v22

    move/from16 v11, v23

    move/from16 v1, v24

    move/from16 v0, v25

    goto/16 :goto_71
.end method

.method public compress([BII[BII)I
    .registers 34
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I
    .param p4, "dest"    # [B
    .param p5, "destOff"    # I
    .param p6, "maxDestLen"    # I

    .line 141
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {p1 .. p3}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 142
    invoke-static/range {p4 .. p6}, Lcom/tds/util/SafeUtils;->checkRange([BII)V

    .line 143
    add-int v10, p5, p6

    .line 145
    .local v10, "destEnd":I
    const v0, 0x1000b

    if-ge v8, v0, :cond_25

    .line 146
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/tds/lz4/LZ4JavaSafeCompressor;->compress64k([BII[BII)I

    move-result v0

    return v0

    .line 149
    :cond_25
    add-int v11, v7, v8

    .line 150
    .local v11, "srcEnd":I
    add-int/lit8 v12, v11, -0x5

    .line 151
    .local v12, "srcLimit":I
    add-int/lit8 v13, v11, -0xc

    .line 153
    .local v13, "mflimit":I
    move/from16 v0, p2

    .local v0, "sOff":I
    move/from16 v1, p5

    .line 154
    .local v1, "dOff":I
    add-int/lit8 v2, v0, 0x1

    .line 156
    .local v0, "anchor":I
    .local v2, "sOff":I
    const/16 v3, 0x1000

    new-array v14, v3, [I

    .line 157
    .local v14, "hashTable":[I
    invoke-static {v14, v0}, Ljava/util/Arrays;->fill([II)V

    .line 163
    :goto_38
    move v3, v2

    .line 166
    .local v3, "forwardOff":I
    const/4 v4, 0x1

    .line 167
    .local v4, "step":I
    sget v5, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    const/4 v15, 0x1

    shl-int v5, v15, v5

    .line 170
    .local v5, "searchMatchNb":I
    :goto_3f
    move v2, v3

    .line 171
    add-int/2addr v3, v4

    .line 172
    add-int/lit8 v15, v5, 0x1

    .end local v5    # "searchMatchNb":I
    .local v15, "searchMatchNb":I
    sget v16, Lcom/tds/lz4/LZ4Constants;->SKIP_STRENGTH:I

    ushr-int v4, v5, v16

    .line 174
    if-le v3, v13, :cond_4f

    .line 175
    move v7, v0

    move v15, v1

    move/from16 v16, v2

    goto/16 :goto_ea

    .line 178
    :cond_4f
    invoke-static {v6, v2}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v5

    invoke-static {v5}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v5

    .line 179
    .local v5, "h":I
    move/from16 v16, v3

    .end local v3    # "forwardOff":I
    .local v16, "forwardOff":I
    invoke-static {v14, v5}, Lcom/tds/util/SafeUtils;->readInt([II)I

    move-result v3

    .line 180
    .local v3, "ref":I
    move/from16 v17, v4

    .end local v4    # "step":I
    .local v17, "step":I
    sub-int v4, v2, v3

    .line 181
    .local v4, "back":I
    invoke-static {v14, v5, v2}, Lcom/tds/util/SafeUtils;->writeInt([III)V

    .line 182
    .end local v5    # "h":I
    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_154

    invoke-static {v6, v3, v2}, Lcom/tds/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v18

    if-eqz v18, :cond_154

    .line 185
    invoke-static {v6, v3, v2, v7, v0}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytesBackward([BIIII)I

    move-result v18

    .line 186
    .local v18, "excess":I
    sub-int v2, v2, v18

    .line 187
    sub-int v3, v3, v18

    .line 190
    sub-int v5, v2, v0

    .line 193
    .local v5, "runLen":I
    move/from16 v20, v2

    .end local v2    # "sOff":I
    .local v20, "sOff":I
    add-int/lit8 v2, v1, 0x1

    .line 195
    .local v1, "tokenOff":I
    .local v2, "dOff":I
    add-int v21, v2, v5

    add-int/lit8 v21, v21, 0x8

    ushr-int/lit8 v22, v5, 0x8

    move/from16 v23, v3

    .end local v3    # "ref":I
    .local v23, "ref":I
    add-int v3, v21, v22

    move/from16 v21, v4

    .end local v4    # "back":I
    .local v21, "back":I
    const-string v4, "maxDestLen is too small"

    if-gt v3, v10, :cond_14c

    .line 199
    const/16 v3, 0xf

    if-lt v5, v3, :cond_9c

    .line 200
    const/16 v3, 0xf0

    invoke-static {v9, v1, v3}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 201
    add-int/lit8 v3, v5, -0xf

    invoke-static {v3, v9, v2}, Lcom/tds/lz4/LZ4SafeUtils;->writeLen(I[BI)I

    move-result v2

    goto :goto_a1

    .line 203
    :cond_9c
    shl-int/lit8 v3, v5, 0x4

    invoke-static {v9, v1, v3}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 207
    :goto_a1
    invoke-static {v6, v0, v9, v2, v5}, Lcom/tds/lz4/LZ4SafeUtils;->wildArraycopy([BI[BII)V

    .line 208
    add-int/2addr v2, v5

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v3, v23

    .line 212
    .end local v21    # "back":I
    .end local v23    # "ref":I
    .local v0, "back":I
    .restart local v3    # "ref":I
    .local v24, "anchor":I
    :goto_ab
    invoke-static {v9, v2, v0}, Lcom/tds/util/SafeUtils;->writeShortLE([BII)V

    .line 213
    add-int/lit8 v2, v2, 0x2

    .line 216
    move/from16 v21, v0

    .end local v0    # "back":I
    .restart local v21    # "back":I
    add-int/lit8 v0, v20, 0x4

    .line 217
    .end local v20    # "sOff":I
    .local v0, "sOff":I
    move/from16 v25, v5

    .end local v5    # "runLen":I
    .local v25, "runLen":I
    add-int/lit8 v5, v3, 0x4

    invoke-static {v6, v5, v0, v12}, Lcom/tds/lz4/LZ4SafeUtils;->commonBytes([BIII)I

    move-result v5

    .line 218
    .local v5, "matchLen":I
    add-int/lit8 v20, v2, 0x6

    ushr-int/lit8 v23, v5, 0x8

    move/from16 v26, v3

    .end local v3    # "ref":I
    .local v26, "ref":I
    add-int v3, v20, v23

    if-gt v3, v10, :cond_144

    .line 221
    add-int/2addr v0, v5

    .line 224
    const/16 v3, 0xf

    if-lt v5, v3, :cond_db

    .line 225
    invoke-static {v9, v1}, Lcom/tds/util/SafeUtils;->readByte([BI)B

    move-result v20

    or-int/lit8 v7, v20, 0xf

    invoke-static {v9, v1, v7}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 226
    add-int/lit8 v7, v5, -0xf

    invoke-static {v7, v9, v2}, Lcom/tds/lz4/LZ4SafeUtils;->writeLen(I[BI)I

    move-result v2

    goto :goto_e3

    .line 228
    :cond_db
    invoke-static {v9, v1}, Lcom/tds/util/SafeUtils;->readByte([BI)B

    move-result v7

    or-int/2addr v7, v5

    invoke-static {v9, v1, v7}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 232
    :goto_e3
    if-le v0, v13, :cond_fa

    .line 233
    move v3, v0

    .line 234
    .end local v24    # "anchor":I
    .local v3, "anchor":I
    move/from16 v16, v0

    move v15, v2

    move v7, v3

    .line 258
    .end local v0    # "sOff":I
    .end local v1    # "tokenOff":I
    .end local v2    # "dOff":I
    .end local v3    # "anchor":I
    .end local v5    # "matchLen":I
    .end local v17    # "step":I
    .end local v18    # "excess":I
    .end local v21    # "back":I
    .end local v25    # "runLen":I
    .end local v26    # "ref":I
    .local v7, "anchor":I
    .local v15, "dOff":I
    .local v16, "sOff":I
    :goto_ea
    sub-int v2, v11, v7

    move-object/from16 v0, p1

    move v1, v7

    move-object/from16 v3, p4

    move v4, v15

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/tds/lz4/LZ4SafeUtils;->lastLiterals([BII[BII)I

    move-result v0

    .line 259
    .end local v15    # "dOff":I
    .local v0, "dOff":I
    sub-int v1, v0, p5

    return v1

    .line 238
    .end local v7    # "anchor":I
    .local v0, "sOff":I
    .restart local v1    # "tokenOff":I
    .restart local v2    # "dOff":I
    .restart local v5    # "matchLen":I
    .local v15, "searchMatchNb":I
    .local v16, "forwardOff":I
    .restart local v17    # "step":I
    .restart local v18    # "excess":I
    .restart local v21    # "back":I
    .restart local v24    # "anchor":I
    .restart local v25    # "runLen":I
    .restart local v26    # "ref":I
    :cond_fa
    add-int/lit8 v7, v0, -0x2

    invoke-static {v6, v7}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v7

    invoke-static {v7}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v7

    add-int/lit8 v3, v0, -0x2

    invoke-static {v14, v7, v3}, Lcom/tds/util/SafeUtils;->writeInt([III)V

    .line 241
    invoke-static {v6, v0}, Lcom/tds/util/SafeUtils;->readInt([BI)I

    move-result v3

    invoke-static {v3}, Lcom/tds/lz4/LZ4Utils;->hash(I)I

    move-result v3

    .line 242
    .local v3, "h":I
    invoke-static {v14, v3}, Lcom/tds/util/SafeUtils;->readInt([II)I

    move-result v7

    .line 243
    .end local v26    # "ref":I
    .local v7, "ref":I
    invoke-static {v14, v3, v0}, Lcom/tds/util/SafeUtils;->writeInt([III)V

    .line 244
    move/from16 v20, v1

    .end local v1    # "tokenOff":I
    .local v20, "tokenOff":I
    sub-int v1, v0, v7

    .line 246
    .end local v21    # "back":I
    .local v1, "back":I
    move/from16 v23, v3

    const/high16 v3, 0x10000

    .end local v3    # "h":I
    .local v23, "h":I
    if-ge v1, v3, :cond_13c

    invoke-static {v6, v7, v0}, Lcom/tds/lz4/LZ4SafeUtils;->readIntEquals([BII)Z

    move-result v19

    if-nez v19, :cond_129

    .line 247
    goto :goto_13c

    .line 250
    :cond_129
    add-int/lit8 v19, v2, 0x1

    .line 251
    .end local v20    # "tokenOff":I
    .local v2, "tokenOff":I
    .local v19, "dOff":I
    const/4 v3, 0x0

    invoke-static {v9, v2, v3}, Lcom/tds/util/SafeUtils;->writeByte([BII)V

    .line 252
    .end local v5    # "matchLen":I
    .end local v23    # "h":I
    move/from16 v20, v0

    move v0, v1

    move v1, v2

    move v3, v7

    move/from16 v2, v19

    move/from16 v5, v25

    move/from16 v7, p2

    goto/16 :goto_ab

    .line 255
    .end local v19    # "dOff":I
    .local v2, "dOff":I
    .restart local v20    # "tokenOff":I
    :cond_13c
    :goto_13c
    add-int/lit8 v3, v0, 0x1

    .line 256
    .end local v1    # "back":I
    .end local v7    # "ref":I
    .end local v15    # "searchMatchNb":I
    .end local v16    # "forwardOff":I
    .end local v17    # "step":I
    .end local v18    # "excess":I
    .end local v20    # "tokenOff":I
    .end local v24    # "anchor":I
    .end local v25    # "runLen":I
    .local v0, "anchor":I
    .local v3, "sOff":I
    move/from16 v7, p2

    move v1, v2

    move v2, v3

    goto/16 :goto_38

    .line 219
    .end local v3    # "sOff":I
    .local v0, "sOff":I
    .local v1, "tokenOff":I
    .restart local v5    # "matchLen":I
    .restart local v15    # "searchMatchNb":I
    .restart local v16    # "forwardOff":I
    .restart local v17    # "step":I
    .restart local v18    # "excess":I
    .restart local v21    # "back":I
    .restart local v24    # "anchor":I
    .restart local v25    # "runLen":I
    .restart local v26    # "ref":I
    :cond_144
    move/from16 v20, v1

    .end local v1    # "tokenOff":I
    .restart local v20    # "tokenOff":I
    new-instance v1, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v1, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v24    # "anchor":I
    .end local v25    # "runLen":I
    .end local v26    # "ref":I
    .local v0, "anchor":I
    .restart local v1    # "tokenOff":I
    .local v5, "runLen":I
    .local v20, "sOff":I
    .local v23, "ref":I
    :cond_14c
    move/from16 v24, v0

    .end local v0    # "anchor":I
    .restart local v24    # "anchor":I
    new-instance v0, Lcom/tds/lz4/LZ4Exception;

    invoke-direct {v0, v4}, Lcom/tds/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    .end local v5    # "runLen":I
    .end local v18    # "excess":I
    .end local v20    # "sOff":I
    .end local v21    # "back":I
    .end local v23    # "ref":I
    .end local v24    # "anchor":I
    .restart local v0    # "anchor":I
    .local v1, "dOff":I
    .local v2, "sOff":I
    .local v3, "ref":I
    .restart local v4    # "back":I
    :cond_154
    move/from16 v24, v0

    move/from16 v21, v4

    .line 170
    .end local v0    # "anchor":I
    .end local v3    # "ref":I
    .end local v4    # "back":I
    .restart local v24    # "anchor":I
    move/from16 v7, p2

    move v5, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v0, v24

    goto/16 :goto_3f
.end method
